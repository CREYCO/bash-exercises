Bandit Level 11 → Level 12
Level Goal
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions


cat data.txt | tr '[G-ZA-Fg-za-f]' '[T-ZA-St-za-s]'
The password is 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu

cat data.txt | tr '[G-ZA-Fg-za-f]' '[T-ZA-St-za-s]' | awk 'NF{print $NF}'
5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
