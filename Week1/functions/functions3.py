#Check even or odd
def check_number(number):
    if number % 2 == 0:
        return "Even"
    else:
        return "Odd"


number = int(input("Enter a number: "))

print(check_number(number))