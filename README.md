# Linux_BashScripting
## Fundamentals

A script is a sequence of system commands pasted in a file. It can be made more robust with for loops, conditionals, variables, Arguments and so on. Files containing scripts are usually named with the .sh extension, for example myfile.sh. Editors such as Vim and Nano are used to type create a new file and type commands into a script. After the cmmands have been written ***:wq*** and ***ctrl q*** are used respectively to close the file in the editors. In a script, each new command to be executed must be written on a new line of the text editor

### COMMANDS
1. clear : This command clears the screen
2. comment: Use ***#*** to start a non executed script better known as a comment.
3. pwd : stands for *present working directory*. It shows the current directory where the commands are being run
4. ls : is a listing command. It is used to list the files in a folder.
   ***ls options***: -l, gives extended details about files and directories such as permissins and ownership.
5. mkdir : Used to create a new directory. `mkdir examples`
6. cd : Used to get into or out of a dirctory. `cd examples`
7. touch: Used to create a new file. `touch filename.sh`
8. ./ : This is used to run a script. For example: `./filename.sh` executes the filename.sh file.
9. vi filename.sh : This is used to create and open a bash file called filename with the vim editor. if the filename already exists in the pwd, it simply opens it. `nano filename.sh` is used with a nano editor.
10. echo : used tp display everything written after it as the output. For example: `echo "this is my first script"` would ouput `this is my first script`. Typing only echo outputs an empty line.
### WRITING A SCRIPT
The first line of a script should have the shebang command (#!/bin/bash).
After writing the script and exiting the editor, check if you have the permission to execute the file, then use ./filename.sh on the command line to execute the script.
Scipt example 1: Script to ouput the ls and the pwd command:

```
#!/bin/bash
echo Output of ls command:
ls
echo #this is an empty line 
echo Output of pwd command:
pwd
```

### PERMISSIONS: chmod, chown, chgrp
The permissions are read, write and execute. The permissions on a file are set for the file owner/user, group and others besides the user and group attached to the file. User, groups and others are represented by ***u, g and o*** respectively. The characters in permissions incudes: ***r, w, x*** which stands for ***read, write and execute*** respectively. read permission allows for a file to be viewed, write permission allows for changes to be made to a file while execute permission allows for the script to be run. 

Numbers are also used to represent permissions. read permission - 4, write permission - 2, execute permission -1, read write and execute permissions - 7 (i.e sum of all permissions). The maximum permission is 7.

* **chmod**: is used to change the permissions on a file. Some permission setting commands include:` chmod u+rwx filename.sh` to grant read, write and execute commands to the user only, `chmod a+rwx filename.sh` grants read, write and execute permissions to all i.e user, group and others. `chmod u+r filename.sh` grants only read permission to the user, `chmod ugo+rw` grants read and write permissions to user, group and others and so on. To remove the permissions, use the - (minus) sign. For example, `chmod u-rw filename.sh` removes the read and write permissions on that file from the user.

 Using chmod with number permissions: `chmod 700 filename.sh` grants read, write and execute permissions to only the user. `chmod 674` grants read and write permissions to the user, all permissions to the group and only read permission to others. 

 ### VARIABLES
 * Explicit definition `VAR=value`
 * Read command: takes user inputs and store in a variable `read VAR`
 * Command substitution: `VAR=$(pwd)`
   
**Expicit definition**
`COUNT=5`, `PATH=/var/lib`, `ANIMAL=dog`, `MESSAGE="This is my first script"`. There must not be space around the equal to sign(=) It is conventional to use uppercase letters to represent varaibles.
To access variables, put a dollar sign infront of the variable name. E.g `echo $COUNT`, `echo "path = $PATH`

**Read Command**: for example:
```
echo -n Enter yur name:  #The -n option ensures the user input is on the same ine as the echo output
read NAME
echo "My name is $NAME
```
```
read -p "Your name: " NAME #The -p option enables text and variabe to be executed together
read -sp "Your password: " PASSWORD #The -sp option in addition to what -p does, also prevents user input from being displayed
echo $NAME
echo $PASSWORD
 ```
read command can aso be used to read a file. For example:
```
read HOSTNAME < /etc/hostname
echo HOSTNAME
```
**Command Substitution**

 
