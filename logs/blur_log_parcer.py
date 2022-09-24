import io
import datetime
import binascii
import json


async def make_game_dict(game_binary_log) -> dict:
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

    game_dict = {}

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
        #print(player_id)
        for j in range(0,23):
            #print(f"READER POS: {file_reader.tell()}")
            if j == 5:
                level = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['player_level'] = level + 1
            elif j == 7:
                #print("CAR ID")
                car_name = get_car_name(file_reader.read(4))
                temp_dict['player_car_name'] = car_name
                #print(car_name)
            else:
                int().from_bytes(file_reader.read(4), 'little')
                #print()

        int().from_bytes(file_reader.read(1),'little')
        placed = int().from_bytes(file_reader.read(1),'little')
        #print(f"PLACE: {placed}")
        int().from_bytes(file_reader.read(2), 'little')

        racers_info[placed] = temp_dict.copy()




        #print('+++++++++')


    game_dict['racers_info'] = racers_info.copy()

    print(game_dict)
    return game_dict

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

    game_dict = {}

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
        #print(player_id)
        for j in range(0,23):
            #print(f"READER POS: {file_reader.tell()}")
            if j == 5:
                level = int().from_bytes(file_reader.read(4), 'little')
                #print(f"LEVEL {level}")
                temp_dict['player_level'] = level + 1
            elif j == 7:
                #print("CAR ID")
                car_name = get_car_name(file_reader.read(4))
                temp_dict['player_car_name'] = car_name
                #print(car_name)
            else:
                int().from_bytes(file_reader.read(4), 'little')
                #print()

        int().from_bytes(file_reader.read(1),'little')
        placed = int().from_bytes(file_reader.read(1),'little')
        #print(f"PLACE: {placed}")
        int().from_bytes(file_reader.read(2), 'little')

        racers_info[placed] = temp_dict.copy()




        #print('+++++++++')


    game_dict['racers_info'] = racers_info.copy()

    print(game_dict)
    return game_dict

if __name__ == "__main__":
    file_reader = open('logData_race1_general', 'rb').read()
    sync_make_game_dict(file_reader)