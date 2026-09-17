#Count words
file = open("notes.txt", "r")

content = file.read()

words = content.split()

print("Number of words:", len(words))

file.close()