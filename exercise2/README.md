# Password Pattern Checker
Write a shell script that:
1. Tells the user that the password should be at least 8 characters long, contains at least one uppercase letter, one lowercase letter, one digit and one special character (exclamation/question marks, brackets, math signs...)
2. Asks the user to input the password and store it into a variable
3. If the password matches the previous pattern show a message saying "Password is valid" and end the script
4. While the password is not valid:
    1. Specify why is it invalid showing a message like "Password should be at least 8 characters long"
    2. Ask the user if they want to try again (y/n)
        1. If the user enters y go back to step 1
        2. If the user enters n end the script