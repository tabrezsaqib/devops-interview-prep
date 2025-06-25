# ✅ Factorial using recursion
def factorial_recursive(n):
    return 1 if n <= 1 else n * factorial_recursive(n-1)

# ✅ Fibonacci using recursion
def fibonacci_recursive(n):
    return n if n <= 1 else fibonacci_recursive(n-1) + fibonacci_recursive(n-2)

# ✅ Sum of digits using recursion
def sum_digits_recursive(n):
    return 0 if n == 0 else n % 10 + sum_digits_recursive(n//10)

# ✅ Palindrome check using recursion
def is_palindrome_recursive(s):
    if len(s) < 2:
        return True
    if s[0] != s[-1]:
        return False
    return is_palindrome_recursive(s[1:-1])

# ✅ Binary search using recursion
def binary_search_recursive(arr, target, low, high):
    if low > high:
        return -1
    mid = (low + high) // 2
    if arr[mid] == target:
        return mid
    elif arr[mid] < target:
        return binary_search_recursive(arr, target, mid+1, high)
    else:
        return binary_search_recursive(arr, target, low, mid-1)

# ✅ Power of a number using recursion
def power_recursive(base, exp):
    if exp == 0:
        return 1
    return base * power_recursive(base, exp-1)

# ✅ Reverse string using recursion
def reverse_string_recursive(s):
    return s if len(s) == 0 else reverse_string_recursive(s[1:]) + s[0]