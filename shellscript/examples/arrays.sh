# ✅ Find maximum & minimum element
find_min_max() {
  arr=("$@")
  min=${arr[0]}; max=${arr[0]}
  for n in "${arr[@]}"; do
    ((n<min)) && min=$n
    ((n>max)) && max=$n
  done
  echo "Min: $min, Max: $max"
}

# ✅ Reverse an array
reverse_array() {
  arr=("$@")
  for ((i=${#arr[@]}-1;i>=0;i--)); do
    echo -n "${arr[i]} "
  done
  echo
}

# ✅ Remove duplicates from array
remove_duplicates_array() {
  arr=("$@")
  echo "${arr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '
  echo
}

# ✅ Find duplicates in array
find_duplicates_array() {
  arr=("$@")
  echo "${arr[@]}" | tr ' ' '\n' | sort | uniq -d
}

# ✅ Check if array is sorted
is_sorted() {
  arr=("$@")
  for ((i=1;i<${#arr[@]};i++)); do
    if (( arr[i-1] > arr[i] )); then echo "No"; return; fi
  done
  echo "Yes"
}

# ✅ Sort array (Bubble Sort)
bubble_sort() {
  arr=("$@")
  n=${#arr[@]}
  for ((i=0;i<n;i++)); do
    for ((j=0;j<n-i-1;j++)); do
      if (( arr[j] > arr[j+1] )); then
        t=${arr[j]}; arr[j]=${arr[j+1]}; arr[j+1]=$t
      fi
    done
  done
  echo "${arr[@]}"
}