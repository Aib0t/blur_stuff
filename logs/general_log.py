import io
import datetime
import binascii
import json
import struct

def sync_make_game_dict(game_binary_log) -> dict:
    #file_reader = io.BytesIO(open('logData_race_haruna', 'rb').read())
    file_reader = io.BytesIO(game_binary_log)
    with open('maps.json') as json_file:
        map_data = json.load(json_file)

    with open('cars.json') as json_file:
        car_data = json.load(json_file)

    def get_map_name(map_hex_id: bytes) -> str:

        map_int_id = int().from_bytes(map_hex_id, 'little')
        #print(map_int_id)
        if str(map_int_id) in map_data:
            if map_data[str(map_int_id)]['map_name'] != None:
                return map_data[str(map_int_id)]['map_name']
            else:
                return map_data[str(map_int_id)]['map_internal_name']

    def get_car_name(car_hex_id: bytes) -> str:

        car_int_id = int().from_bytes(car_hex_id, 'little')
        #print(car_int_id)
        if str(car_int_id) in car_data:
            if car_data[str(car_int_id)]['car_name'] != None:
                return car_data[str(car_int_id)]['car_name']

    def get_mod_name(mod_id:int)-> str:
        mods_data = {
            1: "Iron_Fist",
            2: "Jump_The_Gun",
            3: "front_runner",
            4: "Drifter",
            5: "titanium_armour",
            6: "Showy_Flourish",
            7: "Stable_Frame",
            8: "Battering_Ram",
            9: "Decoy_Drop",
            10: "Road_Sweeper",
            11: "Scrambler",
            12: "Splash_Damage",
            13: "Shielding_Efficency",
            14: "Safety_Net",
            15: "Shielded_Boosters",
            16: "shielded_bay",
            17: "ECM",
            19: "Bribe",
            20: "Fan_Favourite",
            21: "Laser_Sight",
            22: "Advanced_Radar",
            23: "Silent_Running",
            24: "Last_Gasp",
            25: "Mastermine",
            26: "AdditionalBlindfireShots",
            27: "AdditionalShockDomes",
            28: "DoubleShield",
            29: "FansNitroGift",
            30: "NitroRift",
            31: "RepairBonus",
            32: "ShotgunBlindfire",
            33: "ShuntDamage",
        }

        if mod_id+1 in mods_data:
            return mods_data[mod_id+1]
        elif mod_id == 4294967295:
            return "None"
        else:
            return "Unknown"

    def get_game_type_name(game_type_id:int) -> str:

        game_types = {
            1786934394:"skirmish racing",
            24392580:"community racing"
        }

        if game_type_id in game_types:
            return game_types[game_type_id]
        else:
            return "Unknown"

    game_dict = {}

    game_type_id_bytes = file_reader.read(4)
    game_type_id = int().from_bytes(game_type_id_bytes,'little')

    game_dict['game_type_hex'] = game_type_id_bytes.hex()
    game_dict['game_type_id'] = game_type_id
    game_dict['game_type_name'] = get_game_type_name(game_type_id)

    file_reader.seek(20)

    map_id_bytes = file_reader.read(4)

    map_name = get_map_name(map_id_bytes)
    game_dict['map_name'] = map_name
    #print(map_name)
    total_racers = int().from_bytes(file_reader.read(4),'little')
    game_dict['number_of_racers'] = total_racers
    #print(f"Number of racers: {total_racers}")

    laps = int().from_bytes(file_reader.read(4),'little')
    #print(f"Number of laps: {laps}")
    game_dict['laps'] = laps

    file_reader.read(4)

    racers_info = {}

    for i in range(0, total_racers):

        temp_dict = {}

        player_name = file_reader.read(64).decode('utf-16').encode('ascii', 'ignore').replace(b'\x00',b'').decode()
        #print(player_name)
        temp_dict['player_name'] = player_name
        player_id = file_reader.read(8).hex()
        temp_dict['player_id'] = player_id
        #print(player_id)
        test_list = []
        text_hex_list = []
        for j in range(0,23):
            #print(f"READER POS: {file_reader.tell()}")
            if j == 0:
                hex = file_reader.read(4)
                text_hex_list.append(hex.hex())
                test = struct.unpack('f', hex)[0]
                #print(test)
                test_list.append(test)
            elif j == 1:
                hex = file_reader.read(4)
                text_hex_list.append(hex.hex())
                test = struct.unpack('f', hex)[0]
                #print(test)
                temp_dict['traveled_distance'] = test
            elif j == 2:
                mod1 = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['mod_1_id'] = 0 if mod1 == 4294967295 else mod1
                temp_dict['mod_1_name'] = get_mod_name(mod1)
            elif j == 3:
                mod2 = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['mod_2_id'] = 0 if mod2 == 4294967295 else mod2
                temp_dict['mod_2_name'] = get_mod_name(mod2)
            elif j == 4:
                mod3 = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['mod_3_id'] = 0 if mod3 == 4294967295 else mod3
                temp_dict['mod_3_name'] = get_mod_name(mod3)
            elif j == 5:
                level = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['player_level'] = level + 1
            elif j == 6:
                legend = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['player_legend'] = legend
            elif j == 7:
                #print("CAR ID")
                car_name = get_car_name(file_reader.read(4))
                temp_dict['player_car_name'] = car_name
                #print(car_name)
            elif j == 9:
                #print("CAR ID")
                total_fans = int().from_bytes(file_reader.read(4), 'little')
                temp_dict['total_fans'] = total_fans
                #print(car_name)
            else:

                hex = file_reader.read(4)
                text_hex_list.append(hex.hex())
                #print(hex.hex())
                test = int().from_bytes(hex, 'little')
                #print(test)
                test_list.append(test)
        #print(test_list)
        #print(text_hex_list)
        #print(file_reader.tell())
        temp_dict['starting_pos'] = int().from_bytes(file_reader.read(1),'little') + 1
        placed = int().from_bytes(file_reader.read(1),'little')
        temp_dict['finish_pos'] = placed
        #print(f"PLACE: {placed}")


        temp_dict['final_state_id'] = int().from_bytes(file_reader.read(2), 'little')

        def final_state_str(final_state_id:int)->str:
            states_dict = {
                2:"Finished",
                3:"DNF"
            }

            if final_state_id in states_dict:
                return states_dict[final_state_id]
            else:
                return "unknown"

        temp_dict['final_state'] = final_state_str(temp_dict['final_state_id'])

        racers_info[placed] = temp_dict.copy()




        #print('+++++++++')


    game_dict['racers_info'] = racers_info.copy()

    #print(game_dict)
    #print(json.dumps(game_dict))
    return game_dict

if __name__ == "__main__":
    file_reader = open('./logData_race1_general', 'rb').read()
    print(json.dumps(sync_make_game_dict(file_reader)))
