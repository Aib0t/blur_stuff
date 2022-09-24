import json
import io
import binascii
import struct


class mp_save_parser:
    def __init__(self, data):
        self.data_reader = io.BytesIO(data)
        self.save_data = {}

    def read(self, read_size: int) -> bytes:
        return self.data_reader.read(read_size)

    def read_int(self, byte_size: int) -> int:
        return int().from_bytes(self.data_reader.read(byte_size), 'little')

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

    def read_until_EOF(self):
        last_byte = None
        more_last_byte = None
        eof_reached = False
        eof_bytes = b"\x80\x48\x52\x00"
        while not eof_reached:
            if self.data_reader.tell()+4 >= self.save_data_size:
                break
            last_byte = self.data_reader.read(4)
            if last_byte == eof_bytes:
                    eof_reached = True
            else:
                self.data_reader.seek(-(len(eof_bytes)-1),io.SEEK_CUR)
        print(self.data_reader.tell())

    def fu_account_fixer(self):
        '''
        Since we need to make sure no changes are made
        :return:
        '''


        magic = self.data_reader.read(4).hex()
        self.save_data["magic"] = magic
        game_version = int().from_bytes(self.data_reader.read(4), 'little')
        self.save_data["game_version"] = game_version
        playlist_verion = int().from_bytes(self.data_reader.read(4), 'little')
        self.save_data["playlist_verion"] = playlist_verion

        self.save_data_size = int().from_bytes(self.data_reader.read(4), 'little')
        self.save_data["save_data_size"] =  self.save_data_size


        display_fans = self.read_int(4)
        display_races = self.read_int(4)

        display_finished = self.read_int(4)
        display_first = self.read_int(4)
        display_driverscore = self.read_int(4)

        self.save_data["display_data"] = {
            "display_fans":display_fans,
            "display_races": display_races,
            "display_finished":display_finished,
            "display_first":display_first,
            "display_driverscore":display_driverscore,

        }

        #end of header
        self.data_reader.seek(288)

        car_num = self.read_int(4)
        #print(car_num)
        for i in range(car_num):
            car_hex = self.read_hex(4)
            car_value = self.read_int(4)
            #print(car_hex,car_value)


        block2_num = self.read_int(4)
        #print(block2_num)
        for i in range(block2_num):
            block2_num_hex = self.read_hex(4)
            block2_num_value = self.read_int(4)

            #print(block2_num_hex, block2_num_value)

        player_level = self.read_int(4)
        player_legend = self.read_int(4)
        player_fans_level = self.read_int(4)

        self.data_reader.seek(-12, io.SEEK_CUR)

        self.data_reader.write(b"\x31\x00\x00\x00\x00\x00\x00\x00\x90\x94\x0D\x00")

        self.save_data["player_data"] = {
            "player_level":player_level,
            "player_legend": player_legend,
            "player_fans":player_fans_level,
        }

        #print(self.data_reader.tell())
        #print(self.save_data)
        #print("+++++\n")
        self.data_reader.seek(0)
        return_bytes = self.data_reader.read()
        return self.save_data, return_bytes