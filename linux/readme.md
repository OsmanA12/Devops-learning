# Linux learning

# Linux

## What is Linux?
- An open source operating system originally developed by a man named Linus Torvalds
- Known for security, flexibility and community support
- Backbone of many servers, networks and cloud infrastructures

### Why do you need to learn Linux in the tech world?
- Wildly used in servers, cloud services and networking
- Cost-effective therefore being popular
- Highly customisable

## Different versions of Linux (Linux distributions/distros

Each distribution has its own strengths and is suited to different tasks

## The Terminal


### What is the terminal?
- A command line interface that allows you to interact with your operating systems via commands
- A power tool that allows you to execute commands, run scripts and manage your system efficiently
- Can navigate through your file system, install and configure software and perform a wide range of administrative tasks
- Gives you direct control of your system

## Ubuntu

### What is Ubuntu?
- Ubuntu is a Linux-based operating system
- It’s free, open-source, and made to be easy for beginners
- Works on desktops, laptops, servers and the cloud


### Why is it used?
- Cost-free - no license needed.
- Secure - fewer viruses and strong community support.
- Stable & reliable → trusted for servers and cloud computing.
- Customisable → you can change how it looks and works.
- Great for developers → supports programming, DevOps, AI, and data science tools.

### How to run Ubuntu?
- Install on PC/Laptop
  Download from ubuntu.com
  Create a bootable USB and install it
- Dual Boot
  Keep Windows/Mac and install Ubuntu alongside it
  Choose which system to use when starting your computer
- Virtual Machine (VM)
  Run Ubuntu inside VirtualBox, VMware, or Hyper-V
  Safe way to test it without changing your computer
- WSL (Windows Subsystem for Linux)
  Run Ubuntu inside Windows like an app
  Useful for coding and DevOps
- Cloud
  Use Ubuntu servers on AWS, Azure, or Google Cloud instances

Here I downloaded an Ubuntu server from https://ubuntu.com and manually configured it to create an account under the name ‘Ozzy’.

Once created, I headed over to the terminal and here it is,

**Command:**
`ls`: List directories and files within the server, gives contents of your current machine


**Command:**
`pwd`: Prints the current working directory


**Command:**
`cd`: Changes directory, example cd desktop


**Command:**
`mkdir`: Creates a new directory in the system



**Command:**
`rmdir`: Removes directory within a system


**Command:**
`touch`: Creates a file

**Command:**
`rm`: Removes and deletes files

## Linux Commands

### What are Linux commands?
- Textual instruction that tells the OS what to do
- Can be entered directly in the terminal
- Case sensitive
- Have various options and arguments that can modify their behaviour
- Have instructions via manual

### Manual page

To access the manual page for a command, the terminal will be looking for an argument - for example the argument its giving here is `man man` (gives you the manual page for the `man` command)



Here  when I run `man ls`, it gives me the manual page for the `ls`  command and all the options & arguments I can run with it for specific needs.

## Renting a Virtual Machine from AWS

To rent a VM from AWS, head over to the AWS console and search for EC2. Once in hit launch an instance


### What is EC2?
EC2 is a web service from AWS that provides secure, resizable virtual servers (instances) in the cloud to run applications on demand

(Enter video recording)
Here I configured my EC2 to create my ubuntu server by creating a key pair so I could ssh into it in the future, as well as my instance having an auto-assigned ip.




Once the instance was ready, I used the chmod command to ensure that my key is not publicly viewable and also used the ssh command to connect to my instance.

After doing so, I gained access to my instance.



Here I was exploring the `ls` command further by setting options with it (`ls -a`) to view all directories and creating hiding directories by placing a . at the start of the directory name (`.linux`). 



I navigated back to my “ubuntu” directory using the `cd` command, once I did this - I explored some more new commands.

**Commands:**

`echo`: This command allows you to input information in a file, e.g here I inputted “Hello World” into my hello.txt file

To create a new line of information you can use `echo` (new line of info) >>

`cat`: This commands allows you to create new files but also allows you to read information in a file, e.g here I used it to read my hello.txt file

`grep`: This allows you to find specific information within a file, e.g. here I used it to find the word “hello” in my hello.txt file

## The Shell

### What is the shell?


- A user interface that provides access to the operating system services
- The shell is like a translator that takes our commands and make us do what we want
- A middleman between us and the computer



- Many different types of shells e.g. bash, powershell and more



- To view the specific shell in which you are working in you can use the command in the image above  - here we are working with the bash shell


