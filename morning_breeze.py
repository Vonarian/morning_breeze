import time
import sys
import re

SIMON = "\033[1;36mSimon:\033[0m"
PEPE = "\033[1;32mPepe (You):\033[0m"
ACTION = "\033[1;33m"
RED = "\033[1;31m"
PASTA = "\033[1;35mPastor Ssempa:\033[0m"
RESET = "\033[0m"

def clear():
    print("\033[H\033[J", end="")

def normalize(text):
    return re.sub(r'[^\w\s]', '', text).lower().strip()

def main():
    clear()
    print(f"{SIMON} Good morning. Our guest is Pepe Julian Onziema. He is a human rights activist. Thank you for coming in.")

    # 1: Good morning
    while True:
        try:
            user_input = input(f"{PEPE} ")
            if normalize(user_input) == "good morning":
                break
            else:
                print("\033[3m(Director's whisper: Psst, just say 'Good morning')\033[0m")
        except (KeyboardInterrupt, EOFError):
            sys.exit(0)

    time.sleep(1)
    print(f"\n{ACTION}(Simon pauses...){RESET}")
    time.sleep(1.5)
    print(f"{RED}      👁️   ___   👁️      {RESET}")
    print(f"{ACTION}(Simon looks directly into your soul){RESET}")
    time.sleep(2)

    print(f"\n{SIMON} {RED}Why are you gay?{RESET}")

    # 2: Who says I'm gay?
    while True:
        try:
            user_input = input(f"{PEPE} ")
            norm = normalize(user_input)
            if norm in ["who says im gay", "who says i am gay"]:
                break
            else:
                print(f"\033[3m(Director's whisper: Hit him back with 'Who says I'm gay?'){RESET}")
        except (KeyboardInterrupt, EOFError):
            sys.exit(0)

    time.sleep(0.5)
    print(f"\n{SIMON} {RED}You are gay.{RESET}")

    # 4: I'm not gay.
    while True:
        try:
            user_input = input(f"{PEPE} ")
            norm = normalize(user_input)
            if norm in ["im not gay", "i am not gay"]:
                break
            else:
                print(f"\033[3m(Director's whisper: Defend yourself! Say 'I'm not gay.'){RESET}")
        except (KeyboardInterrupt, EOFError):
            sys.exit(0)

    time.sleep(0.5)
    print(f"\n{SIMON} You are a transgender? A \"leshbian\"? A homosexual?")

    # 6: I am a transgender man.
    while True:
        try:
            user_input = input(f"{PEPE} ")
            norm = normalize(user_input)
            if "transgender man" in norm:
                break
            else:
                print(f"\033[3m(Director's whisper: Deep sigh, then say 'I am a transgender man.'){RESET}")
        except (KeyboardInterrupt, EOFError):
            sys.exit(0)

    time.sleep(1)
    print(f"\n{ACTION}(Simon consults his notes...){RESET}")
    time.sleep(1.5)
    print(f"{SIMON} So, you are a \"trans-gender\"?")

    time.sleep(2.5)
    print("\n\033[1;35m[ * Pastor Martin Ssempa suddenly enters the studio with a grocery bag full of vegetables * ]\033[0m\n")
    time.sleep(2)

    print(f"{PASTA} Why have you brought a 'leshbian' to this studio?!")
    time.sleep(1)
    print(f"{SIMON} Pastor Ssempa, please. He is a human rights activist.")
    time.sleep(1)
    print(f"{PASTA} NO! He is a homosex-ual! He is a 'trans-gender'!")
    time.sleep(1.5)

    print(f"\n{ACTION}(Ssempa begins aggressively opening his grocery bag...){RESET}")
    time.sleep(2)

    print(f"{PASTA} Look at this! {RED}THIS IS A CUCUMBER!{RESET}")

    # 7: Where did you get that?
    while True:
        try:
            user_input = input(f"{PEPE} ")
            norm = normalize(user_input)
            if "where did you get" in norm:
                break
            else:
                print("\033[3m(Director's whisper: Ask him the obvious question: 'Where did you get that?')\033[0m")
        except (KeyboardInterrupt, EOFError):
            sys.exit(0)

    time.sleep(0.5)
    print(f"{PASTA} I got it from the garden!")
    time.sleep(1)
    print(f"{PASTA} They use this! They use the banana! They use the carrot!")
    time.sleep(1.5)
    print(f"{PASTA} They are confusing our children! It is {RED}EAT DA POO POO{RESET} level of confusion!")
    time.sleep(2)

    print(f"\n{SIMON} (Turns to the camera, looking utterly defeated)")
    time.sleep(1.5)
    print(f"{SIMON} {RED}Confusion of the highest order.{RESET}")
    time.sleep(2)

    print(f"\n{ACTION}[ * FADE TO BLACK * ]{RESET}")
    print(f"{ACTION}[ * CREDITS ROLL: Directed by Robert B. Weide * ]{RESET}\n")

if __name__ == "__main__":
    main()
