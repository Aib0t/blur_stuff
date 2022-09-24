import io
import struct
from wand.image import Image
from wand.display import display


class unpacker:
    def __init__(self,filename:str):
        self.filename = filename
        self.model_reader = io.BytesIO(open(self.filename,"rb").read())
        self.header_dict = {}
        self.data_size = len(open(self.filename,"rb").read())
        assert self.model_reader.read(2) == b"\x20\x20"

    def read_int(self,byte_size:int)->int:
        return int().from_bytes(self.model_reader.read(byte_size),'little')

    def read_str(self):
        string = ""
        last_byte = None
        while last_byte != b"\x00":
            last_byte = self.model_reader.read(1)
            if last_byte == b"\x00" and len(string) == 0:
                break
            string += last_byte.decode()
        if len(string) > 0:
            string = string[:-1]

        return string

    def read_str_seized(self,size:int)->str:
        return self.model_reader.read(size).decode()

    def read_big_EOF(self):
        EOF = self.model_reader.read(2)
        if EOF != b"\x52\x41":
            EOF_type = int.from_bytes(self.model_reader.read(2),'little')
            return EOF_type
        else:
            print("Eof is bad")
            #self.model_reader.seek(-4,io.SEEK_CUR)

    def read_until_EOF(self):
        last_byte = None
        more_last_byte = None
        eof_reached = False
        while not eof_reached:
            last_byte = self.model_reader.read(1)
            if last_byte == b"\x41":
                more_last_byte = self.model_reader.read(1)
                if more_last_byte == b"\x00":
                    eof_reached = True
                else:
                    self.model_reader.seek(-1,io.SEEK_CUR)

    def EOF_READER2(self):
        last_byte = None
        more_last_byte = None
        consumed_bytes = bytes()
        eof_reached = False
        while not eof_reached:
            last_byte = self.model_reader.read(1)
            if last_byte == b"\x52":
                more_last_byte = self.model_reader.read(1)
                #if more_last_byte == b"\x02" or more_last_byte == b"\x00" or more_last_byte == b"\x01" or more_last_byte == b"\x03" or more_last_byte == b"\x04":
                if more_last_byte == b"\x41":
                    eof_reached = True
                    more_last_byte2 = self.model_reader.read(2)
                    return bytes(last_byte+more_last_byte+more_last_byte2).hex(), consumed_bytes.hex()
                else:
                    self.model_reader.seek(-1,io.SEEK_CUR)
            else:
                consumed_bytes += last_byte



    def read_float(self):
        return struct.unpack('f', self.model_reader.read(4))[0]

    def make_correct_header(self,typename:str,tx_w:int,tx_h:int):

        header_part1 = bytes([
            # Offset 0x00000000 to 0x00000011
            0x44, 0x44, 0x53, 0x20, 0x7C, 0x00, 0x00, 0x00, 0x07, 0x10, 0x0A, 0x00
        ])


        header_part2 = bytes([
	        # Offset 0x00000021 to 0x00000083
            0x00 ,0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x04,
            0x00, 0x00, 0x00
        ])

        header_part3 = bytes([
            # Offset 0x00000088 to 0x00000127
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x10, 0x40, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00
        ])

        header = header_part1 + tx_h.to_bytes(4,'little') + tx_w.to_bytes(4,'little') + header_part2 + typename.encode() + header_part3

        arr = bytes([
            # Offset 0x00000000 to 0x00000127
            0x44, 0x44, 0x53, 0x20, 0x7C, 0x00, 0x00, 0x00, 0x07, 0x10, 0x0A, 0x00,
            0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
            0x44, 0x58, 0x54, 0x35, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x08, 0x10, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        ])
        #print(header.hex())
        return header

    def read_texture(self):

        texture_name_size = self.read_int(4)
        print(self.model_reader.tell())
        texture_name = self.read_str_seized(texture_name_size)
        print(texture_name)
        self.model_reader.read(4)
        self.read_big_EOF()

        self.read_big_EOF()
        self.model_reader.read(4)
        tx_temp_size = self.read_int(4)
        self.model_reader.read(tx_temp_size)
        self.read_big_EOF()

        self.model_reader.read(44)

        texture_size = self.read_int(4) - 28
        texture_w = self.read_int(4)
        texture_h = self.read_int(4)

        self.model_reader.read(8)

        texture_type = self.read_str_seized(4)

        correct_tx_header = self.make_correct_header(texture_type, texture_w, texture_h)

        self.model_reader.read(8)

        texture_bytes = self.model_reader.read(texture_size)

        texture_full = correct_tx_header + texture_bytes

        # print(texture_full.hex())

        with open(f"./output/{texture_name}.dds", "wb") as file:
            file.write(texture_full)

        with Image(filename=f"./output/{texture_name}.dds") as img:
            img.compression = "no"
            # display(img)
            img.save(filename=f"./output/{texture_name}.png")

    def _read_texture(self):
        #self.model_reader.seek()
        tx_temp_size = self.read_int(4)
        print(self.model_reader.tell())
        texture_name = self.read_str_seized(tx_temp_size)
        print(texture_name)
        self.read_big_EOF()

        self.model_reader.read(46)

        print("Texture meta block pos:",self.model_reader.tell())

        texture_size = self.read_int(4) - 28
        texture_w = self.read_int(4)
        texture_h = self.read_int(4)

        print("Texture size:",texture_size,"Texture W:", texture_w,"Texture_H:",texture_h)

        self.model_reader.read(8)

        print("Texture type pos:", self.model_reader.tell())
        texture_type = self.read_str_seized(4)
        print("Texture type:", texture_type)
        correct_tx_header = self.make_correct_header(texture_type, texture_w, texture_h)

        self.model_reader.read(8)

        texture_bytes = self.model_reader.read(texture_size)

        texture_full = correct_tx_header + texture_bytes

        # print(texture_full.hex())
        print(self.model_reader.tell())
        with open(f"./output/{texture_name}.dds", "wb") as file:
            file.write(texture_full)

        with Image(filename=f"./output/{texture_name}.dds") as img:
            img.compression = "no"
            # display(img)
            img.save(filename=f"./output/{texture_name}.png")

    def main(self):
        name = self.read_str()
        self.header_dict[name] = {}
        self.header_dict[name]['value'] = self.read_int(4)
        self.data_size = self.read_int(4)

        self.model_reader.read(4) #always equal 40 00 43 00

        header_text = self.read_str()
        header_size = self.read_int(4)
        header_unk1 = self.read_int(4)
        header_unk2 = self.read_int(4)
        header_unk3 = self.read_int(4)

        self.model_reader.seek(128) #beginning of offset field

        self.number_of_ojects = self.read_int(4)

        objects_offsets = []
        for i in range(self.number_of_ojects+1):
            objects_offsets.append(self.read_int(4))

        print("MODELS OBJECTS:",self.number_of_ojects+1)

        self.objects = {}
        for i in range(self.number_of_ojects+1):
            object_name = self.read_str()
            self.objects[object_name] = {}
            self.objects[object_name]['offset'] = objects_offsets.pop(0)


        self.read_until_EOF()

        for mdl_object in self.objects:
            dummy_x = self.read_float()
            dummy_y = self.read_float()
            dummy_z = self.read_float()
            self.objects[mdl_object]['dummy_pos'] = {
                'x':dummy_x,
                'y':dummy_y,
                'z':dummy_z
            }
        print(self.objects)
        print('+++++')
        print(self.model_reader.tell())
        self.read_until_EOF()
        print(self.model_reader.tell())

        # self.model_reader.seek(9963)
        #
        # self.number_of_fx = self.read_int(4)
        # self.read_big_EOF()
        #
        # self.fx_list = []
        # for i in range(self.number_of_fx):
        #     self.read_big_EOF()
        #     fx_name_size = self.read_int(4)
        #     fx_name = self.read_str_seized(fx_name_size)
        #     self.fx_list.append(fx_name)
        #     self.read_big_EOF()

        self.model_reader.seek(1064)
        #self.read_big_EOF()



        # self.model_reader.read(4)
        # textures_loop_1 = self.read_int(4)
        #
        #
        # for i in range(textures_loop_1):
        #     self.read_texture()
        #     print(self.model_reader.tell())

        self.model_reader.seek(44912)

        textures_loop_2 = self.read_int(4)
        for i in range(textures_loop_2):
            self._read_texture()


    def eof_research(self):
        while self.model_reader.tell() <= self.data_size:
            header,consumed_bytes =self.EOF_READER2()
            if len(consumed_bytes)/2 < 100:
                print(f"EOL: {header} | pos: {self.model_reader.tell()-4} | {consumed_bytes} | len: {int(len(consumed_bytes)/2)}")
            else:
                print(f"EOL: {header} | pos: {self.model_reader.tell() - 4} | len: {int(len(consumed_bytes) / 2)}")



unpacker('traffic_cone01.model').eof_research()