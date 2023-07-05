

#!/bin/bash

y="y"

echo "Which user?"
read user

str="$user"
regex="[a-zA-Z]+"

if grep -q "$user" /etc/passwd; then
    echo "User $user is OK"
elif echo "We will create a new user. OK: y/n?"
then
    read answer
    if [ "$answer" == "$y" ]; then
        sudo useradd -G root $user
    else
    echo "Ok, loh, pnh"

        if [[ $str =~ $regex ]]; then
            echo "Whole match is ${BASH_REMATCH[0]}"
        fi
    fi
fi







