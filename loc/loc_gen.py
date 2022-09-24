'''
.loc file genereation

this one is made to generate motd file.
'''

import binascii

string_dict = {
    3266737982:{
        'name':'MP_MESSAGE_OF_THE_DAY',
        'lang':{
            'en':'I fucking hate loc files with deep deep passion and lost a lot of sanity working on them',
            'fr':'Rejoignez la communauté - www.bizarrecreations.com/blurfeedback',
            'de':'Sei Teil der Community - www.bizarrecreations.com/blurfeedback',
            'it':'Entra a far parte della community: www.bizarrecreations.com/blurfeedback',
            'ja':'コミュニティに参加しよう：www.bizarrecreations.com/blurfeedback',
            'pl':'Wejdź do społeczności - www.bizarrecreations.com/blurfeedback',
            'ru':'Присоединяйтесь к сообществу игроков на www.bizarrecreations.com/blurfeedback',
            'es':'Sé parte de la comunidad: www.bizarrecreations.com/blurfeedback'
        }
    },

    2961483176:{
        'name':'POB_COMMUNITY_TMS_TEXT',
        'lang': {
            'en': 'Default PoB Community text blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blah',
            'fr': '',
            'de':'',
            'it':'',
            'ja':'',
            'pl':'',
            'ru':'',
            'es':''
        }

    },
    2469526650:{
        'name': 'POB_DLC_TMS_TEXT',
        'lang': {
            'en': 'Default PoB DLC textt blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blah',
            'fr': '',
            'de': '',
            'it': '',
            'ja': '',
            'pl': '',
            'ru': '',
            'es': ''
        }
    },
    4284791252:{
        'name':'POB_NEWS_TMS_TEXT',
        'lang': {
            'en': 'Default PoB News Text t blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blaht blah',
            'fr': '',
            'de': '',
            'it': '',
            'ja': '',
            'pl': '',
            'ru': '',
            'es': ''
        }
    }
}

def type_string_bank(data:bytearray):
    data += b"\x04\x00\x00\00\x08\x00\x00\x00" #no idea why I moved this one to separate function, but okay
    return data

def generate_string_meta_bank(): #every loc file contains meta strings, so the game knows where to put text in-game
    loc_file_header = bytearray()
    loc_file_bank = bytearray()
    loc_file_header = type_string_bank(loc_file_header)

    starting_pos = 8 + len(string_dict) * 8

    for string in string_dict:
        loc_file_header += string.to_bytes(4,byteorder='little')

        loc_file_bank += string_dict[string]['name'].encode() + b"\x00"

        loc_file_header += starting_pos.to_bytes(4, byteorder='little')

        starting_pos += len(string_dict[string]['name']) + 1

    loc_file = loc_file_header + loc_file_bank

    return loc_file

def generate_string_language_bank(lang_value:str): #main part of the show
    loc_file_header = bytearray()
    loc_file_bank = bytearray()
    loc_file_header = type_string_bank(loc_file_header)

    starting_pos = 8 + len(string_dict) * 8
    string_dict_local = [2469526650,2961483176,3266737982,4284791252]
    for string in string_dict_local:
        loc_file_header += string.to_bytes(4, byteorder='little')

        if len(string_dict[string]['lang'][lang_value]) == 0:
            loc_file_bank += b"\x00\x00"
        else:
            loc_file_bank += string_dict[string]['lang'][lang_value].encode("utf-16")[2:] + b"\x00\x00"

        loc_file_header += starting_pos.to_bytes(4, byteorder='little')

        starting_pos += len(string_dict[string]['lang'][lang_value]) * 2 + 2

    loc_file = loc_file_header + loc_file_bank

    return loc_file

def generate_file_header1(header_size:int): #file magic header
    loc_file_header = bytearray()

    loc_file_header += b"\x4F\x4C\x54\x58\x01\x00\x00\x00\x10\x00\x00\x00"
    loc_file_header += header_size.to_bytes(4, byteorder='little')

    return loc_file_header


def generate_file_header2(generated_language_banks:dict,meta_banks_size:int): #language addreses header
    loc_file_header = bytearray()
    loc_file_bank = bytearray()
    loc_file_header += b"\x0c\x00\x00\x00"
    total_languages = len(generated_language_banks)
    loc_file_header += total_languages.to_bytes(4, byteorder='little')

    languages_list_header_size = total_languages * 24 + 12

    languages_list_header_pos = languages_list_header_size + meta_banks_size + 16

    loc_file_header += languages_list_header_size.to_bytes(4, byteorder='little')



    for language_bank in generated_language_banks:
        loc_file_bank += language_bank.encode() + b"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        loc_file_bank += languages_list_header_pos.to_bytes(4, byteorder='little')
        loc_file_bank += len(generated_language_banks[language_bank]).to_bytes(4, byteorder='little')
        languages_list_header_pos += len(generated_language_banks[language_bank])


    loc_file_header += loc_file_bank

    return loc_file_header

def main():
    big_file = bytearray()
    selected_languages = ["en","fr","de","it","ja","pl","ru","es"]
    generated_banks = {}
    generated_banks_size = {}
    string_meta_bank = generate_string_meta_bank()
    string_meta_bank_size = len(string_meta_bank)

    for language in selected_languages:
        temp_bank = generate_string_language_bank(language)
        generated_banks_size[language] = len(temp_bank)
        generated_banks[language] = temp_bank

    file_address_bank = generate_file_header2(generated_banks,string_meta_bank_size)
    file_address_bank_size = len(file_address_bank)

    file_magic = generate_file_header1(file_address_bank_size+string_meta_bank_size)

    final_file = file_magic + file_address_bank + string_meta_bank

    for language in generated_banks:
        final_file += generated_banks[language]

    print(binascii.b2a_hex(final_file))
    return final_file



if __name__ == '__main__':
    compressed_data = main()
    f = open('test.loc', 'wb')
    f.write(compressed_data)
    f.close()