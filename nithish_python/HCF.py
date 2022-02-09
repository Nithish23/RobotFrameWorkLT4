x =int(input("Enter x:"))
y =int(input("Enter y:"))
while x != y:
  if x > y:
    x = x - y
  else:
    y = y - x

print("HCF of x and y is :", y)