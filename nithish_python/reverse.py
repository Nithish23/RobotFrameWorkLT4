number = int(input("Enter the integer number: "))
reversed_num = 0

while number != 0:
    digit = number % 10
    reversed_num = reversed_num * 10 + digit
    number //= 10

print("Reversed Number: " + str(reversed_num))