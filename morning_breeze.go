package main

import (
	"bufio"
	"fmt"
	"os"
	"regexp"
	"strings"
	"time"
)

const (
	SIMON  = "\033[1;36mSimon:\033[0m"
	PEPE   = "\033[1;32mPepe (You):\033[0m"
	ACTION = "\033[1;33m"
	RED    = "\033[1;31m"
	PASTA  = "\033[1;35mPastor Ssempa:\033[0m"
	RESET  = "\033[0m"
)

func clear() {
	fmt.Print("\033[H\033[J")
}

func normalize(text string) string {
	reg := regexp.MustCompile(`[^\w\s]`)
	res := reg.ReplaceAllString(text, "")
	return strings.TrimSpace(strings.ToLower(res))
}

func readInput(reader *bufio.Reader) string {
	fmt.Print(PEPE + " ")
	text, _ := reader.ReadString('\n')
	return text
}

func sleep(seconds float64) {
	time.Sleep(time.Duration(seconds * float64(time.Second)))
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	clear()
	fmt.Println(SIMON + " Good morning. Our guest is Pepe Julian Onziema. He is a human rights activist. Thank you for coming in.")

	for {
		input := normalize(readInput(reader))
		if input == "good morning" {
			break
		}
		fmt.Println("\033[3m(Director's whisper: Psst, just say 'Good morning')\033[0m")
	}

	sleep(1)
	fmt.Println("\n" + ACTION + "(Simon pauses...)" + RESET)
	sleep(1.5)
	fmt.Println(RED + "      👁️   ___   👁️      " + RESET)
	fmt.Println(ACTION + "(Simon looks directly into your soul)" + RESET)
	sleep(2)

	fmt.Println("\n" + SIMON + " " + RED + "Why are you gay?" + RESET)

	for {
		input := normalize(readInput(reader))
		if input == "who says im gay" || input == "who says i am gay" {
			break
		}
		fmt.Println("\033[3m(Director's whisper: Hit him back with 'Who says I'm gay?')" + RESET)
	}

	sleep(0.5)
	fmt.Println("\n" + SIMON + " " + RED + "You are gay." + RESET)

	for {
		input := normalize(readInput(reader))
		if input == "im not gay" || input == "i am not gay" {
			break
		}
		fmt.Println("\033[3m(Director's whisper: Defend yourself! Say 'I'm not gay.')" + RESET)
	}

	sleep(0.5)
	fmt.Println("\n" + SIMON + " You are a transgender? A \"leshbian\"? A homosexual?")

	for {
		input := normalize(readInput(reader))
		if strings.Contains(input, "transgender man") {
			break
		}
		fmt.Println("\033[3m(Director's whisper: Deep sigh, then say 'I am a transgender man.')" + RESET)
	}

	sleep(1)
	fmt.Println("\n" + ACTION + "(Simon consults his notes...)" + RESET)
	sleep(1.5)
	fmt.Println(SIMON + " So, you are a \"trans-gender\"?")

	sleep(2.5)
	fmt.Println("\n\033[1;35m[ * Pastor Martin Ssempa suddenly enters the studio with a grocery bag full of vegetables * ]\033[0m")
	fmt.Println()
	sleep(2)

	fmt.Println(PASTA + " Why have you brought a 'leshbian' to this studio?!")
	sleep(1)
	fmt.Println(SIMON + " Pastor Ssempa, please. He is a human rights activist.")
	sleep(1)
	fmt.Println(PASTA + " NO! He is a homosex-ual! He is a 'trans-gender'!")
	sleep(1.5)

	fmt.Println("\n" + ACTION + "(Ssempa begins aggressively opening his grocery bag...)" + RESET)
	sleep(2)

	fmt.Println(PASTA + " Look at this! " + RED + "THIS IS A CUCUMBER!" + RESET)

	for {
		input := normalize(readInput(reader))
		if strings.Contains(input, "where did you get") {
			break
		}
		fmt.Println("\033[3m(Director's whisper: Ask him the obvious question: 'Where did you get that?')\033[0m")
	}

	sleep(0.5)
	fmt.Println(PASTA + " I got it from the garden!")
	sleep(1)
	fmt.Println(PASTA + " They use this! They use the banana! They use the carrot!")
	sleep(1.5)
	fmt.Println(PASTA + " They are confusing our children! It is " + RED + "EAT DA POO POO" + RESET + " level of confusion!")
	sleep(2)

	fmt.Println("\n" + SIMON + " (Turns to the camera, looking utterly defeated)")
	sleep(1.5)
	fmt.Println(SIMON + " " + RED + "Confusion of the highest order." + RESET)
	sleep(2)

	fmt.Println("\n" + ACTION + "[ * FADE TO BLACK * ]" + RESET)
	fmt.Println(ACTION + "[ * CREDITS ROLL: Directed by Robert B. Weide * ]" + RESET)
	fmt.Println()
}
