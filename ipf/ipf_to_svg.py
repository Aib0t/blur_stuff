import svgwrite
import io

dwg = svgwrite.Drawing('test.svg')

dwg.add(dwg.line((0, 0), (10, 10), stroke=svgwrite.rgb(10, 10, 16, '%')))


# dwg.add(dwg.text('Test', insert=(10, 10), fill='red'))


def uint32(reader: io.BytesIO):
    return int().from_bytes(reader.read(4), 'little')


def uint16(reader: io.BytesIO):
    return int().from_bytes(reader.read(2), 'little')


def string_of_size(reader: io.BytesIO, size: int):
    return reader.read(size).decode()


icons_file = open("car_icons_b.ipf", "rb").read()

icons_reader = io.BytesIO(icons_file)

print("Header", icons_reader.read(16).hex())

layer_name_size = uint32(icons_reader)
print(layer_name_size)
layer_name = string_of_size(icons_reader, layer_name_size)
print(layer_name)

number_of_layers = uint32(icons_reader)

uint32(icons_reader)  # unknown
uint32(icons_reader)  # unknown
icon_name_size = uint32(icons_reader)
name_of_icon = string_of_size(icons_reader, icon_name_size)
for i in range(0, 10000):
    var1 = uint16(icons_reader)
    var2 = uint16(icons_reader)
    var3 = uint16(icons_reader)
    var4 = uint16(icons_reader)
    try:
        dwg.add(dwg.line((var1, var2), (var3, var4), stroke=svgwrite.rgb(10, 10, 16, '%')))
    except Exception as e:
        pass

dwg.save()
