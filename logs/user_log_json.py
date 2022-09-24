import json
import io
import binascii
import struct

with open('maps.json') as json_file:
    map_data = json.load(json_file)

def get_map_name(map_hex_id: bytes) -> str:

    map_int_id = int().from_bytes(map_hex_id, 'little')
    #print(map_int_id)
    if str(map_int_id) in map_data:
        if map_data[str(map_int_id)]['map_name'] != None:
            return map_data[str(map_int_id)]['map_name']
        else:
            return map_data[str(map_int_id)]['map_internal_name']

class basic_reader:
    def __init__(self, data):
        self.data_reader = io.BytesIO(data)

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


class user_log_parser:
    def __init__(self, file_name: str):
        file_data = open(file_name, "rb").read()
        self.file_len = len(file_data)
        self.log_reader = io.BytesIO(file_data)
        self.final_dict = {}

    def read_int(self, byte_size: int) -> int:
        return int().from_bytes(self.log_reader.read(byte_size), 'little')

    def read_str(self):
        string = ""
        last_byte = None
        while last_byte != b"\x00":
            last_byte = self.log_reader.read(1)
            if last_byte == b"\x00" and len(string) == 0:
                break
            string += last_byte.decode()
        if len(string) > 0:
            string = string[:-1]

        return string

    def read_str_seized(self, size: int) -> str:
        return self.log_reader.read(size).decode()

    def read_float(self):
        return struct.unpack('f', self.log_reader.read(4))[0]

    def read_float3(self):
        return struct.unpack('f', self.log_reader.read(3))[0]

    def read_hex(self, size: int) -> str:
        return self.log_reader.read(size).hex()

    def read_until_EOF(self) -> bytes:
        last_byte = None
        more_last_byte = None
        total_bytes = bytes()
        eof_reached = False
        while not eof_reached:
            last_byte = self.log_reader.read(1)
            total_bytes += last_byte
            if last_byte == b"\x2f":
                more_last_byte = self.log_reader.read(1)
                total_bytes += more_last_byte
                if more_last_byte == b"\x5d":
                    eof_reached = True
                else:
                    self.log_reader.seek(-1, io.SEEK_CUR)
        return total_bytes[:-2]

    def proto_reader(self, block_data):
        block_reader = basic_reader(block_data)

        assert block_reader.read(1) == b"\x5b"

        block_type = block_reader.read_int(1)
        block_unknown = block_reader.read_int(1)

        print("BLOCK TYPE:", block_type)

        if block_type == 2:
            self.final_dict['vehicle_data']={}
            car_hex_id = block_reader.read_hex(4)
            self.final_dict['vehicle_data']['vehicle_id'] = car_hex_id
            car_paint_id = block_reader.read_hex(4)
            self.final_dict['vehicle_data']['vehicle_paint_id'] = car_paint_id

        elif block_type == 8:
            print("UNKNOWN, HAVE ID FROM ADDITIONAL CAR BLOCK")
            print(f"Player level: {block_reader.read_int(1)}")
            print(f"(HEX) VAL1: {block_reader.read_hex(4)}")
            print(f"VAL2: {block_reader.read_int(4)}")
            print(f"VAL3: {block_reader.read_int(4)}")

        elif block_type == 9:
            self.final_dict['host_migrated'] = bool(block_reader.read_int(1))

        elif block_type == 13:

            def get_mod_name(mod_id: int) -> str:
                mods_data = {
                    1: "iron_fist",
                    2: "jump_the_gun",
                    3: "front_runner",
                    4: "drifter",
                    5: "titanium_armour",
                    6: "showy_flourish",
                    7: "stable_frame",
                    8: "battering_ram",
                    9: "decoy_drop",
                    10: "road_sweeper",
                    11: "scrambler",
                    12: "splash_damage",
                    13: "shielding_efficiency",
                    14: "safety_net",
                    15: "shielded_boosters",
                    16: "shielded_bay",
                    17: "ecm",
                    18: "vampiric_wreck",
                    19: "bribe",
                    20: "fan_favourite",
                    21: "laser_sight",
                    22: "advanced_radar",
                    23: "silent_running",
                    24: "last_gasp",
                    25: "mastermine",
                    26: "additionalblindfireshots",
                    27: "additionalshockdomes",
                    28: "doubleshield",
                    29: "fansnitrogift",
                    30: "nitrorift",
                    31: "repairbonus",
                    32: "shotgunblindfire",
                    33: "shuntdamage",
                }

                if mod_id + 1 in mods_data:
                    return mods_data[mod_id + 1]
                elif mod_id == 4294967295:
                    return "None"
                else:
                    return "Unknown"

            #print("MODS INFO BLOCK")
            enabled_flag = bool(block_reader.read_int(1))
            mod1_id = block_reader.read_int(1)
            mod2_id = block_reader.read_int(1)
            mod3_id = block_reader.read_int(1)

            mod1_value = block_reader.read_int(2)
            mod2_value = block_reader.read_int(2)
            mod3_value = block_reader.read_int(2)

            self.final_dict['mods'] = {
                'disabled': enabled_flag,
                'mods_list': []
            }
            self.final_dict['mods']['mods_list'].append({'mod_id':mod1_id,'mod_name': get_mod_name(mod1_id),'mod_value':mod1_value})
            self.final_dict['mods']['mods_list'].append({'mod_id': mod2_id, 'mod_name': get_mod_name(mod2_id),'mod_value':mod2_value})
            self.final_dict['mods']['mods_list'].append({'mod_id': mod3_id, 'mod_name': get_mod_name(mod3_id),'mod_value':mod3_value})

        elif block_type == 18:
            #print("MAP VOTING BLOCK")

            map1_votes = block_reader.read_int(1)
            map1_id = block_reader.read_hex(4)

            map2_id = block_reader.read_hex(4)
            map2_votes = block_reader.read_int(1)

            self.final_dict['map_voting'] = []
            self.final_dict['map_voting'].append({'map_id':map1_id,'map_votes':map1_votes,'map_name':get_map_name(binascii.a2b_hex(map1_id))})
            self.final_dict['map_voting'].append({'map_id': map2_id, 'map_votes': map2_votes,'map_name':get_map_name(binascii.a2b_hex(map1_id))})

            #print(f"MAP 1 HEX: {map1_id} | VOTES: {map1_votes}")
            #print(f"MAP 1 HEX: {map2_id} | VOTES: {map2_votes}")

        elif block_type == 20:
            print("BASIC PROFILE DATA")
            print(f"Player level: {block_reader.read_int(1)}")
            print(f"TOTAL RACE TIME: {block_reader.read_int(8)}")
            print(f"TOTAL RACES: {block_reader.read_int(4)}")
            print(f"CAR HEX: {block_reader.read_hex(4)}")
            unk_count = block_reader.read_int(4)
            print(f"COUNT OF ???: {unk_count}")

            for i in range(unk_count):

                print(f"SMALL VAL{i+1}: {block_reader.read_int(2)}")
                print(f"FF VAL{i+1}: {block_reader.read_int(4)}")

            # for i in range(50):
            #     print(block_reader.read_hex(4))

        elif block_type == 22:
            print("ADDITIONAL PROFILE DATA")

            player_level = block_reader.read_int(1)
            driver_score = block_reader.read_int(4)
            fire_hit_ratio = block_reader.read_float()
            total_race_time = block_reader.read_int(8)
            total_fans = block_reader.read_int(4)
            block_reader.read_float()
            block_reader.read_hex(4)
            total_races = block_reader.read_int(4)
            first_place = block_reader.read_int(4)

            self.final_dict['profile_data'] = {
            'player_level': player_level,
            'driver_score': driver_score,
            'fire_hit_ratio': fire_hit_ratio,
            'total_race_time':total_race_time,
            'total_fans':total_fans,
            'total_races':total_races,
            'first_place':first_place
            }

            #print(f"Player level: {block_reader.read_int(1)}")
            #print(f"DRIVER SCORE: {block_reader.read_int(4)}")
            #print(f"Fired/Hit ratio: {block_reader.read_float()}")
            #print(f"Total race time: {block_reader.read_int(8)}")
            #print(f"TOTAL FANS: {block_reader.read_int(4)}")
            #print(f"unknown: {block_reader.read_hex(8)}")
            #print(f"Unknown float: {block_reader.read_float()}")
            #print(f"Unknown hex: {block_reader.read_hex(4)}")
            #print(f"RACES: {block_reader.read_int(4)}")
            #print(f"FIRST: {block_reader.read_int(4)}")


        elif block_type == 23:
            #print("RACE DATA")
            map_hex = block_reader.read_hex(4)
            #print(f"Map hex id: {map_hex}")
            #print(f"Map name: {get_map_name(binascii.a2b_hex(map_hex))}")

            unknown1 = block_reader.read_int(2)
            unknown2 = block_reader.read_int(2)
            unknown3 = block_reader.read_int(2)
            unknown4 = block_reader.read_int(2)
            # print(f"Unknown A: {block_reader.read_int(2)}")
            # print(f"Unknown B: {block_reader.read_int(2)}")
            # print(f"Unknown C: {block_reader.read_int(2)}")
            # print(f"Unknown D: {block_reader.read_int(2)}")
            block_reader.data_reader.seek(74)

            best_lap_time = block_reader.read_float()
            fans_race = block_reader.read_int(2)
            fans_unknown1 = block_reader.read_int(2)
            fans_unknown2 = block_reader.read_int(2)
            fans_unknown3 = block_reader.read_int(2)
            fans_placement = block_reader.read_int(2)
            fans_loosing = block_reader.read_int(2)
            fans_total = block_reader.read_int(2)

            #print(f"Best lap time?: {block_reader.read_float()}")
            # print(f"EARNED FANS in race: {block_reader.read_int(2)}")
            # print(f"UNKNOWN fans source1: {block_reader.read_int(2)}")
            # print(f"UNKNOWN fans source2: {block_reader.read_int(2)}")
            # print(f"UNKNOWN fans source3: {block_reader.read_int(2)}")
            # print(f"Bonus fans for placement?: {block_reader.read_int(2)}")
            # print(f"Bonus fans for losing??: {block_reader.read_int(2)}")
            # print(f"Total earned: {block_reader.read_int(2)}")

            checkpoint1 = block_reader.read_float()
            checkpoint2 = block_reader.read_float()
            checkpoint3 = block_reader.read_float()

            # print(f"Checkpoint1: {block_reader.read_float()}")
            # print(f"Checkpoint2: {block_reader.read_float()}")
            # print(f"Checkpoint3: {block_reader.read_float()}")

            self.final_dict['race_data'] = {
            'map_id': map_hex,
            'map_name': get_map_name(binascii.a2b_hex(map_hex)),
            'unknown1': unknown1,
            'unknown2':unknown2,
            'unknown3':unknown3,
            'unknown4':unknown4,
            'best_lap_time':best_lap_time,
            'fans_race':fans_race,
            'fans_unknown1':fans_unknown1,
            'fans_unknown2':fans_unknown2,
            'fans_unknown3':fans_unknown3,
            'fans_placement':fans_placement,
            'fans_loosing':fans_loosing,
            'fans_total':fans_total,
            'checkpoint1':checkpoint1,
            'checkpoint2':checkpoint2,
            'checkpoint3':checkpoint3,
            }


        elif block_type == 24:

            bonus_types = {
                0: "NITRO",
                1: "SHOCK",
                2: "SHUNT",
                3: "BOLT",
                4: "BARGE",
                5: "MINE",
                6: "REPAIR",
                7: "SHIELD",
                8: "FAN DEMAND",
                9: "STOPWATCH",
                10: "STAR"
            }

            #print("GAME LOG DATA")
            number_of_items = block_reader.read_int(4)
            # size of 1 item is 6 bytes
            #print(f"TOTAL ITEMS: {number_of_items}")

            items_list = []

            for i in range(number_of_items):
                # {binascii.b2a_hex(block_reader.read(3))}
                #{block_reader.read_int(1)} {block_reader.read_int(1)}
                items_list.append(f"{block_reader.read_int(3)} - {block_reader.read_int(1)} - {block_reader.read_int(1)} - {bonus_types[block_reader.read_int(1)]}")

            # for i in range(50):
            #     print(block_reader.read_hex(4))

            list_of_event_lists.append(items_list)

            #print(items_list)
    def main(self):

        host_user_id = self.read_hex(8)
        self.final_dict['host_player_id'] = host_user_id
        print("Session host User ID:", host_user_id)

        unk_session_hash = self.read_hex(4)
        print("Session hash:", unk_session_hash)
        self.final_dict['session_hash'] = unk_session_hash
        sender_user_id = self.read_hex(8)
        print("Sender User ID:", sender_user_id)
        self.final_dict['player_id'] = sender_user_id
        while self.log_reader.tell() < self.file_len:
            data_block = self.read_until_EOF()

            print(data_block.hex())
            self.proto_reader(data_block)
            print("\n")
        print(self.final_dict)
        print(json.dumps(self.final_dict))

