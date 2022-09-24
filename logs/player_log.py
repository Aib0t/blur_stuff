import io
import binascii
import json

with open('maps.json') as json_file:
    map_data = json.load(json_file)

with open('cars.json') as json_file:
    car_data = json.load(json_file)

def get_map_name(map_hex_id: bytes) -> str:
    map_int_id = int().from_bytes(map_hex_id, 'little')
    # print(map_int_id)
    if str(map_int_id) in map_data:
        if map_data[str(map_int_id)]['map_name'] != None:
            return map_data[str(map_int_id)]['map_name']
        else:
            return map_data[str(map_int_id)]['map_internal_name']


def get_car_name(car_hex_id: bytes) -> str:
    car_int_id = int().from_bytes(car_hex_id, 'little')
    # print(car_int_id)
    if str(car_int_id) in car_data:
        if car_data[str(car_int_id)]['car_name'] != None:
            return car_data[str(car_int_id)]['car_name']

def player_log_parse(game_binary_log) -> dict:
    log_reader = io.BytesIO(game_binary_log)
    log_dict = {}

    host_player_id = log_reader.read(8).hex()
    log_dict['host_player_id'] = host_player_id

    unknown1 = int().from_bytes(log_reader.read(4),'little')
    log_dict['unknown1'] = unknown1

    player_id = log_reader.read(8).hex()
    log_dict['player_id'] = player_id

    while log_reader.tell() < len(game_binary_log):

        bytes_header = log_reader.read(3).hex()

        #print(f"HEADER: {bytes_header}")

        if bytes_header == '5b023d': #car data

            car_hex = log_reader.read(4)
            car_name = get_car_name(car_hex)

            log_dict['car_id'] = int().from_bytes(car_hex,'little')
            log_dict['car_name'] = car_name

            log_dict['paint_hex'] = log_reader.read(4).hex()
        elif bytes_header == '2f5d5b':
            pass
            #print(log_reader.read(3).hex())

        elif bytes_header == 'a6bc7c':
            pass
            #print(log_reader.read(2).hex())

        elif bytes_header == 'ffffff':
            pass
            #print(log_reader.read(6).hex())

        else:
            pass

    print(log_dict)
    return log_dict


if __name__ == "__main__":

    '''
    {'map_name': 'Mount Haruna 1', 'number_of_racers': 3, 'laps': 1, 'racers_info': {1: {'player_name': 'AlexKVideos1', 'player_level': 5, 'player_car_name': 'BMW 1 Series Concept Race'}, 3: {'player_name': 'Ajay0107', 'player_level': 5, 'player_car_name': 'Natalya’s BMW 1 Series Race'}, 2: {'player_name': 'Chris', 'player_level': 3, 'player_car_name': 'BMW 1 Series Concept Race'}}}
    '''

    file_reader = open('logData_race1_aleks', 'rb').read()
    player_log_parse(file_reader)

    file_reader = open('logData_race1_chris', 'rb').read()
    player_log_parse(file_reader)

    file_reader = open('logData_race1_ajay', 'rb').read()
    player_log_parse(file_reader)