- All commands in which we used are actually programs within in the shell
- For example the `ls` command is a program written by developer to perform the task of listing directories
- When it’s ran, the shell interprets it by finding the program in the certain directories on the computer which is listed by the PATH Environment variable
- Once it's found, the shell executes the program and the `ls` command lists all the directories



Here are the listed directories that the path environment variable lists for the shell to interpret the desired program. This can be used by the command `echo $PATH`



We can also view the available shells on our system using the cat /etc/shells command which is a text file that contains the full pathname of valid login shells

### ZSH Shell
- A popular shell used by many engineers as it is highly customisable which makes it easier for engineers to operate at will

### How to install ZSH Shell on terminal
- To install ZSH shell run sudo apt-get install zsh this will download all packages for the zsh
- And to switch to the zsh shell, simply run zsh on the terminal


This will prompt you with a continue and once yes is selected it will switch shells

### How to set zsh shell as default shell

- Once zsh is installed via the previous command,to set the zsh shell as default we will need to run the command chsh -s /bin/zsh
- Once this command has been used, we will need to exit the session and rejoin it and as we can see in the above after we echo our shell we can see that it has been permanently changed to zsh

## OhMyZSH

### What is ohmyzsh?
- Ohmyzsh is a very popular and customised zsh framework that allows you to configure your zsh to your own likings
- To Download this follow the official docs on the website
- In this website we can explore different themes and other customisable traits that ohmyzsh offers
https://ohmyz.sh/ 

Here is my configuration on my personal machine



## Linux File System


- The / in front of all directories states that this is from the root directory
- Linux treats everything as a file, including processes and devices - this structure allows for a flexible and powerful way to manage your system


- To navigate to the root directory, run `cd /`
- Once we are in the home directory we can see other directories such as `bin` or `var`


- In the bin directory, we can see executable commands and its binaries within this directory
- For example the command mkdir which makes directories
- Without this directory our commands will not work

## Touch , cat & echo commands
- To dive further with the commands we can see that we can use `echo` to input information into an existing file using the `>` operator
- If we don’t want our content overwritten can use the `>>` and as we can see we still have our previous content


The touch command as we know allows us to create files, but it also allows us to update our file time stamp


As we know `cat` can be used to read file content within a file, but we can also use it to combine content from two files into one using the > command, as we can see in the above


`cat` can also be used to transfer file information from one file to another using `>>` as we can see in the above

## The head & tail command

To test the `head` & `tail` command, i created a file called multiline.txt and inputted the information above using the `vim` command


- The `head` command allows me to view the first few lines of a file, here I used it to view the first 5 lines
- The `tail`  command allows me to view the last few lines of a file, here I used it to view the last 5
- We can also use these two commands together using the | , here I used it to view the 6-10 lines of the file

## The cp, mv & rm commands

**cp command**


The `cp` command is used to copy files and make replicas of it, for example here i copied my multiline.txt file


It can also be used to copy directories, however we will need to use the `-r` option as it is a directory

**mv command**

The `mv` command can be used to rename existing files, here I used it to rename multiline_copy.txt to multiline_backup.txt

The `mv` command can also be used to move files to different directories, here I used it to move multiiline_backup.txt to my_directory and as we can see it has moved it

**rm command**

We can use the `rm` command to remove files, here I used it to remove the multiline_backup.txt file

We can also use the `rm` command to remove directories using the `-r` option, here I used it to remove my_directory and as we can see it has removed it

## The mkdir, rmdir & rm -r commands


- The `mkdir` command is used to make directories, we can also use it to make a lap of directories using the `-p` option
- Here we created project and inside project we created src/components

The `rmdir` command can be used to only remove empty directories, here we can see that project is not an empty directory however components is


The `rm -r` command can be used to remove empty or even directories with content inside, here we remove the project directory as a whole


### How to handle spaces in file/directory names


- When creating directories using the `mkdir` command we can see the if we wanted a space in between our directory name that it will create separate directories,
- We can use “” to specify that we want a space in our directory name

