#Find the largest number
numbers = [10, 20, 30, 40, 50]
largest = numbers[0]

for number in numbers:
    if number > largest:
        largest = number

print("Largest:", largest)