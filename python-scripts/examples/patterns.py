# ✅ Pyramid
def print_pyramid(n):
    for i in range(1, n+1):
        print(' '*(n-i) + '*'*(2*i-1))

# ✅ Diamond Pattern
def print_diamond(n):
    for i in range(1, n+1):
        print(' '*(n-i) + '*'*(2*i-1))
    for i in range(n-1, 0, -1):
        print(' '*(n-i) + '*'*(2*i-1))

# ✅ Pascal Triangle
def print_pascal(n):
    for i in range(n):
        num = 1
        print(' '*(n-i-1), end='')
        for j in range(i+1):
            print(num, end=' ')
            num = num * (i - j) // (j + 1)
        print()

# ✅ Hollow Square
def print_hollow_square(n):
    for i in range(n):
        if i == 0 or i == n-1:
            print('*' * n)
        else:
            print('*' + ' '*(n-2) + '*')