We can also use `\` to create our directory names which contain spaces




## VIM Text editor

### What is vim?
- The `vim` command is a powerful and widely used command that allows you to edit texts in files and more
- Widely used due to its extensive features
- If the file doesn’t exist, `vim` will create it for you 



- Here I ran `vim example.txt` and this created the file example.txt and allowed me to edit the content in the file
- To input my content I pressed i to enter insert mode and inputted my content
- To navigate back to normal I used the **esc** key on my keyboard and to navigate around the file I used:
	**L**: To move right
	**K**:To move down
	**J**:To move up
	**H**:To move left



## The SUDO command




### What is the sudo command?
- Stands for Super User DO
- The sudo command is the command that allows admin access, for example will need it when installing new programming languages or such
- Super user essentially uses the root user
- For example, in the above I tried to `vim` into /etc/hosts but it wouldn’t let me make admits as a non-root user
- When I use `sudo` to do this however, it allows me to perform any action required




## The ROOT user


### What is the root user?
- The root user is practically the host/admin user of the system
- To switch to the root user the command in the above allows this, this might be useful if you want to perform multiple tasks requiring admin access

## A very dangerous command


This command removes everything on the linux system, a very dangerous command

## Creating & managing users


To create new user, we use the above command which will require sudo access

This command assigns a password to the new user

This command allows us to switch to our new user



To add our new user to the admin/sudo group to perform super user permissions, we run the above command


And now we can test that it actually allows our new user to perform  sudo activities 

<img width="791" height="175" alt="Screenshot 2025-10-13 095012" src="https://github.com/user-attachments/assets/807d94f0-93f2-4fd6-9d68-d93e91b942a4" />

We can also read the `root` directory using a sudo user as seen in the above. Also to remove a user from the sudo group we run the command  `sudo deluser newuser sudo`

## Creating & managing groups

<img width="539" height="1750" alt="Screenshot 2025-10-13 095451" src="https://github.com/user-attachments/assets/db8ada16-6016-4cd9-a94d-fcd25faf2603" />


To create a new group, we run the command `sudo groupadd` and as we can see the group we created appears under the groups section

<img width="927" height="196" alt="Screenshot 2025-10-13 100044" src="https://github.com/user-attachments/assets/c4389c07-1475-4338-b65b-55e9de090faf" />

To add a user to a group we run the same command as previously and to verify this we can run the `groups` command 

<img width="927" height="196" alt="Screenshot 2025-10-13 100044" src="https://github.com/user-attachments/assets/dd4cbc2c-e70d-407c-af06-7a6e67f7bd13" />

To remove a user from a group, we run the command `sudo gpasswd -d (username) (groupname)` and we can verify that this works as seen in the above

<img width="582" height="141" alt="Screenshot 2025-10-13 100804" src="https://github.com/user-attachments/assets/106a8e57-5bcb-4d31-accf-79615e9e937b" />

To delete groups we can run the `sudo groupdel (groupname)` and we can confirm this is deleted by using `grep` to find our specific word in our directory

<img width="1052" height="236" alt="Screenshot 2025-10-13 102348" src="https://github.com/user-attachments/assets/aebd5f52-e164-4ec7-a159-93332b1f40f7" />


When creating a new group, it also wouldn't allow you to copy another group name as seen in the above. To add a user to multiple groups in one go, we can separate it using a , while listing the groups as seen in the above


## File permissions

<img width="3762" height="1829" alt="Screenshot 2025-10-13 104720" src="https://github.com/user-attachments/assets/1d203484-4ce9-49b5-9609-f01acc5e1b1d" />


### What are file permissions?
- File permissions control who can read, write and execute files (rwx)
- **r (read)** allows the user to read file content
- **w (write)** allows user to write in different files and modify them
- **x (execute)** allows user to execute the file or run it
- They are segregated into 3 different categories - the user category, group category and other categories

### The user category
- The owner of the file
- Basically the user you are currently logged in as

### The Group category
- The group of users with similar permissions

### The other category
- Represents everyone else, all other users

**This can also be represented in binary, octal and string format**

<img width="2756" height="1232" alt="Screenshot 2025-10-13 125844" src="https://github.com/user-attachments/assets/b0265149-fee3-4f90-b477-d6254456df66" />

- Binary is a set of digits that can in the form 0s & 1s that has a base 2
- Octal is a compact representation using numbers

## CHMOD Calculator

<img width="1187" height="1106" alt="Screenshot 2025-10-13 143202" src="https://github.com/user-attachments/assets/7b370eba-ee7a-4e92-841d-9f5fe410b14a" />

https://chmod-calc-five.vercel.app/

We can use the chmod calculator to calculate the binary or octal required to give our file the correct permissions it needs

<img width="801" height="349" alt="Screenshot 2025-10-13 144441" src="https://github.com/user-attachments/assets/ef076708-bcf5-4548-a931-32c8c1cf386e" />

- Here we created our example.txt file and we can use `ls -l` to show the permissions of the file
- We can see that our permissions here is `rw-r--r--` which means our user got read and write permissions but not executable ones where as our group and other have only read permissions
- We can change the permissions using the `chmod` command and he we allowed our user to have executable permissions `(+x)`, allowed our group to have read permissions `(+r)` and reduce the write permissions for others `(-x)`


<img width="631" height="171" alt="Screenshot 2025-10-13 150440" src="https://github.com/user-attachments/assets/c392035f-0c42-456b-bd54-d7330af9d9b5" />

- We can also use octal to shift our permissions, here we used `750` which has given our user full permissions, given our group read and executable permissions, and took away all permissions for others.

## Small introduction to bash scripting with chmod

<img width="840" height="138" alt="Screenshot 2025-10-13 151723" src="https://github.com/user-attachments/assets/6ebd327e-df96-45de-876b-848bc2f30f94" />


- Here I used `vim set_permissions.sh` which created the file and allowed me to input the above in it
- In this script I wanted to add executable permissions to the user of `example.txt` and want it to display “Permissions changed for example.txt”

<img width="769" height="170" alt="Screenshot 2025-10-13 160435" src="https://github.com/user-attachments/assets/f93043e2-fb09-4762-ae11-3f6b4f88f8c0" />

- When I try to run the script using `./` it would give a permission denied and this is due to the file not having executable permissions
- Once executable permissions are set using `chmod +x` our file is now executable

<img width="567" height="98" alt="Screenshot 2025-10-13 160446" src="https://github.com/user-attachments/assets/16887b57-dec5-41fe-98a3-e6a35d50ee6c" />

- We can now run our script and as we can see in the above it gives us our output

### Grouping permissions

<img width="823" height="232" alt="Screenshot 2025-10-13 160639" src="https://github.com/user-attachments/assets/33af9c46-7428-43e2-ab84-18c99fad8ae2" />

- We can also group permissions for the user, group or other categories using the `= `
- As we can see in the above we gave user and group read and write permissions where as for others we gave them only read

## Changing file/directories ownership for users & groups

<img width="722" height="176" alt="Screenshot 2025-10-14 122657" src="https://github.com/user-attachments/assets/bdafda97-f056-4cf6-8aa5-5eaa9b54bc65" />


- To change user ownership of a file we can use the `chown` command with super user permissions and this will change the ownership of for the user of our file

<img width="739" height="174" alt="Screenshot 2025-10-14 122814" src="https://github.com/user-attachments/assets/0268c6b9-ed4b-4714-9d63-5d21b8f8b346" />

- To change group ownership of our file we can use the `chgrp` command with superuser permissions and this will change the group ownership of our file

<img width="678" height="176" alt="Screenshot 2025-10-14 123332" src="https://github.com/user-attachments/assets/55acbfdb-1acb-422b-b9c6-c167796e2d16" />

- We can also change the user and group ownership using `chown (username):(groupname)` and this will change both in one go

<img width="723" height="204" alt="Screenshot 2025-10-14 123740" src="https://github.com/user-attachments/assets/7db8a8cd-613d-4767-b964-42a51c5157ac" />

- To change the user & group ownership of a directory, we will need to use `chown -R` as we want it to be recursive and as we can see in the above this works


## Standard Streams

### What are standard streams?
- This is the streams that is used between the user and the linux program and what really allow it to function
- Crucial for handling input and output effectively for commands

### Main types of standard streams

<img width="1082" height="477" alt="Screenshot 2025-10-14 125734" src="https://github.com/user-attachments/assets/0d2c144e-9b52-4d19-a9e4-af08f9e70056" />



### Standard Input (stdin)

<img width="604" height="160" alt="Screenshot 2025-10-17 111307" src="https://github.com/user-attachments/assets/6af44a6d-7e35-4c3d-9c99-b8b9bcdadc5c" />

- The stream that provides input to commands
- When you type something in this is what passes it into the linux file system or the program
- For example, in the above when we run the cat command we can see that it is waiting for us to input some information alongside it so it can read and understand what we want
- We can also 


### Standard output(stdout)

<img width="568" height="143" alt="Screenshot 2025-10-17 111730" src="https://github.com/user-attachments/assets/5b7cf140-0b4d-43d6-a841-b11a0e2ac8e1" />


- This is when commands send an output 
- For example when we run `ls` to list content, the results are shown on our terminal
- We can also see in the above that the `echo` command prints out an output to us

### Standard error

<img width="487" height="85" alt="Screenshot 2025-10-17 112122" src="https://github.com/user-attachments/assets/e9cae8ac-a25a-41f1-9cdb-b1c0d4b2fef7" />


- This stream is used for error messages and displays it on the terminal
- For example, in the above when we use `ls` to list the content of a non existent directory, we get an error received

<img width="705" height="56" alt="Screenshot 2025-10-17 112327" src="https://github.com/user-attachments/assets/a483f051-1079-4242-a933-224c16b69815" />

- We can also redirect error messages to file using `2>` as seen in the above


<img width="778" height="155" alt="Screenshot 2025-10-17 112756" src="https://github.com/user-attachments/assets/7d21035a-8371-4e9f-b719-0a855157ce60" />

- We can also redirect error messages and output using `&>` as seen in the above and this prints the error along side with the output

<img width="511" height="24" alt="Screenshot 2025-10-17 113709" src="https://github.com/user-attachments/assets/eb6d535f-ecc9-46cb-b267-68ec19efd183" />

- `/dev/null` is a special file that discards all data written to it, the moment data is transferred to this file it is deleted
- This is where you don’t want to see the content of the error message on your terminal
- This will hide all error messages

<img width="640" height="46" alt="Screenshot 2025-10-17 113800" src="https://github.com/user-attachments/assets/d6c85582-b13d-4497-a5bd-ee6e36f8b05f" />

We can also discard error and output messaging using `&>` directing it to /dev/null


## Environment Variables


<img width="3803" height="1808" alt="Screenshot 2025-10-17 114526" src="https://github.com/user-attachments/assets/fe334b0a-bc19-48fe-9aec-d29035ca2bc3" />


### What are environment variables?
- Dynamic values that affect the way processes behave on a system
- Used to store information such as user preferences, system parts and configuration settings
- Variables that are set in the environment and affect the behaviour of processes on your system
- They store configuration settings and important system information
- Play crucial role in defining the environment in which processes run

<img width="2270" height="571" alt="Screenshot 2025-10-17 114920" src="https://github.com/user-attachments/assets/e5adc2c5-8499-47a6-9335-2a80a330803c" />

- In the above we can see a few examples of different environment variables and what they are

When setting environment variables there are 2 ways to do it

- **Temporary setting**
This is where you set an environment variable using the `export` command and it temporarily sets the environment variable in the terminal session you are currently using

<img width="2184" height="852" alt="Screenshot 2025-10-17 115325" src="https://github.com/user-attachments/assets/c6103363-941d-4dac-8b2a-1532945bf8f7" />


Here is an example of the temporary environment variable `JAVA_HOME` being created using the export command

- **Permanent setting**

<img width="3271" height="1995" alt="Screenshot 2025-10-17 115729" src="https://github.com/user-attachments/assets/676834a3-584b-487e-98c7-28e8a0697fbc" />


When setting a permanent environment variable, it will be stored under our `.bashrc` or `.zshrc` configurations file and we will need to use the `echo` command while setting it under the shel configuration files

<img width="2642" height="646" alt="Screenshot 2025-10-17 121155" src="https://github.com/user-attachments/assets/330fc104-4e94-4676-9c6b-33fdfaae834d" />


We can use the `printenv` command to view the different environment variables in our system

<img width="421" height="87" alt="Screenshot 2025-10-17 121413" src="https://github.com/user-attachments/assets/2a8b09f4-da20-42d8-9181-6173dea2f5c3" />


- We can also view the different environments using `echo$(environment)`
- $ is used to dereference the variable which allows us to access its value


<img width="477" height="70" alt="Screenshot 2025-10-17 121936" src="https://github.com/user-attachments/assets/47380ef0-5e3c-47b1-81b8-20311afbc682" />

Here we created a temporary environment variable with the value “Hello World” and as we can see when we use `echo` on our variable it gives us our output

<img width="867" height="302" alt="Screenshot 2025-10-17 121854" src="https://github.com/user-attachments/assets/e2b6219a-e380-481e-a7b1-3d7b2e43641a" />

- Here we are making a permanent environment variable
- To this we first configure our .bashrc or .zshrc (here it was .bashrc as I am using killacoda) by running the command `vim .bashrc`
- Once entered in, I added my variable using the `export` command and setting my values to it

<img width="420" height="107" alt="Screenshot 2025-10-17 122509" src="https://github.com/user-attachments/assets/5c163dac-1b67-43fc-9ccd-284bc741ef74" />


Once we saved our changes on our config file, we use the `source` command to permanently set it and as we can see it prints the value

### Modifying existing Environment Variables

<img width="1466" height="130" alt="Screenshot 2025-10-17 123755" src="https://github.com/user-attachments/assets/cb03100c-d95f-45d0-9821-ee94dfa0a2b1" />


- To create a new directory which falls under our environment variable we will need to use the `export` command
- In the above we created the directory home/ubuntu and to do this we had to set PATH=$PATH which sets PATH to its current value alongside : which acts as a separator for the directories. Here we created the directory home/ubuntu and we can verify this worked by running echo $PATH

### Making a script which uses environment variables

<img width="545" height="92" alt="Screenshot 2025-10-17 123126" src="https://github.com/user-attachments/assets/2a4ce046-6265-4b9c-b3cd-7690ae90f45d" />

- First I ran the command `vim greet.sh` which created my file and allowed me to configure it
- Then I inserted my script information and this script just greets the user to the host

<img width="467" height="117" alt="Screenshot 2025-10-17 123808" src="https://github.com/user-attachments/assets/efd4cc6e-922a-4526-b392-306b99f4d9f2" />

Once I saved the changes in my file, I added executable permissions to the file and ran the script using `./` and the script gives us a greeting

## Aliases

### What are aliases?
- These are like nicknames for commands and can be very useful as it could save a lot time and boost productivity and inputting commands is being automated with a nickname

<img width="514" height="260" alt="Screenshot 2025-10-17 125831" src="https://github.com/user-attachments/assets/f1c36201-7356-490a-90d5-ad83c1db9fdf" />


We can view our current aliases using the `alias` and here we used `l` which is an alias for  `ls` 

<img width="500" height="22" alt="Screenshot 2025-10-17 130015" src="https://github.com/user-attachments/assets/38f7c207-d4b9-4ecf-85c0-473ec47e17d5" />


- We can set  aliases temporarily by using the command in the above
- Here we set the alias `hello` to the value in the above

<img width="548" height="84" alt="Screenshot 2025-10-17 125758" src="https://github.com/user-attachments/assets/e84dfe30-7083-43ae-ae30-194459fa30b7" />


- To create a permanent alias we can `vim` into our `.bashrc` file and add our alias in
- We also use the `source ~/.bashrc` which basically refreshes the terminal settings without closing it


## Over the wire bandit game

### What is the overthewire bandit game?
This is a game that teaches Linux through SSH-based challenges, where you use commands to find passwords and progress through levels

Each level provides a small clue on where to find the password

## Level 0


To find the password here I used the `cat` command to read the file which gave me the password: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If



## Level 1


To find the password here I used `cat ./` which read the file and gave me the password: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx




## Level 2


I used `cat ./` once again to read the content of the file it and has given me the password: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx



## Level 3


I used `ls -a (directory name)` to show all the hidden content in the `inhere` directory and it showed me the hidden file. I used `cat ./` once again to read the content of the file and the password is: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ



## Level 4

Once again I `cd` into the `inhere` directory and listed all the content of the `file`. Once I was in I used the file command to list all the file types and I can see that `-file07` was the only one in ASCII text so I used `cat` and it gave me the password: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw



## Level 5



First I got in to the `directory` and I used the command `file ./* -size 1033c` which looked in the whole directory for the file with the size of 1033 bites. Once I found the location of this file I confirmed that it had the other attributes by it being human readable and not executable as seen in the below and the password was:HWasnPhtq9AVKe0dmk45nxy20cvUa6EG


## Level 6


Once I entered the server I used the `man find` command to get a documentation on how ti find files owned by specific users and group etc. Once I found out how I ran the command `find / -user bandit7 -group bandit6 -size 33c` however this gave me various error messages. To hide this I used `2>/dev/null` which got rid of all the error messages and gave me the location and the password is: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj



## Level 7



Here I used the `grep` command to find the password and the password is:dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc



## Level 8


Here I used the command `sort` to sort the lines of text in the `data.txt` file and I used the command `uniq -u` alongside it to find out which line is unique and appears once and the password is: 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM


## Level 9


Here I used the `strings` command to find human-readble strings in a file and alongside it I used the `grep` command to get the text that have = in their name and the password is: FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey



## Level 10


Here I used the command `base64` which encoding and decoding of data in base64. Here I used it with the option -d which decodes it and the password is: dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr


## Level 11

