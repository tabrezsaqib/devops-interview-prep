# ✅ Check if number is prime
def is_prime(n):
    if n < 2: return False
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    return True

# ✅ Generate N prime numbers
def generate_primes(n):
    primes = []
    num = 2
    while len(primes) < n:
        if is_prime(num):
            primes.append(num)
        num += 1
    return primes

# ✅ Factorial (recursive & iterative)
def factorial_recursive(n):
    return 1 if n <= 1 else n * factorial_recursive(n-1)

def factorial_iterative(n):
    result = 1
    for i in range(1, n+1):
        result *= i
    return result

# ✅ Check Armstrong number
def is_armstrong(n):
    num_str = str(n)
    length = len(num_str)
    return n == sum(int(d)**length for d in num_str)

# ✅ Check perfect number
def is_perfect(n):
    return n == sum(i for i in range(1, n//2+1) if n % i == 0)

# ✅ Check palindrome number
def is_palindrome_number(n):
    return str(n) == str(n)[::-1]

# ✅ Reverse a number
def reverse_number(n):
    sign = -1 if n < 0 else 1
    return sign * int(str(abs(n))[::-1])

# ✅ Find GCD (Euclid's Algorithm)
def gcd(a, b):
    while b:
        a, b = b, a % b
    return a

# ✅ Find LCM
def lcm(a, b):
    return abs(a * b) // gcd(a, b) if a and b else 0

# ✅ Swap two numbers without third variable
def swap_numbers(a, b):
    a = a + b
    b = a - b
    a = a - b
    return a, b

# ✅ Sum of digits
def sum_of_digits(n):
    return sum(int(d) for d in str(n))

# ✅ Check strong number
def is_strong(n):
    factorials = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]
    return n == sum(factorials[int(d)] for d in str(n))

# ✅ Check happy number
def is_happy(n):
    seen = set()
    while n != 1 and n not in seen:
        seen.add(n)
        n = sum(int(d)**2 for d in str(n))
    return n == 1

# ✅ Convert decimal to binary
def decimal_to_binary(n):
    return bin(n)[2:]

# ✅ Count number of digits
def count_digits(n):
    return len(str(abs(n)))