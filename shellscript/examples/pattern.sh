# ✅ Pyramid
pyramid() {
  n=$1
  for ((i=1;i<=n;i++)); do
    printf "%*s" $((n-i+1)) ""
    for ((j=1;j<=2*i-1;j++)); do printf "*"; done
    echo
  done
}

# ✅ Hollow Square
hollow_square() {
  n=$1
  for ((i=1;i<=n;i++)); do
    for ((j=1;j<=n;j++)); do
      if ((i==1 || i==n || j==1 || j==n)); then
        printf "*"
      else
        printf " "
      fi
    done
    echo
  done
}