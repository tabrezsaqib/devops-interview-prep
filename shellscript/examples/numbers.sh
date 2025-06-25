# ✅ Check if number is prime
is_prime() {
  n=$1
  if (( n <= 1 )); then echo "No"; return; fi
  for ((i=2;i*i<=n;i++)); do
    if (( n%i==0 )); then echo "No"; return; fi
  done
  echo "Yes"
}

# ✅ Generate N prime numbers
generate_primes() {
  count=0; n=2; N=$1
  while (( count < N )); do
    if [[ $(is_prime $n) == "Yes" ]]; then
      echo -n "$n "
      ((count++))
    fi
    ((n++))
  done
  echo
}

# ✅ Factorial (iterative)
factorial() {
  n=$1; res=1
  for ((i=2;i<=n;i++)); do
    ((res*=i))
  done
  echo "$res"
}

# ✅ Check Armstrong number (3-digit)
is_armstrong() {
  n=$1; sum=0; temp=$n
  while ((temp>0)); do
    d=$((temp%10))
    ((sum+=d*d*d))
    ((temp/=10))
  done
  [[ $sum -eq $n ]] && echo "Yes" || echo "No"
}

# ✅ Check perfect number
is_perfect() {
  n=$1; sum=0
  for ((i=1;i<n;i++)); do
    ((n%i==0)) && ((sum+=i))
  done
  [[ $sum -eq $n ]] && echo "Yes" || echo "No"
}

# ✅ Reverse a number
reverse_number() {
  n=$1; rev=0
  while ((n>0)); do
    rev=$((rev*10 + n%10))
    n=$((n/10))
  done
  echo "$rev"
}

# ✅ Find GCD (Euclid's Algorithm)
gcd() {
  a=$1; b=$2
  while ((b!=0)); do
    t=$b; b=$((a%b)); a=$t
  done
  echo "$a"
}

# ✅ Find LCM
lcm() {
  a=$1; b=$2
  gcd_val=$(gcd $a $b)
  echo $((a*b/gcd_val))
}

# ✅ Swap two numbers without third variable
swap_numbers() {
  a=$1; b=$2
  a=$((a+b)); b=$((a-b)); a=$((a-b))
  echo "$a $b"
}

# ✅ Sum of digits
sum_of_digits() {
  n=$1; sum=0
  while ((n>0)); do
    sum=$((sum+n%10))
    n=$((n/10))
  done
  echo "$sum"
}

# ✅ Convert decimal to binary
decimal_to_binary() {
  n=$1; bin=""
  while ((n>0)); do
    bin=$((n%2))$bin
    n=$((n/2))
  done
  echo "$bin"
}

# ✅ Count number of digits
count_digits() {
  n=$1; echo "${#n}"
}