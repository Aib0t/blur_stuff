import struct
import io
import svgwrite
from svgwrite.shapes import Polygon

paths_global_counter = 0

def read_path(data_reader:io.BytesIO,file_name:str,path_id:int,mod:int=1):
    #mod = 0
    data_reader.read(42)

    if mod == 0:
        pass
        data_reader.seek(118)
    else:
        pass

    print("CANVAS SIZE POS:", data_reader.tell())
    canvas_x = struct.unpack('>f', data_reader.read(4))[0] * 100
    canvas_y = struct.unpack('>f', data_reader.read(4))[0] * 100
    print("CANVAS SIZE:", canvas_x, canvas_y)

    if mod == 0:
        data_reader.read(28)
    else:
        data_reader.read(20)

    print("NUMBER OF PARTS POS:", data_reader.tell())
    number_of_parts = int().from_bytes(data_reader.read(4), 'big')
    number_of_dots_in_part = int().from_bytes(data_reader.read(4), 'big')
    print("NUMBER OF PARTS:",number_of_parts,"NUMBER OF DOTS:",number_of_dots_in_part )
    total_dots = 0

    reversed_list = []

    for k in range(0, number_of_parts):

        simple_line = Polygon(stroke='white', stroke_width=0.1)
        points_list = []
        have_2 = True

        biggest_x = 0.0
        biggest_y = 0.0

        for i in range(0, number_of_dots_in_part):
            #print(i)
            #print(data_reader.tell())
            value1 = struct.unpack('>f', data_reader.read(4))[0] * 100
            value2 = struct.unpack('>f', data_reader.read(4))[0] * 100
            value3 = struct.unpack('>f', data_reader.read(4))[0] * 100
            value4 = struct.unpack('>f', data_reader.read(4))[0] * 100
            value5 = struct.unpack('>f', data_reader.read(4))[0]
            value6 = struct.unpack('>f', data_reader.read(4))[0]
            #value7 = struct.unpack('>f', data_reader.read(4))[0]
            #value8 = struct.unpack('>f', data_reader.read(4))[0]

            value6 = 1

            #print(value1,value2,value3,value4,value6)
            print(value1, value2, value3,value4,value5)
            #print(value1, value2, value3, value4, value6,value7,value8)

            if value1 > biggest_x:
                biggest_x = value1

            if value2 > biggest_y:
                biggest_y = value2

            total_dots += 1
            if value6 == 1.0:
                have_2 = True
            points_list.append((value1, value2))

        simple_line.points.extend(points_list)
        if have_2 == True:
            reversed_list.append(simple_line)

        print("NEW DOTS VALUE POS:",data_reader.tell() )
        number_of_dots_in_part = int().from_bytes(data_reader.read(4), 'big')
        print("NEW DOTS IN PART VALUE POS:", number_of_dots_in_part)
    reversed_list.reverse()
    global paths_global_counter
    dwg = svgwrite.Drawing(f'./output/{file_name}{path_id}{paths_global_counter}.svg', size=(canvas_x, canvas_y))
    paths_global_counter += 1
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

    post_file_part = int().from_bytes(data_reader.read(4), 'big')
    for i in range(0, post_file_part):
        to_read = int().from_bytes(data_reader.read(4), 'big')
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
                ipf_reader.read(398)

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

        # if 'shield' in object_name:
        #     print("SHIELD")
        #     ipf_reader.read(1674)

def main():

    header_endian = 'big'

    file = open("../ipf/files/ps3_beta/car_icons.ipf", "rb").read()
    file_len = len(file)
    ipf_reader = io.BytesIO(file)
    ipf_reader.seek(16)

    while file_len > ipf_reader.tell():

        layer_name_size = int().from_bytes(ipf_reader.read(4), header_endian)
        layer_name_hex = ipf_reader.read(layer_name_size)
        print(layer_name_hex)
        layer_name = layer_name_hex.decode()
        print("LAYER NAME:",layer_name )
        object_in_layer = int().from_bytes(ipf_reader.read(4), header_endian)

        for l in range(0,object_in_layer):
            handle_object(ipf_reader)

        ipf_reader.read(8)


if __name__ == '__main__':
    main()



