file = open("data.txt", "r")

content = file.read()

file.close()

lines = content.splitlines()
words = content.split()
characters = len(content)

print("----- FILE INFORMATION -----")
print("Number of lines:", len(lines))
print("Number of words:", len(words))
print("Number of characters:", characters)

print("\n----- FILE CONTENT -----")
print(content)