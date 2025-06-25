# ✅ Reverse a string
def reverse_string(s):
    return s[::-1]

# ✅ Check if string is palindrome
def is_palindrome(s):
    s = s.lower().replace(' ', '')
    return s == s[::-1]

# ✅ Remove duplicate characters from string
def remove_duplicates(s):
    seen = set()
    return ''.join(c for c in s if not (c in seen or seen.add(c)))

# ✅ Count vowels and consonants
def count_vowels_consonants(s):
    vowels = 'aeiouAEIOU'
    v_count = sum(1 for c in s if c in vowels)
    c_count = sum(1 for c in s if c.isalpha() and c not in vowels)
    return v_count, c_count

# ✅ Check if two strings are anagrams
def are_anagrams(s1, s2):
    return sorted(s1.lower()) == sorted(s2.lower())

# ✅ Find first non-repeating character
def first_non_repeating(s):
    freq = {}
    for char in s:
        freq[char] = freq.get(char, 0) + 1
    for char in s:
        if freq[char] == 1:
            return char
    return None

# ✅ Count frequency of each character
def char_frequency(s):
    freq = {}
    for char in s:
        freq[char] = freq.get(char, 0) + 1
    return freq

# ✅ Check if one string is rotation of another
def is_rotation(s1, s2):
    return len(s1) == len(s2) and s1 in s2 + s2

# ✅ Replace characters without built-in
def replace_chars(s, old, new):
    result = []
    for char in s:
        result.append(new if char == old else char)
    return ''.join(result)

# ✅ Check if string has all unique characters
def all_unique(s):
    return len(s) == len(set(s))

# ✅ Longest substring without repeating characters
def longest_unique_substring(s):
    start = max_length = 0
    used = {}
    for end, char in enumerate(s):
        if char in used and used[char] >= start:
            start = used[char] + 1
        used[char] = end
        max_length = max(max_length, end - start + 1)
    return max_length

# ✅ Find all permutations of a string
from itertools import permutations
def string_permutations(s):
    return [''.join(p) for p in permutations(s)]

# ✅ Implement custom string reverse without inbuilt
def custom_reverse(s):
    chars = list(s)
    left, right = 0, len(chars)-1
    while left < right:
        chars[left], chars[right] = chars[right], chars[left]
        left += 1
        right -= 1
    return ''.join(chars)

# ✅ Reverse words in a sentence
def reverse_words(sentence):
    words = sentence.split()
    return ' '.join(words[::-1])

# ✅ Convert string to title case
def title_case(s):
    return ' '.join(word.capitalize() for word in s.split())