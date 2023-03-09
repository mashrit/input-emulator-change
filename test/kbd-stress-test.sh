#! /bin/bash

# Keyboard stress test

ie=input-emulator

${ie} start --type-delay 0 kbd
${ie} status

for (( c=1; c<=1000; c++ ))
do
   ${ie} kbd key a
   ${ie} kbd key b
   ${ie} kbd key c
   ${ie} kbd type "123"
done

${ie} stop kbd
