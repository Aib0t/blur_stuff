import io





with open("00000029.ksl","rb") as file:
    file_reader = io.BytesIO(file.read())
    file_reader.seek(95272)
    levels = {
        0:0
    }
    for i in range(49):
        levels[i+1] = int.from_bytes(file_reader.read(4),'little')
        file_reader.seek(36,1)

    print(levels)
