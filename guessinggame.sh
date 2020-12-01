#!/usr/bin/env bash

correct=0

function guessFileNumber {
    if [[ $1 -eq $(ls | wc -l) ]]
    then
        let correct=1
    fi
}

while [[ $correct -eq 0 ]]
do
    echo "How many files are in the current directory?"
    read num
    guessFileNumber $num
    if [[ $correct -eq 1 ]]
    then
        echo "Congratulations!"
    else
        echo "Incorrect! Please try again."
    fi
done
