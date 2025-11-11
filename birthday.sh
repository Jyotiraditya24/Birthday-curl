#!/bin/bash
clear

# Rainbow color helper
rainbow() {
  text="$1"
  for ((i=0; i<${#text}; i++)); do
    printf "\e[38;5;$((RANDOM%255))m${text:$i:1}"
  done
  printf "\e[0m\n"
}

# Confetti function
confetti() {
  for i in {1..30}; do
    printf "\e[38;5;$((RANDOM%255))m*\e[0m"
    sleep 0.02
  done
  printf "\n"
}

# Animated cake frames
frames=(
"
     i i i
    =======
   | HAPPY |
   | BIRTH |
   | DAY!  |
    -------"
"
     I I I
    =======
   | HAPPY |
   | BIRTH |
   | DAY!  |
    -------"
)

# Title
if command -v toilet >/dev/null 2>&1; then
  toilet -f smblock "HAPPY BIRTHDAY" | (command -v lolcat >/dev/null 2>&1 && lolcat || cat)
else
  rainbow "HAPPY BIRTHDAY!"
fi

echo ""
sleep 1

# Animation
for i in {1..12}; do
  clear
  confetti
  echo -e "\n${frames[i%2]}"
  sleep 0.25
done

sleep 0.5
echo ""
rainbow "🎂 Make a wish and have an amazing day! 🎂"
echo ""
confetti
sleep 1
