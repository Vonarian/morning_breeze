@echo off
setlocal EnableDelayedExpansion

:: Define colors and formatting for maximum dramatic effect (requires Windows 10+)
set "SIMON=[1;36mSimon:[0m"
set "PEPE=[1;32mPepe (You):[0m"
set "ACTION=[1;33m"
set "RED=[1;31m"
set "PASTA=[1;35mPastor Ssempa:[0m"
set "RESET=[0m"

cls
echo !SIMON! Good morning. Our guest is Pepe Julian Onziema. He is a human rights activist. Thank you for coming in.

:loop1
set /p "input=!PEPE! "
:: Simple case-insensitive match
set "input=!input: '=!"
set "input=!input:?=!"
set "input=!input:.=!"
if /I "!input!"=="good morning" goto :continue1
echo [3m(Director's whisper: Psst, just say 'Good morning')[0m
goto :loop1

:continue1
timeout /t 1 >nul
echo.
echo !ACTION!(Simon pauses...)!RESET!
timeout /t 2 >nul
echo !RED!      👁️   ___   👁️      !RESET!
echo !ACTION!(Simon looks directly into your soul)!RESET!
timeout /t 2 >nul

echo.
echo !SIMON! !RED!Why are you gay?!RESET!

:loop2
set /p "input=!PEPE! "
set "input=!input: '=!"
set "input=!input:?=!"
set "input=!input:.=!"
if /I "!input!"=="who says im gay" goto :continue2
if /I "!input!"=="who says i am gay" goto :continue2
echo [3m(Director's whisper: Hit him back with 'Who says I'm gay?')!RESET!
goto :loop2

:continue2
timeout /t 1 >nul
echo.
echo !SIMON! !RED!You are gay.!RESET!

:loop3
set /p "input=!PEPE! "
set "input=!input: '=!"
set "input=!input:?=!"
set "input=!input:.=!"
if /I "!input!"=="im not gay" goto :continue3
if /I "!input!"=="i am not gay" goto :continue3
echo [3m(Director's whisper: Defend yourself! Say 'I'm not gay.')!RESET!
goto :loop3

:continue3
timeout /t 1 >nul
echo.
echo !SIMON! You are a transgender? A "leshbian"? A homosexual?

:loop4
set /p "input=!PEPE! "
set "input=!input: '=!"
set "input=!input:?=!"
set "input=!input:.=!"
echo !input! | findstr /i "transgender man" >nul
if !errorlevel! equ 0 goto :continue4
echo [3m(Director's whisper: Deep sigh, then say 'I am a transgender man.')!RESET!
goto :loop4

:continue4
timeout /t 1 >nul
echo.
echo !ACTION!(Simon consults his notes...)!RESET!
timeout /t 2 >nul
echo !SIMON! So, you are a "trans-gender"?

timeout /t 3 >nul
echo.
echo [1;35m[ * Pastor Martin Ssempa suddenly enters the studio with a grocery bag full of vegetables * ][0m
echo.
timeout /t 2 >nul

echo !PASTA! Why have you brought a 'leshbian' to this studio?!
timeout /t 1 >nul
echo !SIMON! Pastor Ssempa, please. He is a human rights activist.
timeout /t 1 >nul
echo !PASTA! NO! He is a homosex-ual! He is a 'trans-gender'!
timeout /t 2 >nul

echo.
echo !ACTION!(Ssempa begins aggressively opening his grocery bag...)!RESET!
timeout /t 2 >nul

echo !PASTA! Look at this! !RED!THIS IS A CUCUMBER!!RESET!

:loop5
set /p "input=!PEPE! "
echo !input! | findstr /i "where did you get" >nul
if !errorlevel! equ 0 goto :continue5
echo [3m(Director's whisper: Ask him the obvious question: 'Where did you get that?')[0m
goto :loop5

:continue5
timeout /t 1 >nul
echo !PASTA! I got it from the garden!
timeout /t 1 >nul
echo !PASTA! They use this! They use the banana! They use the carrot!
timeout /t 2 >nul
echo !PASTA! They are confusing our children! It is !RED!EAT DA POO POO!RESET! level of confusion!
timeout /t 2 >nul

echo.
echo !SIMON! (Turns to the camera, looking utterly defeated)
timeout /t 2 >nul
echo !SIMON! !RED!Confusion of the highest order.!RESET!
timeout /t 2 >nul

echo.
echo !ACTION![ * FADE TO BLACK * ]!RESET!
echo !ACTION![ * CREDITS ROLL: Directed by Robert B. Weide * ]!RESET!
echo.
