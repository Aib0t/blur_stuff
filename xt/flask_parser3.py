import binascii
import struct
import io
import json
import xml
from time import sleep
import copy

class better_reader:
    def __init__(self, data):
        self.data_reader = io.BytesIO(data)
        self.len = len(data)
        self.endianness = 'little'

    def read(self, read_size: int) -> bytes:
        return self.data_reader.read(read_size)

    def read_int(self, byte_size: int) -> int:
        return int().from_bytes(self.data_reader.read(byte_size), self.endianness)

    def read_str(self):
        string = ""
        last_byte = None
        while last_byte != b"\x00":
            last_byte = self.data_reader.read(1)
            if last_byte == b"\x00" and len(string) == 0:
                break
            string += last_byte.decode()
        if len(string) > 0:
            string = string[:-1]

        return string

    def read_str_seized(self, size: int) -> str:
        return self.data_reader.read(size).decode()

    def read_float(self):
        return struct.unpack('f', self.data_reader.read(4))[0]

    def read_hex(self, size: int) -> str:
        return self.data_reader.read(size).hex()

    def string_decryption(self,encrypted_string: bytes) -> str:
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
            # print("Current Byte:", i+1)
            temp = byte ^ 179
            # print(temp)
            temp = magic_var1 - temp

            # print(temp.to_bytes(1,byteorder=self.endianness))
            magic_var1 = magic_var1 + temp - i
            magic_var1 = magic_var1.to_bytes(4, byteorder=self.endianness, signed=True)[0]
            i += 1

            temp = temp.to_bytes(4, byteorder=self.endianness, signed=True)[0]
            # print(temp)
            # print("Magic var",magic_var1)
            bytes2 += struct.pack('b', temp)

        return bytes2.decode()

    def read_str_encrypted(self):
        string = bytes
        last_byte = None
        while last_byte != b"\x00":
            last_byte = self.data_reader.read(1)
            if last_byte == b"\x00" and len(string) == 0:
                break
            string += last_byte
        if len(string) > 0:
            string = string[:-1]

        decoded_string = self.string_decryption(string)

        return decoded_string


