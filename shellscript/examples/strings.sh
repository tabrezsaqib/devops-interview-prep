# ✅ Reverse a string
reverse_string() {
  echo "$1" | rev
}

# ✅ Check if string is palindrome
is_palindrome() {
  rev_str=$(echo "$1" | rev)
  [ "$1" = "$rev_str" ] && echo "Yes" || echo "No"
}

# ✅ Remove duplicate characters from string
remove_duplicates() {
  echo "$1" | awk -F "" '{for(i=1;i<=NF;i++)if(!a[$i]++)printf $i;print ""}'
}

# ✅ Count vowels and consonants
count_vowels_consonants() {
  s=$(echo "$1" | tr -d ' ')
  vowels=$(echo "$s" | grep -o -i '[aeiou]' | wc -l)
  consonants=$(echo "$s" | grep -o -i '[bcdfghjklmnpqrstvwxyz]' | wc -l)
  echo "Vowels: $vowels, Consonants: $consonants"
}

# ✅ Check if two strings are anagrams
are_anagrams() {
  s1=$(echo "$1" | grep -o . | sort | tr -d '\n')
  s2=$(echo "$2" | grep -o . | sort | tr -d '\n')
  [ "$s1" = "$s2" ] && echo "Yes" || echo "No"
}

# ✅ Find first non-repeating character
first_non_repeating() {
  for ((i=0; i<${#1}; i++)); do
    c="${1:$i:1}"
    if [[ $(grep -o "$c" <<< "$1" | wc -l) -eq 1 ]]; then
      echo "$c"
      return
    fi
  done
  echo "None"
}

# ✅ Count frequency of each character
char_frequency() {
  echo "$1" | grep -o . | sort | uniq -c
}

# ✅ Check if one string is rotation of another
is_rotation() {
  [[ "${2}${2}" == *"$1"* ]] && echo "Yes" || echo "No"
}

# ✅ Replace characters without built-in
replace_chars() {
  s="$1"
  old="$2"
  new="$3"
  echo "${s//${old}/${new}}"
}

# ✅ Check if string has all unique characters
all_unique() {
  s="$1"
  uniq=$(echo "$s" | grep -o . | sort | uniq | tr -d '\n')
  [ "$uniq" = "$(echo "$s" | grep -o . | sort | tr -d '\n')" ] && echo "Yes" || echo "No"
}

# ✅ Longest substring without repeating characters (brute force)
longest_unique_substring() {
  s="$1"
  max=0
  for ((i=0;i<${#s};i++)); do
    sub=""
    for ((j=i;j<${#s};j++)); do
      c="${s:j:1}"
      [[ "$sub" == *"$c"* ]] && break
      sub+="$c"
      [ "${#sub}" -gt "$max" ] && max="${#sub}"
    done
  done
  echo "$max"
}

# ✅ Reverse words in a sentence
reverse_words() {
  for word in $1; do
    rev_word=$(echo "$word" | rev)
    echo -n "$rev_word "
  done
  echo
}

# ✅ Convert string to title case
title_case() {
  echo "$1" | awk '{for(i=1;i<=NF;i++){$i=toupper(substr($i,1,1)) tolower(substr($i,2))}}1'
}
