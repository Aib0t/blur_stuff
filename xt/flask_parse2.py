import binascii
import struct
import io
import json
import sys
import signal
import faulthandler
faulthandler.enable()
signal.signal(signal.SIGSEGV, signal.SIG_IGN)
sys.setrecursionlimit(1500000000)

blocks_record_sizes = {
    'labels':12,
    'unknown1':4,
    'data_structure':8
}

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

def string_decryption(encrypted_string:bytes) -> bytes:
    '''
    Decrypting an encrypted string, using funky BC algorithm.
    Used both for xored data and xored string types values in data block

    :param encrypted_string:
    :return: decrypted string
    '''

    i = 0
    bytes2 = bytes()
    magic_var1 = 204
    for byte in encrypted_string:
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

def data_structures_cooker(data, keys):
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
        data_reader.seek(key["position"])
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
        temp_dict['position of xored label'] = key["position"]
        temp_dict['num_of_items'] = key["num_of_items"]
        temp_dict["var3"] = key["var3"]
        temp_dict['var4'] = key["var4"]
        temp_dict['var5'] = key["var5"]
        temp_dict['size(bytes)'] = key["size"]

        current_list.append(temp_dict)

        i+= 1

    global_dict.append(current_list.copy())
    f = open('data_structures.json', 'w')
    f.write(json.dumps(current_list))
    f.close()
    return current_list

def data_types_cooker(decrypted_string:bytes, data_types_data:list):
    '''
    Takes labels data and bash it against encrypted string block. Cool stuff happens

    :param data:
    :param keys:
    :return:
    '''
    labels_dict = {}
    data_reader = io.BytesIO(decrypted_string)
    i = 0
    index = 0
    current_id = 0
    current_list = []
    for data_struct in data_types_data:
        temp_list = []
        temp_dict = {}
        data_reader.seek(data_struct["position"])
        label_text = string_reader(data_reader)


        # if data_struct["offset"] == 0:
        #     if len(current_list) > 0:
        #         try:
        #             if labels_dict[index]:
        #                 labels_dict[index] = current_list.copy()
        #                 current_list.clear()
        #                 index += 1
        #                 #global_dict[index].append(current_list)
        #         except Exception as e:
        #             labels_dict[index] = current_list.copy()
        #             current_list.clear()
        #             index += 1
        #             #global_dict[index].append(current_list)


        temp_dict['index'] = i
        temp_dict["var3_offset"] = data_struct["offset"]
        temp_dict["label_text"] = label_text
        temp_dict['var2'] = data_struct["var2"]
        temp_dict['var4'] = data_struct["var4"]

        current_list.append(temp_dict)

        i+= 1

    #labels_dict[index] = current_list.copy()
    f = open('data_types.json', 'w')
    f.write(json.dumps(current_list))
    f.close()

    return current_list