class xt_parser:
    def __init__(self,files_bytes:bytes):
        self.file_reader = better_reader(files_bytes)
        self.endianness = 'little'
        # file magic and version

        header = self.file_reader.read_str_seized(4)

        if header == "KSLF":
            print("PC file")
        else:
            print("PS3 file")
            self.file_reader.endianness = 'big'
            self.endianness = 'big'


        #assert self.file_reader.read_str_seized(4) == "KSLF"
        assert self.file_reader.read_int(4) == 2

        #blocks positions

        self.data_structure_def_pos = 0
        self.data_structure_def_size = 0

        self.unknown1_pos = 0
        self.unknown1_size =0

        self.data_types_definitions_pos = 0
        self.data_types_definitions_size = 0

        self.encrypted_strings_pos = 0
        self.encrypted_strings_size = 0

        self.entities_definition_pos = 0
        self.entities_definition_size = 0

        self.entities_name_data_pos = 0
        self.entities_name_data_size =0

        self.unknown_block3_pos = 0
        self.unknown_block3_size = 0

        self.data_block_pos = 0
        self.data_block_size = 0

        self.parse_pos_and_size()

        #actual data
        self.data_structures = []
        self.unknown1 = []
        self.data_types_definitions = []
        self.decrypted_strings_data = None
        self.encrypted_strings = []
        self.entities_definitions = []
        self.entities_names = []
        self.unknown_block3 = []

        #prepared_data (cooked)

        self.cooked_data_types = []
        self.cooked_data_structures = []

        self.output_list = []

    def string_data_decryption(self,encrypted_string: bytes) -> str:
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
            # print("Current Byte:", i+1)
            temp = byte ^ 179
            # print(temp)
            temp = magic_var1 - temp

            # print(temp.to_bytes(1,byteorder=self.endianness))
            magic_var1 = magic_var1 + temp - i
            magic_var1 = magic_var1.to_bytes(4, byteorder='little', signed=True)[0]
            i += 1

            temp = temp.to_bytes(4, byteorder='little', signed=True)[0]
            # print(temp)
            # print("Magic var",magic_var1)
            bytes2 += struct.pack('b', temp)

        return bytes2.decode()

    def main(self):

        #print(self.pos_logging())

        self.parse_data_structures()
        #print(self.data_structures)

        #stub
        self.parse_unknown1()

        self.parse_data_types_def()
        #print(self.data_types_definitions)

        self.parse_encrypted_strings()
        #print(self.decrypted_strings_data)

        self.parse_entities_definitions()
        #print(self.entities_definitions)

        self.parse_entities_names()
        print(self.entities_names)

        self.parse_block3()
        #print(self.unknown_block3)

        self.prepare_data_types()
        #print(self.cooked_data_types)
        self.prepare_data_structures()
        #print(self.cooked_data_structures)

        with open('./output/data_types2.json','w') as file:
            file.write(json.dumps(self.cooked_data_structures))

        self.parse_data_block()


    def parse_pos_and_size(self):
        '''
        in charge of reading initial position and size for various data blocks

        Size means number of entities in the block.

        data_structure: 12 bytes
        data_types: 8 bytes
        :return:
        '''

        self.data_structure_def_pos = self.file_reader.read_int(4)
        self.data_structure_def_size = self.file_reader.read_int(4)

        self.unknown1_pos = self.file_reader.read_int(4)
        self.unknown1_size = self.file_reader.read_int(4)

        self.data_types_definitions_pos = self.file_reader.read_int(4)
        self.data_types_definitions_size = self.file_reader.read_int(4)

        self.encrypted_strings_pos = self.file_reader.read_int(4)
        self.encrypted_strings_size = self.file_reader.read_int(4)

        self.entities_definition_pos = self.file_reader.read_int(4)
        self.entities_definition_size = self.file_reader.read_int(4)

        self.entities_name_data_pos = self.file_reader.read_int(4)
        self.entities_name_data_size = self.file_reader.read_int(4)

        self.unknown_block3_position = self.file_reader.read_int(4)
        self.unknown_block3_size = self.file_reader.read_int(4)

        self.data_block_pos = self.file_reader.read_int(4)
        self.data_block_size = self.file_reader.read_int(4)

    def pos_logging(self):
        print('self.data_structure_def_pos',self.data_structure_def_pos)
        print('self.data_structure_def_size', self.data_structure_def_size,'\n')

        print('self.unknown1_pos',self.unknown1_pos)
        print('self.unknown1_size', self.unknown1_size,'\n')

        print('self.data_types_definitions_pos',self.data_types_definitions_pos)
        print('self.data_types_definitions_size', self.data_types_definitions_size,'\n')

        print('self.encrypted_strings_pos',self.encrypted_strings_pos)
        print('self.encrypted_strings_size', self.encrypted_strings_size,'\n')

        print('self.entities_definition_pos',self.entities_definition_pos)
        print('self.entities_definition_size', self.entities_definition_size,'\n')

        print('self.entities_name_data_pos',self.entities_name_data_pos)
        print('self.entities_name_data_size', self.entities_name_data_size,'\n')

        print('self.unknown_block3_position',self.unknown_block3_position)
        print('self.unknown_block3_size', self.unknown_block3_size,'\n')

        print('self.data_block_position',self.data_block_pos)
        print('self.data_block_size', self.data_block_size,'\n')

    def parse_data_structures(self):
        '''
        parse defined data structures
        :return:
        '''

        self.file_reader.data_reader.seek(self.data_structure_def_pos)
        #12 bytes is 1 entity size for data structures
        data_structures_reader = better_reader(self.file_reader.read(self.data_structure_def_size * 12))

        '''
        value_decode_type
        
        only affects "end values", and indicates how the value in question should be readed
        1 - bool
        2 - signed integer 8
        3 - i16
        4 - i32
        5 - ?
        6 - unsigned integer 8
        7 - u16
        8 - u32
        9 - u64
        10 - float 32
        11 - ?
        12 - sz8 (String pointer)
        13 - ?
        14 - LocId (u32/hex)
        '''

        for i in range(self.data_structure_def_size):
            self.data_structures.append({
                'starting_string_position': data_structures_reader.read_int(2),
                'num_of_items': data_structures_reader.read_int(2),
                'unk1':data_structures_reader.read_int(2), #can be 1 or 0. 1 seems to indicates some complex stuff
                'structure_read_type': data_structures_reader.read_int(2), #0 - end value, eg u8, 1 - 1 of many, 2 - bit mask? dunno, 3 - array
                'value_decode_type': data_structures_reader.read_int(2),
                'size': data_structures_reader.read_int(2)
            })

    def parse_unknown1(self):
        '''


         It's unknown what this block is responsible for.
        Notes:
        - really small in size
        - really small (<10) values
        - non-existent in small flask schemas

        :return:
        '''

        pass

    def parse_data_types_def(self):
        self.file_reader.data_reader.seek(self.data_types_definitions_pos)

        data_types_definitions_reader = better_reader(self.file_reader.read(self.data_types_definitions_size * 8))

        for i in range(self.data_types_definitions_size):
            self.data_types_definitions.append(
                {
                    'starting_string_position':data_types_definitions_reader.read_int(2),
                    'structure_type': data_types_definitions_reader.read_int(2),
                    'offset': data_types_definitions_reader.read_int(2),
                    'data_read_type': data_types_definitions_reader.read_int(2)
                }
            )

    def parse_encrypted_strings(self):

        self.file_reader.data_reader.seek(self.encrypted_strings_pos)

        encrypted_strings_data = self.file_reader.read(self.encrypted_strings_size)

        self.decrypted_strings_data = self.string_data_decryption(encrypted_strings_data)

    def parse_entities_definitions(self):

        self.file_reader.data_reader.seek(self.entities_definition_pos)

        local_reader = better_reader(self.file_reader.read(self.entities_definition_size * 8))

        for i in range(self.entities_definition_size):
            id_bytes = local_reader.read(4)
            temp_dict = {
                    'entity_index': i,
                    'global_id': int.from_bytes(id_bytes, byteorder=self.endianness),
                    'global_id_hex': id_bytes.hex(),
                    'entity_type': local_reader.read_int(2),
                    'local_index': None
                }


            local_index = local_reader.read_int(2)

            if local_index != 65535:
                temp_dict['local_index'] = local_index

            self.entities_definitions.append(temp_dict)

    def parse_entities_names(self):

        self.file_reader.data_reader.seek(self.entities_name_data_pos)

        local_reader = better_reader(self.file_reader.read(self.entities_name_data_size * 16))

        for i in range(self.entities_name_data_size):
            self.entities_names.append(
                {
                    'id':local_reader.read_int(4),
                    'unk1':local_reader.read_int(4),
                    'offset':local_reader.read_int(4),
                    'size':local_reader.read_int(4)
                }
            )

    def parse_block3(self):
        '''
        Note to self: why is it even called block3?

        :return:
        '''

        self.file_reader.data_reader.seek(self.unknown_block3_pos)

        local_reader = better_reader(self.file_reader.read(self.unknown_block3_size * 6))

        for i in range(self.unknown_block3_size):
            self.unknown_block3.append(
                {
                    'entity_index':i,
                    'unk1(id)': local_reader.read_int(2),
                    'unk2': local_reader.read_int(2),
                    'unk3':local_reader.read_int(2)
                }
            )

    def prepare_data_types(self):

        decrypted_string_reader = better_reader(self.decrypted_strings_data.encode())

        i = 0

        '''
        {
            'starting_string_position':data_types_definitions_reader.read_int(2),
            'structure_type': data_types_definitions_reader.read_int(2),
            'offset': data_types_definitions_reader.read_int(2),
            'data_read_type': data_types_definitions_reader.read_int(2)
        }
        '''

        for data_type in self.data_types_definitions:



            decrypted_string_reader.data_reader.seek(data_type['starting_string_position'])
            data_type_name = decrypted_string_reader.read_str()

            self.cooked_data_types.append(

                {
                'index': i,
                'data_type_name': data_type_name,
                'structure_offset': data_type['offset'],
                'structure_type': data_type['structure_type'],
                'data_read_type': data_type['data_read_type']
                }

            )

            i += 1

    def prepare_data_structures(self):

        decrypted_string_reader = better_reader(self.decrypted_strings_data.encode())
        i = 0

        '''
                'position': data_structures_reader.read_int(2),
                'num_of_items': data_structures_reader.read_int(2),
                'unk1':data_structures_reader.read_int(2),
                'structure_read_type': data_structures_reader.read_int(2),
                'value_decode_type': data_structures_reader.read_int(2),
                'size': data_structures_reader.read_int(2)
        '''

        cooked_data_types_ = self.cooked_data_types.copy()

        for data_structure in self.data_structures:
            decrypted_string_reader.data_reader.seek(data_structure['starting_string_position'])
            data_structure_name = decrypted_string_reader.read_str()

            data_types_in_structure = []

            for j in range(data_structure['num_of_items']):
                data_types_in_structure.append(cooked_data_types_.pop(0))

            self.cooked_data_structures.append(
                {
                    'index': i,
                    'data_structure_name': data_structure_name,
                    'num_of_items': data_structure['num_of_items'],
                    'unk1': data_structure['unk1'],
                    'structure_read_type': data_structure['structure_read_type'],
                    'value_decode_type': data_structure['value_decode_type'],
                    'size': data_structure['size'],
                    'data_types':data_types_in_structure
                }
            )

            i += 1

    def parse_data_block(self):

        self.file_reader.data_reader.seek(self.data_block_pos)

        #data_block_reader = better_reader(self.file_reader.read(self.data_block_size))

        self.strings_data_block_reader = better_reader(self.file_reader.read(self.data_block_size))

        self.file_reader.data_reader.seek(self.data_block_pos)

        i = 0
        j = 3
        for entity in self.entities_definitions:
        #for j in range(0,100):
            #entity = self.entities_definitions[j]
            print("Current pos in file:",self.file_reader.data_reader.tell())

           # print(entity)

            '''
            'entity_index': i,
            'global_id': int.from_bytes(id_bytes, byteorder=self.endianness),
            'global_id_hex': id_bytes.hex(),
            'entity_type': local_reader.read_int(2),
            'local_index': local_reader.read_int(2)
            '''

            if entity['local_index'] is None:
                print('\n')
                continue



            #{'index': 3, 'data_structure_name': 'AmaxVehicle', 'num_of_items': 0, 'unk1': 0, 'structure_read_type': 3, 'value_decode_type': 0, 'size': 620, 'data_types': []}

            defined_structure = self.cooked_data_structures[entity['entity_type']].copy()
            print(defined_structure)

            parsed_structure = {
                'local_index': entity['local_index'],
                'global_id': entity['global_id'],
                'global_id_hex': entity['global_id_hex'],
                'file_pos': self.file_reader.data_reader.tell(),
                'size': defined_structure['size']

            }

            parsed_structure['data_structure_name'] = defined_structure['data_structure_name']
            entity_data = self.file_reader.read(defined_structure['size'])
            print(entity_data.hex())
            entity_data_reader = better_reader(entity_data)
            #entity_data_reader.data_reader.seek(defined_structure['data_types'][0]['structure_offset'], 1)



            string_data = ""

            self.strings_data_block_reader.data_reader.seek(self.entities_names[i]['offset'], 1)
            #print("String reader pos:",strings_data_block_reader.data_reader.tell())
            if self.entities_names[i]['size'] != 0:
                encrypted_string = self.strings_data_block_reader.read(self.entities_names[i]['size'])
                #print(encrypted_string.hex())
                string_data = self.string_data_decryption(encrypted_string)
                print(string_data)



            filled_data = self.parser_entity_data(entity_data_reader,defined_structure,string_data)
            #print(filled_data)

            self.file_reader.data_reader.seek(self.entities_names[i]['size'],1)
            temp = copy.deepcopy(filled_data)
            parsed_structure['data'] = temp
            print(parsed_structure)
            self.output_list.append(parsed_structure.copy())

            self.generate_output()

            i += 1
    def init_entity_parsing(self):
        pass

    def parser_entity_data(self,data_reader:better_reader, defined_structure:dict,strings_data:str=""):

        filled_data = []
        #
        for data_entry in defined_structure['data_types']:
            #sleep(0.1)
            print(data_entry)
            print("Data type reader pos:",data_reader.data_reader.tell())
            #print('Data debug:',data_reader.data_reader.read(4).hex())
            #data_reader.data_reader.seek(-4,1)

            #{'index': 1, 'data_type_name': 'min_players', 'structure_offset': 4, 'structure_type': 22, 'data_read_type': 0}

            data_reader.data_reader.seek(data_entry['structure_offset'])

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

            print("Taking care of read type:",data_entry['data_read_type'])

            temp_data_entry = data_entry

            structure_for_data_entry = self.cooked_data_structures[data_entry['structure_type']]
            # {'index': 22, 'data_structure_name': 'u8', 'num_of_items': 0, 'unk1': 0, 'structure_read_type': 0, 'value_decode_type': 6, 'size': 4, 'data_types': []}
            #print(structure_for_data_entry)

            temp_data_entry['data_structure_name'] = structure_for_data_entry['data_structure_name']
            #self.generate_output_debug(filled_data, temp_data_entry['data_structure_name'])
            print('Data debug2:',data_reader.data_reader.read(4).hex())
            data_reader.data_reader.seek(-4,1)

            if data_entry['data_read_type'] == 0:

                raw_data = data_reader.read(structure_for_data_entry['size'])

                if structure_for_data_entry['value_decode_type'] != 0:
                    human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'],strings_data)
                else:
                    human_readable_data = None
                temp_data_entry['value_hex'] = raw_data.hex()
                temp_data_entry['value'] = human_readable_data

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 1:

                raw_data = data_reader.read(4)

                if structure_for_data_entry['value_decode_type'] != 0:
                    human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'],strings_data)
                else:
                    human_readable_data = None
                temp_data_entry['value_hex'] = raw_data.hex()
                temp_data_entry['value'] = human_readable_data

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 2:

                raw_data = data_reader.read(structure_for_data_entry['size'])

                if structure_for_data_entry['value_decode_type'] != 0:
                    human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'],strings_data)
                else:
                    human_readable_data = None
                temp_data_entry['value_hex'] = raw_data.hex()
                temp_data_entry['value'] = human_readable_data

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 3:

                raw_data = data_reader.read(structure_for_data_entry['size'])

                # if structure_for_data_entry['value_decode_type'] != 0:
                #     human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'],strings_data)
                # else:
                #     human_readable_data = None
                temp_data_entry['value'] = self.parser_entity_data(better_reader(raw_data),structure_for_data_entry,strings_data)
                #temp_data_entry['value'] = human_readable_data

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 4:

                raw_data = data_reader.read(4)

                if structure_for_data_entry['value_decode_type'] != 0:
                    human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'],strings_data)
                else:
                    human_readable_data = None
                temp_data_entry['value_hex'] = raw_data.hex()
                temp_data_entry['value'] = human_readable_data

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 5:

                raw_data = data_reader.read(4)

                # if structure_for_data_entry['value_decode_type'] != 0:
                #     human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'])
                # else:
                #     human_readable_data = None
                temp_data_entry['index_pointer_hex'] = raw_data.hex()
                temp_data_entry['index_pointer'] = None if int.from_bytes(raw_data, self.endianness) == 4294967295 else int.from_bytes(raw_data, self.endianness)

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 6:

                raw_data = data_reader.read(4)

                # if structure_for_data_entry['value_decode_type'] != 0:
                #     human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'])
                # else:
                #     human_readable_data = None
                temp_data_entry['index_pointer_hex'] = raw_data.hex()
                temp_data_entry['index_pointer'] = None if int.from_bytes(raw_data, self.endianness) == 4294967295 else int.from_bytes(raw_data, self.endianness)

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 256:
                temp_data_entry['array_flag'] = data_reader.read_int(4)
                raw_data = data_reader.read(4)


                temp_data_entry['array_size_hex'] = raw_data.hex()
                temp_data_entry['array_size'] = int.from_bytes(raw_data, self.endianness)
                temp_data_entry['array'] = []

                if temp_data_entry['array_size'] > 1000:
                    temp_data_entry['array_size'] = 0
                    #raise ValueError

                for x in range(temp_data_entry['array_size']):
                    #array_data = self.value_type_decoder(self.file_reader.read(structure_for_data_entry['size']),data_entry['array_flag'])

                    array_data = self.file_reader.read(structure_for_data_entry['size']).hex()
                    temp_data_entry['array'].append(array_data)

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 257:
                temp_data_entry['array_flag'] = data_reader.read_int(4)
                raw_data = data_reader.read(4)


                temp_data_entry['array_size_hex'] = raw_data.hex()
                temp_data_entry['array_size'] = int.from_bytes(raw_data, self.endianness)
                temp_data_entry['array'] = []

                if temp_data_entry['array_size'] > 1000:
                    temp_data_entry['array_size'] = 0
                    #raise ValueError

                for x in range(temp_data_entry['array_size']):
                    #array_data = self.value_type_decoder(self.file_reader.read(structure_for_data_entry['size']),data_entry['array_flag'])

                    array_data = self.file_reader.read(structure_for_data_entry['size']).hex()
                    temp_data_entry['array'].append(array_data)

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 259:

                temp_data_entry['array_flag'] = data_reader.read_int(4)

                raw_data = data_reader.read(4)

                # if structure_for_data_entry['value_decode_type'] != 0:
                #     human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'])
                # else:
                #     human_readable_data = None
                temp_data_entry['array_size_hex'] = raw_data.hex()
                temp_data_entry['array_size'] = int.from_bytes(raw_data, self.endianness)
                temp_data_entry['array'] = []


                if temp_data_entry['array_size'] > 1000:
                    temp_data_entry['array_size'] = 0
                    #raise ValueError

                for x in range(temp_data_entry['array_size']):
                    #print(structure_for_data_entry)

                    temp_reader = better_reader(self.file_reader.read(structure_for_data_entry['size']))

                    array_data = self.parser_entity_data(temp_reader,structure_for_data_entry)
                    #array_data = self.file_reader.read(structure_for_data_entry['size']).hex()
                    temp_data_entry['array'].append(array_data)

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 260:
                #print(structure_for_data_entry)

                temp_data_entry['array_flag'] = data_reader.read_int(4)
                temp_data_entry['array_size'] = 0
                raw_data = data_reader.read(4)

                # if structure_for_data_entry['value_decode_type'] != 0:
                #     human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'])
                # else:
                #     human_readable_data = None
                temp_data_entry['array_size_hex'] = raw_data.hex()
                temp_data_entry['array_size'] = int.from_bytes(raw_data, self.endianness)
                temp_data_entry['array'] = []


                if temp_data_entry['array_size'] > 1000:
                    temp_data_entry['array_size'] = 0
                    #raise ValueError

                for x in range(temp_data_entry['array_size']):

                    array_data = self.file_reader.read(4).hex()

                    temp_data_entry['array'].append(array_data)

                filled_data.append(temp_data_entry)

            elif data_entry['data_read_type'] == 261:
                #print(structure_for_data_entry)

                temp_data_entry['array_flag'] = data_reader.read_int(4)
                #print(temp_data_entry['array_flag'])
                raw_data = data_reader.read(4)

                # if structure_for_data_entry['value_decode_type'] != 0:
                #     human_readable_data = self.value_type_decoder(raw_data,structure_for_data_entry['value_decode_type'])
                # else:
                #     human_readable_data = None
                temp_data_entry['array_size_hex'] = raw_data.hex()
                temp_data_entry['array_size'] = int.from_bytes(raw_data, self.endianness)
                temp_data_entry['array'] = []


                if temp_data_entry['array_size'] > 1000:
                    temp_data_entry['array_size'] = 0
                    #raise ValueError

                for x in range(temp_data_entry['array_size']):

                    array_data = self.file_reader.read(4).hex()

                    temp_data_entry['array'].append(array_data)

                filled_data.append(temp_data_entry)

            else:
                print('!!!!!!!!!!!!!!!!!!!!!!!!')
                print('UNKNOWN READ TYPE:',data_entry['data_read_type'])
                print('!!!!!!!!!!!!!!!!!!!!!!!!')
                raise ValueError

            print(filled_data)

        return filled_data

    def value_type_decoder(self,value_bytes:bytes,value_type:int,string_data:str=""):
        '''
                only affects "end values", and indicates how the value in question should be readed
        1 - bool
        2 - signed integer 8
        3 - i16
        4 - i32
        5 - ?
        6 - unsigned integer 8
        7 - u16
        8 - u32
        9 - u64
        10 - float 32
        11 - double
        12 - sz8 (String pointer)
        13 - ?
        14 - LocId (u32/hex)
        '''

        if value_type == 1:
            return bool(int.from_bytes(value_bytes,self.endianness))
        elif value_type > 1 and value_type < 10:
            return int.from_bytes(value_bytes, self.endianness)
        elif value_type == 10:
            try:
                return float('%.3f'%(struct.unpack('f', value_bytes)[0]))
            except:
                return 'ERROR'
        elif value_type == 11:
            return struct.unpack('d', value_bytes)[0]
        elif value_type == 12:
            pos = int.from_bytes(value_bytes, self.endianness)
            if pos > len(string_data):
                return "placeholder"
            else:
                return self.embeded_strings_reader(pos,string_data.encode())

        else:
            return value_bytes.hex()

    def embeded_strings_reader(self,pos:int,data:bytes)->str:
            data_reader = better_reader(data)
            data_reader.data_reader.seek(pos)
            string = ""
            last_byte = None
            while last_byte != b"\x00":
                if data_reader.data_reader.tell() == len(data):
                    break
                last_byte = data_reader.read(1)
                if last_byte == b"\x00" and len(string) == 0:
                    break
                string += last_byte.decode()
            if len(string) > 0:
                string = string[:-1]

            return string

    def get_entity_name(self,entity_index:int):
        pass

    def generate_output(self):
        with open('./online_settings/settings.json', 'w') as file:
            file.write(json.dumps(self.output_list))

    def generate_output_debug(self,data,filename:str="placeholder"):
        pass
        # with open(f'./output/debug_{filename}.json','w') as file:
        #     file.write(json.dumps(data))

if __name__ == '__main__':
    with open('./online_settings/settings_x2_.ksl','rb') as file:
        flask_reader = xt_parser(file.read())
        flask_reader.main()
        flask_reader.generate_output()

    # with open('dlcpackwalmartdeployed.bin','rb') as file:
    #     flask_reader = xt_parser(file.read())
    #     flask_reader.main()
    #     flask_reader.generate_output()