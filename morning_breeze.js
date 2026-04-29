const readline = require('readline');

const SIMON = "\x1b[1;36mSimon:\x1b[0m";
const PEPE = "\x1b[1;32mPepe (You):\x1b[0m";
const ACTION = "\x1b[1;33m";
const RED = "\x1b[1;31m";
const PASTA = "\x1b[1;35mPastor Ssempa:\x1b[0m";
const RESET = "\x1b[0m";

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

const sleep = ms => new Promise(r => setTimeout(r, ms));
const clear = () => process.stdout.write('\x1B[2J\x1B[0f');
const normalize = text => text.replace(/[^\w\s]/g, '').toLowerCase().trim();

async function ask(promptText) {
    return new Promise(resolve => {
        rl.question(promptText, resolve);
    });
}

async function main() {
    clear();
    console.log(`${SIMON} Good morning. Our guest is Pepe Julian Onziema. He is a human rights activist. Thank you for coming in.`);

    while (true) {
        const input = normalize(await ask(`${PEPE} `));
        if (input === 'good morning') break;
        console.log("\x1b[3m(Director's whisper: Psst, just say 'Good morning')\x1b[0m");
    }

    await sleep(1000);
    console.log(`\n${ACTION}(Simon pauses...)${RESET}`);
    await sleep(1500);
    console.log(`${RED}      👁️   ___   👁️      ${RESET}`);
    console.log(`${ACTION}(Simon looks directly into your soul)${RESET}`);
    await sleep(2000);

    console.log(`\n${SIMON} ${RED}Why are you gay?${RESET}`);

    while (true) {
        const input = normalize(await ask(`${PEPE} `));
        if (input === 'who says im gay' || input === 'who says i am gay') break;
        console.log(`\x1b[3m(Director's whisper: Hit him back with 'Who says I'm gay?')${RESET}`);
    }

    await sleep(500);
    console.log(`\n${SIMON} ${RED}You are gay.${RESET}`);

    while (true) {
        const input = normalize(await ask(`${PEPE} `));
        if (input === 'im not gay' || input === 'i am not gay') break;
        console.log(`\x1b[3m(Director's whisper: Defend yourself! Say 'I'm not gay.')${RESET}`);
    }

    await sleep(500);
    console.log(`\n${SIMON} You are a transgender? A "leshbian"? A homosexual?`);

    while (true) {
        const input = normalize(await ask(`${PEPE} `));
        if (input.includes('transgender man')) break;
        console.log(`\x1b[3m(Director's whisper: Deep sigh, then say 'I am a transgender man.')${RESET}`);
    }

    await sleep(1000);
    console.log(`\n${ACTION}(Simon consults his notes...)${RESET}`);
    await sleep(1500);
    console.log(`${SIMON} So, you are a "trans-gender"?`);

    await sleep(2500);
    console.log(`\n\x1b[1;35m[ * Pastor Martin Ssempa suddenly enters the studio with a grocery bag full of vegetables * ]\x1b[0m\n`);
    await sleep(2000);

    console.log(`${PASTA} Why have you brought a 'leshbian' to this studio?!`);
    await sleep(1000);
    console.log(`${SIMON} Pastor Ssempa, please. He is a human rights activist.`);
    await sleep(1000);
    console.log(`${PASTA} NO! He is a homosex-ual! He is a 'trans-gender'!`);
    await sleep(1500);

    console.log(`\n${ACTION}(Ssempa begins aggressively opening his grocery bag...)${RESET}`);
    await sleep(2000);

    console.log(`${PASTA} Look at this! ${RED}THIS IS A CUCUMBER!${RESET}`);

    while (true) {
        const input = normalize(await ask(`${PEPE} `));
        if (input.includes('where did you get')) break;
        console.log(`\x1b[3m(Director's whisper: Ask him the obvious question: 'Where did you get that?')\x1b[0m`);
    }

    await sleep(500);
    console.log(`${PASTA} I got it from the garden!`);
    await sleep(1000);
    console.log(`${PASTA} They use this! They use the banana! They use the carrot!`);
    await sleep(1500);
    console.log(`${PASTA} They are confusing our children! It is ${RED}EAT DA POO POO${RESET} level of confusion!`);
    await sleep(2000);

    console.log(`\n${SIMON} (Turns to the camera, looking utterly defeated)`);
    await sleep(1500);
    console.log(`${SIMON} ${RED}Confusion of the highest order.${RESET}`);
    await sleep(2000);

    console.log(`\n${ACTION}[ * FADE TO BLACK * ]${RESET}`);
    console.log(`${ACTION}[ * CREDITS ROLL: Directed by Robert B. Weide * ]${RESET}\n`);

    rl.close();
}

main();
