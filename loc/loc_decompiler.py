import io

class unpacker:
    def __init__(self,filename:str):
        self.filename = filename
        self.file_reader = io.BytesIO(open(self.filename,"rb").read())
        self.header_dict = {}
        #assert self.file_reader.read(2) == b"\x20\x20"

    def read_int(self,byte_size:int)->int:
        return int().from_bytes(self.file_reader.read(byte_size),'little')

    def read_str(self):
        string = ""
        last_byte = None
        while last_byte != b"\x00":
            last_byte = self.file_reader.read(1)
            if last_byte == b"\x00" and len(string) == 0:
                break
            string += last_byte.decode()
        if len(string) > 0:
            string = string[:-1]

        return string

    def read_str_seized(self,size:int)->str:
        return self.file_reader.read(size).decode()

    def main(self):
        self.file_reader.seek(148)
        num_of_strings = self.read_int(4)

        base_strings = {}

        for i in range(num_of_strings):
            pos = self.read_int(4)
            id =  self.read_int(4)
            base_strings[i] = {'pos':pos,
                               'id':id}

        print(base_strings)
        print(self.file_reader.tell())
        self.read_int(4)

        for i in range(num_of_strings):
            string = self.read_str()
            base_strings[i]['string'] = string

        print(base_strings)


reader = unpacker('./multiplayer-en.loc')
reader.main()