n = int(input("Enter n: "))
m = int(input("Enter m: "))
i = 1
while(i <= n and i <= m):
  if(n % i == 0 and m % i == 0):
    gcd = i
  i = i + 1
print("GCD is", gcd)
