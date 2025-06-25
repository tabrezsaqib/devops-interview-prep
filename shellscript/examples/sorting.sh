# ✅ Selection Sort
selection_sort() {
  arr=("$@")
  n=${#arr[@]}
  for ((i=0;i<n-1;i++)); do
    min=$i
    for ((j=i+1;j<n;j++)); do
      (( arr[j] < arr[min] )) && min=$j
    done
    t=${arr[i]}; arr[i]=${arr[min]}; arr[min]=$t
  done
  echo "${arr[@]}"
}