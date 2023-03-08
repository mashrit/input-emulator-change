#! /bin/bash

# Mouse stress test

ie=input-emulator
delay=0.01

${ie} start mouse --x-max 1920 --y-max 1080

${ie} mouse move -10000 -10000
${ie} mouse move 960 540

for (( c=1; c<=1000; c++ ))
do
    ${ie} mouse move 100 0
    sleep ${delay}
    ${ie} mouse move 0 100
    sleep ${delay}
    ${ie} mouse move -100 0
    sleep ${delay}
    ${ie} mouse move 0 -100
    sleep ${delay}
done

${ie} stop all
