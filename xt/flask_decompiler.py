'''
Flask schema contains field '%s::%s' which is not present in the application schema.
Flask schema contains field '%s::%s' which is of a different type to the one present in the application schema. (Flask: %s vs App: %s)
(no-type)
Flask schema claims '%s' is based on '%s', but this association has not been registered.
Flask schema contains type '%s' which does not match any registered type.
Out of memory during pack allocation.
Unable to merge %i record(s) into database, only space for %i record(s) available.
Out of memory during schema allocation.
Empty pack file, no records available.
Flask failed validation, header is not valid.
Flask failed validation, unsupported version.
Flask failed validation, the file may be corrupt.
'''

import binascii
import struct
import io


def unxored_to_keys(data, keys):
    import json
    global_dict = {}
    data_reader = io.BytesIO(data)
    i = 0
    index = 0
    current_id = 0
    current_list = []
    for key in keys:
        temp_list = []
        temp_dict = {}
        data_reader.seek(key["var1"])
        label = string_reader(data_reader)


        if key["var3"] == 0:
            if len(current_list) > 0:
                try:
                    if global_dict[index]:
                        global_dict[index] = current_list.copy()
                        current_list.clear()
                        index += 1
                        #global_dict[index].append(current_list)
                except Exception as e:
                    global_dict[index] = current_list.copy()
                    current_list.clear()
                    index += 1
                    #global_dict[index].append(current_list)


        temp_dict['index'] = i
        temp_dict["var3_offset"] = key["var3"]
        temp_dict["label"] = label
        temp_dict['var2'] = key["var2"]
        temp_dict['var4'] = key["var4"]

        current_list.append(temp_dict)

        i+= 1

    global_dict[index] = current_list.copy()
    f = open('lables.json', 'w')
    f.write(json.dumps(global_dict))
    f.close()

    return global_dict

def unxored_to_values_types(data, keys):
    import json
    global_dict = []
    data_reader = io.BytesIO(data)
    i = 0
    index = 0
    current_id = 0
    current_list = []
    for key in keys:
        temp_list = []
        temp_dict = {}
        data_reader.seek(key["var1"])
        label = string_reader(data_reader)


        # if key["var3"] == 0:
        #     if len(current_list) > 0:
        #         try:
        #             if global_dict[index]:
        #                 global_dict[index] = current_list.copy()
        #                 current_list.clear()
        #                 index += 1
        #                 #global_dict[index].append(current_list)
        #         except Exception as e:
        #             global_dict[index] = current_list.copy()
        #             current_list.clear()
        #             index += 1
        #             #global_dict[index].append(current_list)


        temp_dict['index'] = i

        temp_dict["label"] = label
        temp_dict['position of xored label'] = key["var1"]
        temp_dict['var2'] = key["var2"]
        temp_dict["var3"] = key["var3"]
        temp_dict['var4'] = key["var4"]
        temp_dict['var5'] = key["var5"]
        temp_dict['size(bytes)'] = key["size"]

        current_list.append(temp_dict)

        i+= 1

    #global_dict.append(current_list.copy())
    f = open('values.json', 'w')
    f.write(json.dumps(current_list))
    f.close()
    return current_list



def string_reader(reader: io.BytesIO):
    string = ""
    last_byte = None
    while last_byte != b"\x00":
        last_byte = reader.read(1)
        if last_byte == b"\x00" and len(string) == 0:
            break
        string += last_byte.decode()
    if len(string) > 0:
        string = string[:-1]

    return string

def unxor(data:bytes):
    i = 0
    bytes2 = bytes()
    magic_var1 = 204
    for byte in data:
        #print("Current Byte:", i+1)
        temp = byte ^ 179
        #print(temp)
        temp = magic_var1 - temp

        #print(temp.to_bytes(1,byteorder='little'))
        magic_var1 = magic_var1 + temp - i
        magic_var1 = magic_var1.to_bytes(4,byteorder='little',signed=True)[0]
        i += 1

        temp = temp.to_bytes(4,byteorder='little',signed=True)[0]
        #print(temp)
        #print("Magic var",magic_var1)
        bytes2 += struct.pack('b',temp)

    return bytes2


