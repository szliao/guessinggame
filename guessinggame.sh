#!/usr/bin/env bash

fileNum=$(ls | wc -l)

function guessFileNumber {
    while true
    do
        echo "How many files are in the current directory?"
        read num

        if [[ $num -eq $fileNum ]]
        then
            echo "Congratulations!"
            break
        elif [[ $num -lt $fileNum ]]
        then
            echo "Your guess is too low! Please try again."
        else
            echo "Your guess is too high! Please try again."
        fi
    done
}

guessFileNumber
