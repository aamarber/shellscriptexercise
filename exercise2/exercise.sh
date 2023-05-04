echo "The password should be at least 8 characters long, contains at least one uppercase letter, one lowercase letter and one digit"

uppercasePattern=[A-Z]
lowercasePattern=[a-z]
numberPattern=[0-9]

while [[ $valid != 1 && $again != 'n' ]]
do
    read -p "Input the password:" password

    valid=1
    again=''

    passwordLength=${#password}

    if [[ $passwordLength -lt 8 ]]
    then
        echo "The password '$password' should be at least 8 characters long"
        valid=0
    fi

    if [[ ! $password =~ $uppercasePattern ]]
    then
        echo "The password '$password' does not contain an uppercase letter"
        valid=0
    fi

    if [[ ! $password =~ $lowercasePattern ]]
    then
        echo "The password '$password' does not contain a lowercase letter"
        valid=0
    fi

    if [[ ! $password =~ $numberPattern ]]
    then
        echo "The password '$password' does not contain a digit"
        valid=0
    fi

    if [[ $valid == 1 ]]
    then
        echo 'Valid password!'
        break
    fi

    while [[ $again != 'y' && $again != 'n' ]]
    do
        echo 'You want to try again? y/n'
        read again
    done
done