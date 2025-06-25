# ✅ Find maximum & minimum element
def find_min_max(arr):
    return min(arr), max(arr)

# ✅ Find second largest element
def second_largest(arr):
    unique = sorted(set(arr))
    return unique[-2] if len(unique) > 1 else None

# ✅ Find duplicates in array
def find_duplicates(arr):
    seen = set()
    return list(set(x for x in arr if x in seen or seen.add(x)))

# ✅ Remove duplicates from array
def remove_duplicates(arr):
    return list(set(arr))

# ✅ Reverse an array
def reverse_array(arr):
    return arr[::-1]

# ✅ Check if array is sorted
def is_sorted(arr):
    return all(arr[i] <= arr[i+1] for i in range(len(arr)-1))

# ✅ Sort array without built-in (Bubble Sort)
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

# ✅ Find missing number in 1 to N
def missing_number(arr, n):
    return n*(n+1)//2 - sum(arr)

# ✅ Find pair with given sum
def pair_with_sum(arr, target):
    seen = set()
    for num in arr:
        complement = target - num
        if complement in seen:
            return (complement, num)
        seen.add(num)
    return None

# ✅ Find common elements in 2 arrays
def common_elements(arr1, arr2):
    return list(set(arr1) & set(arr2))

# ✅ Left rotate array
def left_rotate(arr, k):
    n = len(arr)
    k %= n
    return arr[k:] + arr[:k]

# ✅ Merge two sorted arrays
def merge_sorted(arr1, arr2):
    merged = []
    i = j = 0
    while i < len(arr1) and j < len(arr2):
        if arr1[i] < arr2[j]:
            merged.append(arr1[i])
            i += 1
        else:
            merged.append(arr2[j])
            j += 1
    merged.extend(arr1[i:] or arr2[j:])
    return merged

# ✅ Find frequency of elements
def element_frequency(arr):
    freq = {}
    for num in arr:
        freq[num] = freq.get(num, 0) + 1
    return freq

# ✅ Find majority element (Boyer-Moore)
def majority_element(arr):
    count = 0
    candidate = None
    for num in arr:
        if count == 0:
            candidate = num
        count += 1 if num == candidate else -1
    return candidate

# ✅ Maximum subarray sum (Kadane's Algorithm)
def max_subarray_sum(arr):
    max_sum = current_sum = arr[0]
    for num in arr[1:]:
        current_sum = max(num, current_sum + num)
        max_sum = max(max_sum, current_sum)
    return max_sum

# ✅ Sort 0s, 1s, and 2s (Dutch Flag)
def dutch_flag_sort(arr):
    low, mid, high = 0, 0, len(arr)-1
    while mid <= high:
        if arr[mid] == 0:
            arr[low], arr[mid] = arr[mid], arr[low]
            low += 1
            mid += 1
        elif arr[mid] == 1:
            mid += 1
        else:
            arr[mid], arr[high] = arr[high], arr[mid]
            high -= 1
    return arr