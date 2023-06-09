# Inception exercise
Write a shell script that:
1. Gets a file name as an argument
    1. If the file name is empty, show by console the message The filename is empty, please input a filename
    2. Reads from the input the filename
    3. Go to 1.1 if filename is still empty
2. If the filename does not end with the extension .sh, add it to the file name so it ends with it
3. Create the file
4. Fill the file with the contents of the script that you are writing right now

## EXTRA
1. If the file created previously is not executable
    1. Show a message saying The file xxx is not executable, changing permissions... where xxx would show the filename
    2. Add execution permissions for everyone
2. Execute the file

The result should be that you start again the execution of the same program that creates a file, fills it up with your script and executes it... again and again. Inception!

## Example of execution
Examples of the execution and the expected output:
./exercise.sh
The filename is empty, please input a filename
test

And it will create a file test.sh with the contents of your script.

With the extra part:
The file test.sh is not executable, changing permissions...
The filename is empty, please input a filename

In the last line if will be executing the script in the file test.sh

## Tips
1. To check if the file ends with the extension .sh you can use the next regex:
'*.sh'
2. To create a file you can use the touch command
3. To fill the file you can use the command cat >  and redirect the cat output to the file
4. To add execution permissions you can use the command chmod ugo+x