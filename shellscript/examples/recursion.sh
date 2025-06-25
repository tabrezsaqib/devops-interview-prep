# ✅ Factorial using recursion
factorial_rec() {
  n=$1
  ((n<=1)) && echo 1 && return
  prev=$(factorial_rec $((n-1)))
  echo $((n*prev))
}