# Password Pattern Checker
Write a shell script that:
1. Tells the user that the password should be at least 8 characters long, contains at least one uppercase letter, one lowercase letter
2. Asks the user to input the password and store it into a variable
3. If the password matches the previous pattern show a message saying "Password is valid" and end the script
4. While the password is not valid:
    1. Specify why is it invalid stating the especific reason for it. For instance if the password has less than 8 characters, show a message like "Password should be at least 8 characters long"
    2. Ask the user if they want to try again (y/n)
        1. If the user enters y go back to step 1
        2. If the user enters n end the script

## Tips
To help you develop the script:
1. To get the length of a string you can use the next syntax:
    string='abcd'
    stringLength=${#string}
    echo $stringlength #it will output4
2. For the upper, lowercase you can use the next regexes:
    [A-Z]
    [a-z]