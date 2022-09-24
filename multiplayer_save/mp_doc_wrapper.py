import mp_save_reader
import io

with open("saveFile_josepro","rb") as file:

    save_data = file.read()

tool = mp_save_reader.mp_save_parser(save_data)

data, data2 = tool.fu_account_fixer()
print(data)