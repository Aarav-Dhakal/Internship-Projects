#Count even numbers
numbers = [1, 2, 3, 4, 5, 6, 7, 8]

count = 0

for number in numbers:
    if number % 2 == 0:
        count = count + 1

print("Even numbers:", count)