import struct
import io
import svgwrite
from svgwrite.shapes import Polygon

def read_path(data_reader:io.BytesIO,file_name:str,path_id:int,mod:int=1):
    #mod = 0
    data_reader.read(12) #1.0 1.0 1.0
    dummy1 = int().from_bytes(data_reader.read(2), 'little')
    print(dummy1)

    data_reader.read(28)

    if mod == 0:
        pass
        data_reader.seek(117)
    else:
        pass

    print("CANVAS SIZE POS:", data_reader.tell())
    canvas_x = struct.unpack('f', data_reader.read(4))[0] * 100
    canvas_y = struct.unpack('f', data_reader.read(4))[0] * 100
    print("CANVAS SIZE:", canvas_x, canvas_y)

    if mod == 0:
        data_reader.read(28)
    else:
        data_reader.read(20)

    print("NUMBER OF PARTS POS:", data_reader.tell())
    number_of_parts = int().from_bytes(data_reader.read(4), 'little')
    number_of_dots_in_part = int().from_bytes(data_reader.read(4), 'little')

    total_dots = 0

    reversed_list = []

    for k in range(0, number_of_parts):

        map_line_1 = Polygon(stroke='white', stroke_width=0.1)
        map_line_2 = Polygon(stroke='white', stroke_width=0.1)
        points_list_1 = []
        points_list_2 = []

        for i in range(0, number_of_dots_in_part):
            #print(i)
            #print(data_reader.tell())
            value1 = struct.unpack('f', data_reader.read(4))[0] * 100
            value2 = struct.unpack('f', data_reader.read(4))[0] * 100
            value3 = struct.unpack('f', data_reader.read(4))[0] * 100
            value4 = struct.unpack('f', data_reader.read(4))[0] * 100
            value5 = struct.unpack('f', data_reader.read(4))[0]
            value6 = struct.unpack('f', data_reader.read(4))[0]

            #print(value1,value2,value3,value4,value5,value6)



            points_list_1.append((value1, value2))

        map_line_1.points.extend(points_list_1)

        reversed_list.append(map_line_1)

        number_of_dots_in_part = int().from_bytes(data_reader.read(4), 'little')

    reversed_list.reverse()
    dwg = svgwrite.Drawing(f'./output/{file_name}{path_id}.svg', size=(canvas_x, canvas_y))
    if len(reversed_list) > 0:
        dwg.add(reversed_list.pop(0))
        clip_path = dwg.defs.add(dwg.clipPath())
        for line in reversed_list:
            dwg.add(line)
        dwg.save()

    #print("Total bytes:", len(file))
    print("Final pos:", data_reader.tell() - 4)
    print("Number of parts total:", number_of_parts)
    print("Total dots:", total_dots)
    # print("Biggest X,Y:", biggest_x,biggest_y)

    data_reader.seek(data_reader.tell() - 4)

    post_file_part = int().from_bytes(data_reader.read(4), 'little')
    for i in range(0, post_file_part):
        to_read = int().from_bytes(data_reader.read(4), 'little')
        data_reader.read(to_read * 2)

    print("Final final pos:", data_reader.tell())
    data_reader.read(4)

def handle_object(ipf_reader:io.BytesIO):

    header_endian = 'little'

    ipf_reader.read(8)
    print("OBJECT POS:", ipf_reader.tell())
    object_name_size = int().from_bytes(ipf_reader.read(4), header_endian)
    object_name = ipf_reader.read(object_name_size).decode()
    print("OBJECT NAME:", object_name)

    number_of_paths = int().from_bytes(ipf_reader.read(4), header_endian)

    if object_name == '<group>':
        objects_in_group = int().from_bytes(ipf_reader.read(4), header_endian)
        for object_in_group in range(0, objects_in_group+5):
            print(f"GROUP {object_in_group} GO!")
            ipf_reader.seek(ipf_reader.tell()-4)
            handle_object(ipf_reader)
            ipf_reader.seek(ipf_reader.tell() + 4)
            print(f"END OF GROUP {object_in_group}")
        ipf_reader.seek(ipf_reader.tell() - 4)

    elif 'bounds' in object_name:
        print("BOUNDS")
        ipf_reader.seek(469)
        return
    elif number_of_paths > 1:
        print("COMPLEX OBJECT DETECTED")
        print("NUMBER OF ELEMENTS:", number_of_paths)

        for objects_in_path in range(0, number_of_paths):
            ipf_reader.read(8)
            path_object_name_size = int().from_bytes(ipf_reader.read(4), header_endian)
            path_object_name = ipf_reader.read(path_object_name_size).decode()

            print('WE HAVE AN OBJECT OF TYPE:', path_object_name)

            if 'compound path' in path_object_name:
                compound_items = int().from_bytes(ipf_reader.read(4), header_endian)
                print("COMPOUND PATH PATHS:", compound_items)

                if compound_items == 0:
                    ipf_reader.read(70)
                    continue

                for compound_item in range(0, compound_items):
                    read_path(ipf_reader, f"{object_name}{path_object_name}", compound_item)



            elif '<path>' in path_object_name:
                path_items = int().from_bytes(ipf_reader.read(4), header_endian)

                for path_item in range(0, path_items):
                    read_path(ipf_reader, f"{object_name}{path_object_name}", path_items)

            elif '<guide>' in path_object_name:
                ipf_reader.read(70)
                continue

            elif 'bounds' in path_object_name:
                ipf_reader.seek(168)

            else:
                path_items = int().from_bytes(ipf_reader.read(4), header_endian)

                for path_item in range(0, path_items):
                    read_path(ipf_reader, f"{object_name}{path_object_name}", path_items)





    else:
        if '<guide>' in object_name:
            ipf_reader.read(70)
            return

        if number_of_paths == 0:
            read_path(ipf_reader, object_name, 0)
        else:
            for path_id in range(0, number_of_paths):
                read_path(ipf_reader, object_name, path_id)

        if 'shield' in object_name:
            print("SHIELD")
            ipf_reader.read(1674)

def main():

    header_endian = 'little'

    file = open("./files/ipf/minimap/usa_la_observatory_game.ipf", "rb").read()
    file_len = len(file)
    ipf_reader = io.BytesIO(file)
    ipf_reader.seek(16)

    while file_len > ipf_reader.tell():

        layer_name_size = int().from_bytes(ipf_reader.read(4), header_endian)
        layer_name = ipf_reader.read(layer_name_size).decode()
        print("LAYER NAME:",layer_name )
        object_in_layer = int().from_bytes(ipf_reader.read(4), header_endian)

        for l in range(0,object_in_layer):
            handle_object(ipf_reader)

        ipf_reader.read(8)


if __name__ == '__main__':
    main()



