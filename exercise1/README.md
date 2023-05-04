# Inception exercise
Write a shell script that:
1. Gets a file name as an argument
    1. If the file name is empty, show by console the message The filename is empty, please input a filename
    2. Read from the input the filename
    3. Go to 1.1 if filename is still empty
2. If the filename does not end with the extension .sh, add it to the file name so it ends with it
3. Create the file (you can use the touch command)
4. Fill the file with the contents of the script that you are writing (you can use the command cat >  and redirect the cat output to the file)
5. If the file is not executable
    1. Show a message saying The file xxx is not executable, changing permissions... where xxx would show the filename
    2. Add execution permissions for everyone (you can use the command chmod ugo+x)
6. Execute the file

The result should be that you start again the execution of the same program that creates a file, fills it up with your script and executes it... again and again. Inception!

Examples of the execution and the expected output:
./exercise.sh
The filename is empty, please input a filename
test
The file test.sh is not executable, changing permissions...
The filename is empty, please input a filename

In the last line if will be executing the script in the file test.sh