import 'dart:io';

const SIMON = "\x1B[1;36mSimon:\x1B[0m";
const PEPE = "\x1B[1;32mPepe (You):\x1B[0m";
const ACTION = "\x1B[1;33m";
const RED = "\x1B[1;31m";
const PASTA = "\x1B[1;35mPastor Ssempa:\x1B[0m";
const RESET = "\x1B[0m";

void clear() {
  stdout.write("\x1B[H\x1B[J");
}

String normalize(String text) {
  return text.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase().trim();
}

String readInput() {
  stdout.write("$PEPE ");
  return stdin.readLineSync() ?? '';
}

Future<void> sleep(double seconds) async {
  await Future.delayed(Duration(milliseconds: (seconds * 1000).toInt()));
}

void main() async {
  clear();
  print(
    "$SIMON Good morning. Our guest is Pepe Julian Onziema. He is a human rights activist. Thank you for coming in.",
  );

  while (true) {
    var input = normalize(readInput());
    if (input == "good morning") break;
    print("\x1B[3m(Director's whisper: Psst, just say 'Good morning')\x1B[0m");
  }

  await sleep(1);
  print("\n$ACTION(Simon pauses...)$RESET");
  await sleep(1.5);
  print("$RED      👁️   ___   👁️      $RESET");
  print("$ACTION(Simon looks directly into your soul)$RESET");
  await sleep(2);

  print("\n$SIMON ${RED}Why are you gay?$RESET");

  while (true) {
    var input = normalize(readInput());
    if (input == "who says im gay" || input == "who says i am gay") break;
    print(
      "\x1B[3m(Director's whisper: Hit him back with 'Who says I'm gay?')$RESET",
    );
  }

  await sleep(0.5);
  print("\n$SIMON ${RED}You are gay.$RESET");

  while (true) {
    var input = normalize(readInput());
    if (input == "im not gay" || input == "i am not gay") break;
    print(
      "\x1B[3m(Director's whisper: Defend yourself! Say 'I'm not gay.')$RESET",
    );
  }

  await sleep(0.5);
  print("\n$SIMON You are a transgender? A \"leshbian\"? A homosexual?");

  while (true) {
    var input = normalize(readInput());
    if (input.contains("transgender man")) break;
    print(
      "\x1B[3m(Director's whisper: Deep sigh, then say 'I am a transgender man.')$RESET",
    );
  }

  await sleep(1);
  print("\n$ACTION(Simon consults his notes...)$RESET");
  await sleep(1.5);
  print("$SIMON So, you are a \"trans-gender\"?");

  await sleep(2.5);
  print(
    "\n\x1B[1;35m[ * Pastor Martin Ssempa suddenly enters the studio with a grocery bag full of vegetables * ]\x1B[0m\n",
  );
  await sleep(2);

  print("$PASTA Why have you brought a 'leshbian' to this studio?!");
  await sleep(1);
  print("$SIMON Pastor Ssempa, please. He is a human rights activist.");
  await sleep(1);
  print("$PASTA NO! He is a homosex-ual! He is a 'trans-gender'!");
  await sleep(1.5);

  print(
    "\n$ACTION(Ssempa begins aggressively opening his grocery bag...)$RESET",
  );
  await sleep(2);

  print("$PASTA Look at this! ${RED}THIS IS A CUCUMBER!$RESET");

  while (true) {
    var input = normalize(readInput());
    if (input.contains("where did you get")) break;
    print(
      "\x1B[3m(Director's whisper: Ask him the obvious question: 'Where did you get that?')\x1B[0m",
    );
  }

  await sleep(0.5);
  print("$PASTA I got it from the garden!");
  await sleep(1);
  print("$PASTA They use this! They use the banana! They use the carrot!");
  await sleep(1.5);
  print(
    "$PASTA They are confusing our children! It is ${RED}EAT DA POO POO$RESET level of confusion!",
  );
  await sleep(2);

  print("\n$SIMON (Turns to the camera, looking utterly defeated)");
  await sleep(1.5);
  print("$SIMON ${RED}Confusion of the highest order.$RESET");
  await sleep(2);

  print("\n$ACTION[ * FADE TO BLACK * ]$RESET");
  print("$ACTION[ * CREDITS ROLL: Directed by Robert B. Weide * ]$RESET\n");
}