def main():
    '''
    saveSignature = [75, 83, 76, 70]
    fileVersion = 0x2 = 2
    fileSubversion = 0x48 = 72
    kslfDummy1 = 0x15 = 21
    kslfDummy2 = 0x144 = 324
    kslfDummy3 = 0x2 = 2
    kslfDummy4 = 0x14C = 332
    kslfDummy5 = 0xE6 = 230
    kslfXoredDataPosition = 0x87C = 2172
    kslfXoredDataSize = 0xF5C = 3932
    kslfUnknownBloc1Position = 0x17D8 = 6104
    kslfUnknownBloc1Size = 0x68 = 104
    kslfUnknownBloc2Position = 0x1B18 = 6936
    kslfUnknownBloc2Size = 0x34 = 52
    kslfUnknownBloc3Position = 0x1E58 = 7768
    kslfUnknownBloc3Size = 0x69 = 105
    kslfDataBlockPosition = 0x20D0 = 8400
    kslfDataBlockSize = 0x1A64 = 6756
    kslfDataBloc5Position = 0x0 = 0
    '''


    data_blocks_meta = {
        "dummy1_pos": 0, #header related
        "dummy1_size":0,

        "dummy2_pos": 0, #header related
        "dummy2_size": 0,

        "xored_data_position": 0,
        "xored_data_size": 0,

        "unknown_block1_position": 0, #relations? data types?
        "unknown_block1_size": 0,

        "unknown_block2_position": 0,  # relations? data types?
        "unknown_block2_size": 0,

        "unknown_block3_position": 0,  # relations? data types?
        "unknown_block3_size": 0,

        "data_block_position": 0, #always the biggest one of 4
        "data_block_size": 0,

    }


    #file = open("drivers.bin","rb").read()
    file = open("./vehicles.bin","rb").read()
    file_reader = io.BytesIO(file)

    file_reader.read(12) #header
    file_reader.read(4) # no idea, might be the total values value



    data_blocks_meta["dummy1_pos"] = int.from_bytes(file_reader.read(4),byteorder='little') #position (4)
    data_blocks_meta["dummy1_size"] = int.from_bytes(file_reader.read(4),byteorder='little') #total size of pointers header block

    data_blocks_meta["dummy2_pos"] = int.from_bytes(file_reader.read(4),byteorder='little') #smol number
    # might be position/size and size/position combination
    data_blocks_meta["dummy2_size"] = int.from_bytes(file_reader.read(4),byteorder='little')  # total size of pointers header block, again


    data_blocks_meta["xored_data_position"] = int.from_bytes(file_reader.read(4),byteorder='little')
    data_blocks_meta["xored_data_size"] = int.from_bytes(file_reader.read(4), byteorder='little')

    data_blocks_meta["unknown_block1_position"] = int.from_bytes(file_reader.read(4),byteorder='little')
    data_blocks_meta["unknown_block1_size"] = int.from_bytes(file_reader.read(4), byteorder='little')

    data_blocks_meta["unknown_block2_position"] = int.from_bytes(file_reader.read(4),byteorder='little')
    data_blocks_meta["unknown_block2_size"] = int.from_bytes(file_reader.read(4), byteorder='little')

    data_blocks_meta["unknown_block3_position"] = int.from_bytes(file_reader.read(4),byteorder='little')
    data_blocks_meta["unknown_block3_size"] = int.from_bytes(file_reader.read(4), byteorder='little')

    data_blocks_meta["data_block_position"] = int.from_bytes(file_reader.read(4),byteorder='little')
    data_blocks_meta["data_block_size"] = int.from_bytes(file_reader.read(4), byteorder='little')

    print(data_blocks_meta)

    file_reader.seek(72)
    unknown_header = file_reader.read(data_blocks_meta["dummy1_pos"] - 72)
    print("Types labels",len(unknown_header),binascii.b2a_hex(unknown_header))

    unknown_header_values = []
    unknown_header_data_reader = io.BytesIO(unknown_header)
    for dummy2_data_value in range(0, int(len(unknown_header)/12)):
        unknown_header_values.append(binascii.b2a_hex(unknown_header_data_reader.read(12)))

    print("Types labels", len(unknown_header_values), unknown_header_values)

    '''
    TYPE LABELS
    
    
    it works with the same encoded string block, but instead of names for data structures it pulls out names for data types.
    
    anything except offset (var 1). Others 5 (or less) variables are currently not researched
    
    TODO: replace string reader
    
    
    '''

    unknown_header_parsed = []

    for value in unknown_header_values:
        temp_dict = {}
        temp_reader = io.BytesIO(binascii.a2b_hex(value))

        temp_dict["var1"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var3"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var4"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var5"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["size"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        print(temp_dict)
        prev_dict = temp_dict
        unknown_header_parsed.append(temp_dict)

    '''
    purpose of dummy 1 block is unknown. It's always very smol, just like its values
    '''

    file_reader.seek(data_blocks_meta["dummy1_pos"])
    print("dummy1",binascii.b2a_hex(file_reader.read(data_blocks_meta["dummy1_size"]*4)))

    file_reader.seek(data_blocks_meta["dummy2_pos"])
    dummy2_block_data = file_reader.read(data_blocks_meta["dummy2_size"]*8)
    #print(binascii.b2a_hex(dummy2_block_data))


    '''
    dummy 2 contains names for data structures (paints, races and other high level nodes, that have its own global id)
    
    '''

    dummy2_values = []
    dummy2_block_data_reader = io.BytesIO(dummy2_block_data)
    for dummy2_data_value in range(0,data_blocks_meta["dummy2_size"]):
        dummy2_values.append(binascii.b2a_hex(dummy2_block_data_reader.read(8)))

    print("dummy2",len(dummy2_values),dummy2_values)

    dummy2_parsed = []

    for value in dummy2_values:
        temp_dict = {}
        temp_reader = io.BytesIO(binascii.a2b_hex(value))

        temp_dict["var1"] = int.from_bytes(temp_reader.read(2),byteorder='little')
        temp_dict["var2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var3"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var4"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        print(temp_dict)
        prev_dict = temp_dict
        dummy2_parsed.append(temp_dict)

    file_reader.seek(data_blocks_meta["xored_data_position"])
    xored_data = file_reader.read(data_blocks_meta["xored_data_size"])

    unxored_data = unxor(xored_data)

    print(unxored_data)

    unxored_data_reader = io.BytesIO(unxored_data)
    string_list = []
    while unxored_data_reader.tell() < len(unxored_data):

        string = ""
        last_byte = None
        while last_byte != b"\x00":
            last_byte = unxored_data_reader.read(1)
            if last_byte == b"\x00" and len(string) == 0:
                break
            string += last_byte.decode()
        if len(string) > 0:
            string_list.append(string[:-1])

    print(len(string_list), string_list)
    #print(unknown_header_parsed)
    #print(dummy2_parsed)
    #dummy2_parsed.extend(unknown_header_parsed.copy())
    #print(dummy2_parsed)
    values_definitions = unxored_to_keys(unxored_data,dummy2_parsed)
    types_definitions = unxored_to_values_types(unxored_data,unknown_header_parsed)

    ########### BLOCK 1

    '''
    Contain external (global) scheme ids and pointers to local strings.
    
    global id (4 bytes) - id that is used in global scheme. It worth noting that 2 bytes are completely random and 2 last are steadily rising to 65525. Or it might be a mere consiedence. 
    
    unknown (2 bytes) - called a var_type, but for now its real purposes are unknown
    
    string id (2 bytes) - parent string (data structure) that have this id.
    
    65535 indicates that object, that is referenced is coming from outer (global) scope
    
    '''


    file_reader.seek(data_blocks_meta["unknown_block1_position"])
    block1_data = file_reader.read(data_blocks_meta["unknown_block1_size"]*8)
    #print(binascii.b2a_hex(block1_data))

    block1_values = []
    block1_block_data_reader = io.BytesIO(block1_data)
    for dummy2_data_value in range(0,data_blocks_meta["unknown_block1_size"]):
        block1_values.append(binascii.b2a_hex(block1_block_data_reader.read(8)))

    #print("block1",len(block1_values),block1_values)
    prev_dict = None
    block1_parsed = []
    for value in block1_values:
        temp_dict = {}
        temp_reader = io.BytesIO(binascii.a2b_hex(value))

        # temp_dict["var1"] = int.from_bytes(temp_reader.read(2),byteorder='little')
        # temp_dict["var2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        # if len(block1_parsed) > 0:
        #     temp_dict["var2_minus"] = temp_dict["var2"] - prev_dict["var2"]
        temp_dict["internal_id"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        temp_dict["var_type"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["parent"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        print(temp_dict)
        prev_dict = temp_dict
        block1_parsed.append(temp_dict)



    ############# BLOCK 2

    '''
    Describes strings in data block.
    
    Format is wierd and unconsistent.
    
    - id (4 bytes) internal id in scheme, used to point global id to it.
    - unknown (4 bytes) doesn't correlate to anything.
    - offset (4 bytes) from current data block reader position
    - string size (4 bytes)
    '''


    file_reader.seek(data_blocks_meta["unknown_block2_position"])
    block2_data = file_reader.read(data_blocks_meta["unknown_block2_size"]*16)
    #print(binascii.b2a_hex(block2_data))

    block2_values = []
    block2_block_data_reader = io.BytesIO(block2_data)
    for dummy2_data_value in range(0, data_blocks_meta["unknown_block2_size"]):
        block2_values.append(binascii.b2a_hex(block2_block_data_reader.read(16)))

    print("block2",len(block2_values),block2_values)

    block2_parsed = []
    for value in block2_values:
        temp_dict = {}
        temp_reader = io.BytesIO(binascii.a2b_hex(value))

        temp_dict["id"] = int.from_bytes(temp_reader.read(4),byteorder='little')
        temp_dict["dummy1"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        temp_dict["offset"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        temp_dict["size"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        print(temp_dict)
        block2_parsed.append(temp_dict)

    ##### BLOCK 3

    file_reader.seek(data_blocks_meta["unknown_block3_position"])
    block3_data = file_reader.read(data_blocks_meta["unknown_block3_size"]*6)
    #print(binascii.b2a_hex(block3_data))

    block3_values = []
    block3_block_data_reader = io.BytesIO(block3_data)
    for dummy3_data_value in range(0, data_blocks_meta["unknown_block3_size"]):
        block3_values.append(binascii.b2a_hex(block3_block_data_reader.read(6)))

    print("block3",len(block3_values), block3_values)


    block3_parsed = []
    for value in block3_values:
        temp_dict = {}
        temp_reader = io.BytesIO(binascii.a2b_hex(value))

        temp_dict["id"] = int.from_bytes(temp_reader.read(2),byteorder='little')
        temp_dict["dummy1"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["dummy2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        #temp_dict["zeroes"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        #print(temp_dict)
        block3_parsed.append(temp_dict)


    file_reader.seek(data_blocks_meta["data_block_position"])
    data_block = file_reader.read(data_blocks_meta["data_block_size"])
    print("DATA BLOCK",len(data_block), binascii.b2a_hex(data_block))


    temp_block_data_reader = io.BytesIO(data_block)
    # for block in range(0,int(len(data_block) / 4)):
    #     print(temp_block_data_reader.read(4).hex())

    data_block_values = []
    data_block_data_reader = io.BytesIO(data_block)
    for data_data_value in range(0, data_blocks_meta["data_block_size"]):
        data = data_block_data_reader.read(4)
        if len(data) > 0:
            data_block_values.append(binascii.b2a_hex(data))

    #print("data",len(data_block_values))

    strings_list_final = None
    if len(block2_parsed) > 0:
        other_data, strings_list_final= string_reader_data(data_block,block2_parsed)
        print("Non string data size :", len(other_data), "Block3 len:", len(block3_values)  )


    for string in strings_list_final:
        for id in block1_parsed:
            if string['id'] == id['parent']:
                fixed_name = string['string'].replace('\x00','')
                if len(fixed_name) >= 0:
                    #print(f"Local ID: {string['id']} | Name: {fixed_name} | Variable Type: {id['var_type']} | Global id: {id['internal_id']} | HEX ID: {int(id['internal_id']).to_bytes(4,'little').hex()}")
                    #print(f"{string['id']};{fixed_name};{id['var_type']};'{id['internal_id']}';'{int(id['internal_id']).to_bytes(4,'little').hex()}';")
                    pass
    #unxor(xored_data2)

    new_gen = json2_gen(block1_parsed,types_definitions,values_definitions,strings_list_final)

    new_gen.generate_schema()


def string_reader_data(data,block2_data):
    string_list2 = []
    temp_dict = {}
    other_data_bank = bytearray()
    data_reader = io.BytesIO(data)

    for record in block2_data:

        other_data_bank += data_reader.read(record["offset"])
        string_xored = data_reader.read(record["size"])

        unxored = unxor(string_xored)

        temp_dict["id"] = record["id"]
        temp_dict["string"] = unxored.decode()

        string_list2.append(temp_dict.copy())




        #print(temp_dict)
    print(string_list2)

    return other_data_bank,string_list2
import sys
sys.setrecursionlimit(150000)

class json2_gen:


    def __init__(self,block1_parsed,types_block,values_definitions,strings_block):
        self.strings_block = strings_block
        self.block1_parsed = block1_parsed
        self.types_block = types_block
        self.values_definitions = values_definitions

        json2 = []

    def find_string(self,req_id):
        for string in self.strings_block:
            if string['id'] == req_id:
                return string['string'].replace('\x00','')

    def find_structure_type(self,rea_struct_id):
        for struct in self.types_block:
            if struct['index'] == rea_struct_id:
                return struct

    def find_values(self,structure_id):
        for value in self.values_definitions:
            if int(value) == structure_id:

                temp_list = []

                for value1 in self.values_definitions[value]:
                    temp_dict = {}
                    temp_dict = value1
                    temp_dict['struct_type'] = self.find_structure_type(value1['var2'])
                    if temp_dict['struct_type'] != None:
                        if temp_dict['struct_type']['var5'] == 0:
                            pass
                            #temp_dict['struct_type']['values'] = self.find_values(temp_dict['struct_type']['index'])

                    temp_list.append(temp_dict.copy())

                return temp_list

    def generate_schema(self):
        import json
        current_list = []

        for data_struct in self.block1_parsed:
            temp_dict = {}

            temp_dict['internal_id'] = data_struct['internal_id']
            temp_dict['internal_id_hex'] = data_struct['internal_id'].to_bytes(4,'little').hex()
            temp_dict['[TEMP]_name'] = self.find_string(data_struct['parent'])
            temp_dict['structure_type'] = self.find_structure_type(data_struct['var_type'])

            big_scan = True


            temp_dict['structure_type']['values'] = self.find_values(data_struct['var_type'])

            current_list.append(temp_dict)

        f = open('json2.json', 'w')
        f.write(json.dumps(current_list))
        f.close()


if __name__ == '__main__':
    main()

