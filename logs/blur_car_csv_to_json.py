import csv
import json
import binascii

complete_dict = {}

with open('blur_cars.csv', newline='') as csvfile:
    spamreader = csv.reader(csvfile, delimiter=',', quotechar='"')
    for row in spamreader:
        temp_dict = {}

        map_id_int = int().from_bytes(binascii.a2b_hex(row[0].lower()),'little')

        temp_dict['car_id_hex'] = row[0].lower()
        temp_dict['car_name'] = row[1]
        temp_dict['car_class'] = row[2]
        complete_dict[map_id_int] = temp_dict

print(complete_dict)

with open('cars.json', 'w') as outfile:
    json.dump(complete_dict, outfile)