def data_structures_parser(data_structures_data:bytes,data_structures_size:int):
    '''
    Parsing data structures defining block.

    Quick note: difference: between "data structure" and "data type" are

    - data structures consists of various data types
    - data structures have its own global id

    :param labels_data:
    :return:
    '''

    data_structures_reader = io.BytesIO(data_structures_data)

    data_structures_items = []

    for dummy2_data_value in range(0, data_structures_size):
        data_structures_items.append(data_structures_reader.read(12))

    #print("Types labels", len(labels_data_splitted), labels_data_splitted)

    data_structures_data_parsed = []

    for data_structure in data_structures_items:
        temp_dict = {}
        temp_reader = io.BytesIO(data_structure)

        temp_dict["position"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["num_of_items"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var3"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var4"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var5"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["size"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        #print(temp_dict)
        data_structures_data_parsed.append(temp_dict)

    return data_structures_data_parsed

def unknown1_parser(unknown1_data:bytes):
    '''
    It's unknown what this block is responsible for.
    It's notably:
    - really small in size
    - really small (<10) values
    - non-existent in small flask schemas

    :param unknown1_data:
    :return:
    '''

    pass

def data_types_def_parser(data_type_def_data:bytes,data_type_def_size:int):

    data_types_def_parser_items = []
    data_types_def_parser_reader = io.BytesIO(data_type_def_data)
    for data_structure_def_value in range(0, data_type_def_size):
        data_types_def_parser_items.append(data_types_def_parser_reader.read(8))

    #print("dummy2", len(dummy2_values), dummy2_values)

    data_types_def_parsed = []

    for data_type in data_types_def_parser_items:
        temp_dict = {}
        temp_reader = io.BytesIO(data_type)

        temp_dict["position"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["offset"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["var4"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        #print(temp_dict)
        data_types_def_parsed.append(temp_dict)

    return data_types_def_parsed

def entities_data_parser(entities_data:bytes,entities_data_size:int):

    entities_items = []
    block1_block_data_reader = io.BytesIO(entities_data)
    for entity_item in range(0, entities_data_size):
        entities_items.append(block1_block_data_reader.read(8))

    # print("block1",len(block1_values),block1_values)

    entities_parsed = []
    temp_index = 0
    for entity in entities_items:
        temp_dict = {}
        temp_reader = io.BytesIO(entity)

        # temp_dict["var1"] = int.from_bytes(temp_reader.read(2),byteorder='little')
        # temp_dict["var2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        # if len(block1_parsed) > 0:
        #     temp_dict["var2_minus"] = temp_dict["var2"] - prev_dict["var2"]
        id_bytes = temp_reader.read(4)
        temp_dict["entity_index"] = temp_index
        temp_dict["internal_id"] = int.from_bytes(id_bytes, byteorder='little')
        temp_dict["internal_id_hex"] = id_bytes.hex()
        temp_dict["var_type"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["parent"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        #print(temp_dict)

        entities_parsed.append(temp_dict)
        temp_index += 1
    return entities_parsed

def entities_names_data_parser(entities_names_data:bytes,entities_names_data_size:int):

    entities_names_items = []
    entities_names_data_reader = io.BytesIO(entities_names_data)
    for entities_name_item in range(0, entities_names_data_size):
        entities_names_items.append(entities_names_data_reader.read(16))

    entities_names_parsed = []
    for entities_name in entities_names_items:
        temp_dict = {}
        temp_reader = io.BytesIO(entities_name)

        temp_dict["id"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        temp_dict["unknown1"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        temp_dict["offset"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        temp_dict["size"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        #print(temp_dict)
        entities_names_parsed.append(temp_dict)

    return entities_names_parsed

def block3_parser(block3_data:bytes,block3_size:int):
    block3_values = []
    block3_block_data_reader = io.BytesIO(block3_data)
    for dummy3_data_value in range(0, block3_size):
        block3_values.append(binascii.b2a_hex(block3_block_data_reader.read(6)))

    #print("block3", len(block3_values), block3_values)

    block3_parsed = []
    index = 0

    for value in block3_values:
        temp_dict = {}
        temp_reader = io.BytesIO(binascii.a2b_hex(value))
        temp_dict["index"] = index
        temp_dict["id"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["unknown1"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        temp_dict["unknown2"] = int.from_bytes(temp_reader.read(2), byteorder='little')
        # temp_dict["zeroes"] = int.from_bytes(temp_reader.read(4), byteorder='little')
        # print(temp_dict)
        block3_parsed.append(temp_dict)
        index += 1

    return block3_parsed

def string_reader_data(data,string_data):
    string_list2 = []
    temp_dict = {}
    other_data_bank = bytearray()
    data_reader = io.BytesIO(data)

    for record in string_data:

        other_data_bank += data_reader.read(record["offset"])
        string_xored = data_reader.read(record["size"])

        unxored = string_decryption(string_xored)

        temp_dict["id"] = record["id"]
        temp_dict["string"] = unxored.decode()
        temp_dict["internal_id"] = record['internal_id']
        temp_dict["internal_id_hex"] = record['internal_id_hex']
        string_list2.append(temp_dict.copy())

    return other_data_bank,string_list2

def string_reader_data(data_block:bytes,entities_names_data:list):
    string_list2 = []
    temp_dict = {}
    other_data_bank = bytearray()
    data_reader = io.BytesIO(data_block)

    for record in entities_names_data:

        other_data_bank += data_reader.read(record["offset"])
        string_xored = data_reader.read(record["size"])

        unxored = string_decryption(string_xored)

        temp_dict["id"] = record["id"]
        temp_dict["string"] = unxored.decode()

        string_list2.append(temp_dict.copy())
        #print(temp_dict)

    #print(string_list2)
    return other_data_bank,string_list2

class json2_gen:


    def __init__(self,block1_parsed,data_structures,data_types,strings_block):
        self.strings_block = strings_block
        self.block1_parsed = block1_parsed
        self.types_block = data_structures
        self.values_definitions = data_types

        json2 = []

    def find_string(self,req_id):
        for string in self.strings_block:
            if string['id'] == req_id:
                return string['string'].replace('\x00','')

    def find_structure_type(self,read_struct_id):
        for struct in self.types_block:
            if struct['index'] == read_struct_id:
                return struct

    def find_values(self,structure_id):
        #print(self.values_definitions)
        for value in self.values_definitions:
            #print(value)
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

def data_cooker(flask_file_reader:io.BytesIO):
    '''
    Function to transform flask bytes into correct structures.

    :param flask_file:
    :return:
    '''

    labels_data_parsed = None
    unknown1 = None


    data_blocks_meta = {

    }

    data_blocks_meta["data_structure_def_pos"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["data_structure_def_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["unknown1_pos"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["unknown1_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["data_types_definitions_pos"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["data_types_definitions_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["encrypted_string_pos"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["encrypted_string_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["entities_data_pos"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["entities_data_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["entities_names_data_pos"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["entities_names_data_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["unknown_block3_position"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["unknown_block3_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    data_blocks_meta["data_block_position"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')
    data_blocks_meta["data_block_size"] = int.from_bytes(flask_file_reader.read(4), byteorder='little')

    print(data_blocks_meta)

    flask_file_reader.seek(data_blocks_meta["data_structure_def_pos"])
    data_structures_data_raw = flask_file_reader.read(int(data_blocks_meta["data_structure_def_size"]*12))
    data_structures_parsed = data_structures_parser(data_structures_data_raw,data_blocks_meta["data_structure_def_size"])

    print("DATA STRUCTURES PARSED:",data_structures_parsed)

    flask_file_reader.seek(data_blocks_meta["unknown1_pos"])
    unknown1_data_raw = flask_file_reader.read(int(data_blocks_meta["unknown1_size"]*4))
    unknown1_parser(unknown1_data_raw)

    flask_file_reader.seek(data_blocks_meta["data_types_definitions_pos"])
    data_types_def_data_raw = flask_file_reader.read(int(data_blocks_meta["data_types_definitions_size"]*8))
    data_types_parsed = data_types_def_parser(data_types_def_data_raw,data_blocks_meta["data_types_definitions_size"])

    #print("DATA TYPES PARSED:",data_types_parsed)

    flask_file_reader.seek(data_blocks_meta["encrypted_string_pos"])
    xored_data = flask_file_reader.read(data_blocks_meta["encrypted_string_size"])
    unxored_data = string_decryption(xored_data)

    #print("UNXORED DATA:", unxored_data)

    flask_file_reader.seek(data_blocks_meta["entities_data_pos"])
    entities_data_raw = flask_file_reader.read(data_blocks_meta["entities_data_size"]*8)
    entities_data_parsed = entities_data_parser(entities_data_raw,data_blocks_meta["entities_data_size"])

    print("ENTITIES DATA:", entities_data_parsed)

    flask_file_reader.seek(data_blocks_meta["entities_names_data_pos"])
    entities_names_data_raw = flask_file_reader.read(data_blocks_meta["entities_names_data_size"] * 16)
    entities_names_parsed = entities_names_data_parser(entities_names_data_raw,data_blocks_meta["entities_names_data_size"])

    #print("ENTITIES NAMES PARSED:", entities_names_parsed)

    flask_file_reader.seek(data_blocks_meta["unknown_block3_position"])
    block3_data = flask_file_reader.read(data_blocks_meta["unknown_block3_size"] * 6)
    block3_parsed = block3_parser(block3_data,data_blocks_meta["unknown_block3_size"])

    #print("BLOCK 3:",block3_parsed)

    flask_file_reader.seek(data_blocks_meta["data_block_position"])
    data_block = flask_file_reader.read(data_blocks_meta["data_block_size"])

    #print("DATA BLOCK",len(data_block), binascii.b2a_hex(data_block))

    data_block_stringless, cooked_strings = string_reader_data(data_block,entities_names_parsed)

    #print("DATA STRINGLESS",data_block_stringless.hex())
    print("TOTAL DATA LENGHT",len(data_block_stringless))

    print("COOKED STRINGS",cooked_strings)

    f = open('./output/strings.json', 'w')
    f.write(json.dumps(cooked_strings))
    f.close()

    ### AND NOW WE BEGIN TO HAVE FUN WITH OUR DATA ###

    data_structures_cooked = data_structures_cooker(unxored_data,data_structures_parsed)
    data_types_cooked = data_types_cooker(unxored_data, data_types_parsed)

    #print(data_structures_cooked)
    #print(data_types_cooked)

    other_data, strings_list_final = string_reader_data(data_block, entities_names_parsed)
    #print("Non string data size :", len(other_data), "Block3 len:", len(entities_names_parsed))


    step_1_struct = []

    for struct in data_structures_cooked:
        temp_struct = struct.copy()
        temp_struct['elements'] = []
        for i in range(0,struct['num_of_items']):
            temp_struct['elements'].append(data_types_cooked.pop(0))

        step_1_struct.append(temp_struct.copy())

    f = open('data_struct3.json', 'w')
    f.write(json.dumps(step_1_struct))
    f.close()

    entity_data_extractor(entities_data_parsed,step_1_struct,data_block_stringless,cooked_strings)

def entity_data_extractor(entity_list,data_types_level1_parsed,data_block,strings_list):
    '''
    Extracting data from the datablock, using the data struct definition
    '''

    '''
    0 - read as number ?
    1 - index of the list
    2 - array
    3 - read in place
    5 - 4 bytes reference to in-file id
    6 - list selector
    
    256 - read number after header
    260 - ????
    259 - read after data type with defined type = 256 + 3
    261 - read after data type with defined type = 256 + 5        
    '''

    return_list = []

    def find_structure_by_index(index):
        for struct3 in data_types_level1_parsed:
            if struct3['index'] == index:
                return struct3

    def circus(struct2):
        for data_type in struct2['elements']:
            data_type['structure'] = find_structure_by_index(data_type['var2'])
            if data_type['structure'] != None:
                if data_type['structure']['var4'] != 0:

                    try:

                        circus(data_type['structure'])
                    except:
                        pass
        return struct2

    def circus2(description2,data_reader):
        temp_dict2 = {}

        temp_dict2['type'] = description2['label']
        #print("!!!",description2)

        starting_pos = data_reader.tell()
        #header_size = temp_entity_dict['size(bytes)']



        for element in description2['elements']:

            data_reader.seek(starting_pos + element['var3_offset'])

            #print(element)
            temp_dict3 = {}
            temp_dict3['position'] = data_reader.tell()
            if element['structure'] != None:
                temp_dict3['type'] = element['structure']['label']
                if element['structure']['var4'] == 1:
                    temp_dict3['value'] = data_reader.read(element['structure']['size(bytes)']).hex()
                elif element['structure']['var4'] == 0:
                    temp_dict3['value'] = data_reader.read(element['structure']['size(bytes)']).hex()
                elif element['structure']['elements'] == []:

                    temp_dict3['value'] = data_reader.read(4).hex()
                else:
                    temp_dict3[element['label_text']] = circus2(element['structure'],data_reader)

            temp_dict2[element['label_text']] = temp_dict3.copy()

        #print(temp_dict2)
        return temp_dict2

    def circus261(description2,data_reader):
        temp_dict2 = {}

        temp_dict2['type'] = description2['label']
        #print("!!!",description2)
        starting_pos = data_reader.tell()
        for element in description2['elements']:


                data_reader.seek(starting_pos + element['var3_offset'])

                #print(element)
                temp_dict3 = {}
                if element['structure'] != None:
                    temp_dict3['type'] = element['structure']['label']
                    if element['structure']['var4'] == 1:
                        temp_dict3['value'] = data_reader.read(4).hex()
                    elif element['structure']['elements'] == []:

                        temp_dict3['value'] = data_reader.read(4).hex()
                    else:
                        temp_dict3[element['label_text']] = circus261(element['structure'],data_reader)

                temp_dict2[element['label_text']] = temp_dict3.copy()

        #print(temp_dict2)
        return temp_dict2

    data_block_reader = io.BytesIO(data_block)
    index_counter = 0
    for entity in entity_list:
        #print(entity)
        #temp_entity_dict = {}
        temp_output_entity_dict = {}
        read_later = {}
        if entity['parent'] == 65535:
            continue

        temp_entity_dict = data_types_level1_parsed[entity['var_type']]
        temp_output_entity_dict['type'] = temp_entity_dict['label']
        temp_output_entity_dict['local_index'] = index_counter
        temp_output_entity_dict['global_id'] = entity['internal_id']
        temp_output_entity_dict['global_id_hex'] = entity['internal_id_hex']
        temp_output_entity_dict['data'] = {}

        name = strings_list.pop(0)
        #print(name)
        name_splited = []
        temp_names = name['string'].split('\x00')
        for name in temp_names:
            if '\x00' in name:
                name.replace('\x00')
            name_splited.append(name)

        # if temp_entity_dict['var3'] == 1:
        #     seek_size = temp_entity_dict['elements'][0]['var3_offset']
        #     temp_output_entity_dict['var3_flag_data'] = data_block_reader.read(seek_size).hex()


        starting_pos = data_block_reader.tell()
        header_size = temp_entity_dict['size(bytes)']

        for element in temp_entity_dict['elements']:
            data_block_reader.seek(starting_pos+element['var3_offset'])

            temp_output_entity_dict['data'][element['label_text']] = {}
            read_type = element['var4'] #//TODO: rename var4 to read type

            if read_type == 0:
                atom = data_types_level1_parsed[element['var2']]

                got_bytes = data_block_reader.read(atom['size(bytes)'])

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['atom_type'] = atom['label']
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['value'] = int.from_bytes(got_bytes, byteorder='little')

                if atom['label'] == 'sz8':
                        temp_output_entity_dict['data'][element['label_text']]['string_value'] = name_splited.pop(0)

            elif read_type == 1:
                atom = data_types_level1_parsed[element['var2']]
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['atom_type'] = atom['label']
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['value'] = int.from_bytes(got_bytes, byteorder='little')
            elif read_type == 2:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['value'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')
            elif read_type == 3:

                atom = data_types_level1_parsed[element['var2']]

                #print(atom)

                filled_atom = circus(atom)
                #print(filled_atom)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                #temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['values'] = circus2(filled_atom,data_block_reader).copy()

            elif read_type == 5:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['value'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')

            elif read_type == 4:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['value'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')

            elif read_type == 6:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['value'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')
            elif read_type == 256:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['num1'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')

                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['count'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')
                atom = data_types_level1_parsed[element['var2']]
                read_later[element['label_text']] = {}
                read_later[element['label_text']]['atom'] = atom

                read_later[element['label_text']]['count'] = temp_output_entity_dict['data'][element['label_text']]['count']
                read_later[element['label_text']]['read_type'] = read_type
                #print(data_block_reader.tell())
            elif read_type == 259:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['num1'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')

                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['count'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')
                atom = data_types_level1_parsed[element['var2']]
                read_later[element['label_text']] = {}
                read_later[element['label_text']]['atom'] = atom

                read_later[element['label_text']]['count'] = temp_output_entity_dict['data'][element['label_text']]['count']
                read_later[element['label_text']]['read_type'] = read_type
                #print(data_block_reader.tell())


            elif read_type == 260:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['num1'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')

                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['count'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')
                atom = data_types_level1_parsed[element['var2']]
                read_later[element['label_text']] = {}
                read_later[element['label_text']]['atom'] = atom

                read_later[element['label_text']]['count'] = temp_output_entity_dict['data'][element['label_text']]['count']
                read_later[element['label_text']]['read_type'] = read_type
                #print(data_block_reader.tell())

            elif read_type == 261:
                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['read_type'] = read_type
                temp_output_entity_dict['data'][element['label_text']]['hex'] = got_bytes.hex()
                temp_output_entity_dict['data'][element['label_text']]['num1'] = int.from_bytes(got_bytes,
                                                                                                 byteorder='little')

                got_bytes = data_block_reader.read(4)

                temp_output_entity_dict['data'][element['label_text']]['count'] = int.from_bytes(got_bytes,byteorder='little')
                print("DEBUG POS", data_block_reader.tell())
                atom = data_types_level1_parsed[element['var2']]

                read_later[element['label_text']] = {}
                read_later[element['label_text']]['atom'] = atom
                read_later[element['label_text']]['count'] = temp_output_entity_dict['data'][element['label_text']]['count']
                read_later[element['label_text']]['read_type'] = read_type
            else:
                print("UNKNOWN READ TYPE:",read_type)

        data_block_reader.seek(starting_pos+header_size)
        print("POS AFTER THE HEADER:",data_block_reader.tell(),"STARTING POS:",starting_pos)
        for item in read_later:
            print("!!!!!!!!!!")
            full_atom = circus(read_later[item]['atom'])
            print("!!!!!!!!!!!", full_atom['var4'])
            if read_later[item]['read_type'] == 261:

                if read_later[item]['count'] > 1000:
                    print(read_later[item])
                    raise ValueError

                for i in range(0, read_later[item]['count']):
                    temp_output_entity_dict['data'][item][f'values_{i}_pos'] = data_block_reader.tell()
                    temp_output_entity_dict['data'][item][f'values_{i}'] = data_block_reader.read(4).hex()

            elif read_later[item]['read_type'] == 256:

                if read_later[item]['count'] > 1000:
                    print(read_later[item])
                    raise ValueError

                for i in range(0, read_later[item]['count']):
                    temp_output_entity_dict['data'][item][f'values_{i}_pos'] = data_block_reader.tell()
                    temp_output_entity_dict['data'][item][f'values_{i}'] = data_block_reader.read(full_atom['size(bytes)']).hex()

            else:

                if read_later[item]['count'] > 1000:
                    print(read_later[item])
                    raise ValueError

                for i in range(0, read_later[item]['count']):
                    temp_output_entity_dict['data'][item][f'values_{i}'] = circus2(full_atom, data_block_reader)


        return_list.append(temp_output_entity_dict.copy())
        #print(temp_output_entity_dict)
        print(data_block_reader.tell())
        index_counter += 1

        f = open('./output/data_dump2.json', 'w')
        f.write(json.dumps(return_list))
        f.close()
        if data_block_reader.tell() > len(data_block):
            raise ValueError


def main():
    #'gdb -ex r --args python <programname>.py <arguments>'
    file = open("./dlcpackwalmartdeployed.bin","rb").read()
    file_reader = io.BytesIO(file)

    file_reader.read(8) #magic + file version

    data_cooker(file_reader)

if __name__ == '__main__':
    main()

def classes_creator():
    class json2_gen:

        def __init__(self, entities_data_parsed, data_structures, data_types, strings_block):
            self.strings_block = strings_block
            self.entities_data_parsed = entities_data_parsed
            self.types_block = data_structures
            self.values_definitions = data_types

            json2 = []

        def find_string(self, req_id):
            for string in self.strings_block:
                if string['id'] == req_id:
                    return string['string'].replace('\x00', '')

        def find_structure_type(self, read_struct_id):
            for struct in self.types_block:
                if struct['index'] == read_struct_id:
                    return struct

        def find_values(self, structure_id):
            # print(self.values_definitions)
            for value in self.values_definitions:
                # print(value)
                if int(value) == structure_id:

                    temp_list = []

                    for value1 in self.values_definitions[value]:
                        temp_dict = {}
                        temp_dict = value1
                        temp_dict['struct_type'] = self.find_structure_type(value1['var2'])
                        if temp_dict['struct_type'] != None:
                            if temp_dict['struct_type']['var5'] == 0:
                                pass
                                # temp_dict['struct_type']['values'] = self.find_values(temp_dict['struct_type']['index'])

                        temp_list.append(temp_dict.copy())

                    return temp_list

        def generate_schema(self):
            import json
            current_list = []

            for data_struct in self.entities_data_parsed:
                temp_dict = {}

                temp_dict['internal_id'] = data_struct['internal_id']
                temp_dict['internal_id_hex'] = data_struct['internal_id'].to_bytes(4, 'little').hex()
                temp_dict['[TEMP]_name'] = self.find_string(data_struct['parent'])
                temp_dict['structure_type'] = self.find_structure_type(data_struct['var_type'])

                big_scan = True

                temp_dict['structure_type']['values'] = self.find_values(data_struct['var_type'])

                current_list.append(temp_dict)

            f = open('./output/data_dump2.json', 'w')
            f.write(json.dumps(current_list))
            f.close()