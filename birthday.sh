#!/bin/bash
clear

frames=(
'
      🎀 
     (•‿•)
      /|\
      / \
        🎂
       ────
'
'
      🎀 
     (•‿•)
      /|\
     _/ \
     /  🎂
    /  ────
'
'
      🎀 
     (•‿•)
      /|\
    🔪/ \
     🎂
    ────
'
'
      🎀 
     (•‿•)
      /|\
       |\
    🎂 | 🔪
    ────
'
'
      🎀 
     (•‿•)
      /|\
      / \
     🎂 🍰
    ────
'
)

# Animation loop
for frame in "${frames[@]}"; do
  clear
  echo -e "$frame"
  sleep 0.6
done

echo ""
sleep 0.5
echo "🎉🎂 The cake has been cut! Happy Birthday! 🎂🎉"
sleep 1
echo ""
for i in {1..40}; do
  printf "\e[38;5;$((RANDOM%255))m*\e[0m"
  sleep 0.02
done
echo ""
