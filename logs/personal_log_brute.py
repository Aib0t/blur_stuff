import io


with open("./logData_race1_chris",'rb') as log:

    log_reader = io.BytesIO(log.read())

    file_len = len(log_reader.read())


    for pos in range(file_len):
        log_reader.seek(pos)
        test_var = int().from_bytes(log_reader.read(4), 'little')

        if test_var > 240000000 and test_var < 270000000:
            print(f"POS: {pos} VAL: {test_var}")
