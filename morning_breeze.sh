#!/bin/bash
# Author: Vonarian
# License: WTFPL


# Define colors and formatting for maximum dramatic effect
SIMON="\033[1;36mSimon:\033[0m"
PEPE="\033[1;32mPepe (You):\033[0m"
ACTION="\033[1;33m"
RED="\033[1;31m"
RESET="\033[0m"

clear
echo -e "${SIMON} Good morning. Our guest is Pepe Julian Onziema. He is a human rights activist. Thank you for coming in."

# 1: Good morning
while true; do
	echo -n -e "${PEPE} "
	read -e -r input
	# Strip punctuation, convert to lowercase, and trim extra whitespace
	norm=$(echo "$input" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | xargs)

	if [ "$norm" = "good morning" ]; then
		break
	else
		echo -e "\033[3m(Director's whisper: Psst, just say 'Good morning')\033[0m"
	fi
done

# The Legendary Pause and Stare
sleep 1
echo -e "\n${ACTION}(Simon pauses...)${RESET}"
sleep 1.5
echo -e "${RED}      👁️   ___   👁️      ${RESET}"
echo -e "${ACTION}(Simon looks directly into your soul)${RESET}"
sleep 2

echo -e "\n${SIMON} ${RED}Why are you gay?${RESET}"

# 2: Who says I'm gay?
while true; do
	echo -n -e "${PEPE} "
	read -e -r input
	norm=$(echo "$input" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | xargs)

	if [ "$norm" = "who says im gay" ] || [ "$norm" = "who says i am gay" ]; then
		break
	else
		echo -e "\033[3m(Director's whisper: Hit him back with 'Who says I'm gay?')${RESET}"
	fi
done

# 3: You are gay.
sleep 0.5
echo -e "\n${SIMON} ${RED}You are gay.${RESET}"

# 4: I'm not gay.
while true; do
	echo -n -e "${PEPE} "
	read -e -r input
	norm=$(echo "$input" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | xargs)

	if [ "$norm" = "im not gay" ] || [ "$norm" = "i am not gay" ]; then
		break
	else
		echo -e "\033[3m(Director's whisper: Defend yourself! Say 'I'm not gay.')${RESET}"
	fi
done

# 5: The follow-up barrage
sleep 0.5
echo -e "\n${SIMON} You are a transgender? A \"leshbian\"? A homosexual?"

# 6: I am a transgender man.
while true; do
	echo -n -e "${PEPE} "
	read -e -r input
	norm=$(echo "$input" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | xargs)

	# Matching keywords since there might be a sigh beforehand
	if [[ "$norm" == *"transgender man"* ]]; then
		break
	else
		echo -e "\033[3m(Director's whisper: Deep sigh, then say 'I am a transgender man.')${RESET}"
	fi
done

# Conclusion
sleep 1
echo -e "\n${ACTION}(Simon consults his notes...)${RESET}"
sleep 1.5
echo -e "${SIMON} So, you are a \"trans-gender\"?"

# The final boss
sleep 2.5
echo -e "\n\033[1;35m[ * Pastor Martin Ssempa suddenly enters the studio with a grocery bag full of vegetables * ]\033[0m\n"