list_of_event_lists = []

logger = user_log_parser("./logData_race1_aleks")
logger.main()
print("\n++++++++++++++++++\n")
logger = user_log_parser("./logData_race1_chris")
logger.main()
print("\n++++++++++++++++++\n")
#
logger = user_log_parser("./logData_race1_ajay")
logger.main()
print("\n++++++++++++++++++\n")
#
logger = user_log_parser("./logData_post_game_6_players_serge")
logger.main()
#
# print("\n++++++++++++++++++\n")
# #
logger = user_log_parser("./user/logData__benstar")
logger.main()
print("\n++++++++++++++++++\n")
# #
# logger = user_log_parser("./user/logData_mac")
# logger.main()
# print("\n++++++++++++++++++\n")
# # #
# logger = user_log_parser("./user/logData_sus_leon")
# logger.main()
# print("\n++++++++++++++++++\n")
# # #
# logger = user_log_parser("./user/logData_sus_patrick")
# logger.main()
# print("\n++++++++++++++++++\n")

# event_list1 = list_of_event_lists[0]
# event_list2 = list_of_event_lists[1]
# event_list3 = list_of_event_lists[2]
#
# for i in range(len(event_list1)):
#     if event_list1[i] != event_list2[i] or event_list2[i] != event_list3[i] or event_list3[i] != event_list1[i]:
#         print(f"EVENT DIFFERS BETWEEN PLAYERS: {event_list1[i]} | {event_list2[i]} | {event_list3[i]}" )


# logger = user_log_parser("./logData_post_game_6_players_serge")
# logger.main()

# print("\n++++++++++++++++++\n")
# logger = user_log_parser("./logData_serge_23741")
# logger.main()
#
# print("\n++++++++++++++++++\n")
# logger = user_log_parser("./logData_chaz_23742")
# logger.main()
