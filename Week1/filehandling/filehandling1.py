#Write to a file
file = open("notes.txt", "w")

file.write("Python is easy to learn.\n")
file.write("I am practicing Python.")

file.close()

print("File created.")