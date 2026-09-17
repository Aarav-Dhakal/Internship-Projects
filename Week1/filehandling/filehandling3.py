#Count lines
file = open("notes.txt", "r")

lines = file.readlines()

print("Number of lines:", len(lines))

file.close()
