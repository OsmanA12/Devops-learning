# Linux Overthewire bandit game

# Level 0:

```bash
ssh bandit0@bandit.labs.overthewire.org -p2220

Password for level 0: bandit0

bandit0@bandit:~$ ls
readme

bandit0@bandit:~$ cat readme
```


Congratulations on your first steps into the bandit game!!
Please make sure you have read the rules at https://overthewire.org/rules/
If you are following a course, workshop, walthrough or other educational activity,
please inform the instructor about the rules as well and encourage them to
contribute to the OverTheWire community so we can keep these games free!

The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
bandit0@bandit:~$ exit  


# Level 1:

```bash
ssh bandit1@bandit.labs.overthewire.org -p2220

Password for level 1: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If

bandit1@bandit:~$ pwd
/home/bandit1

bandit1@bandit:~$ ls -l
-rw-r----- 1 bandit2 bandit1 33 Jul 17 15:57 -

bandit1@bandit:~$ cat ./-
263JGJPfgU6LtdEvgfWU1XP5yac29mFx

bandit1@bandit:~$ exit
```

# Level 2:

```bash
ssh bandit2@bandit.labs.overthewire.org -p2220

Password for level 2: 263JGJPfgU6LtdEvgfWU1XP5yac29mFx

bandit2@bandit:~$ ls
spaces in this filename

bandit2@bandit:~$ cat spaces\ in\ this\ filename 
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

bandit2@bandit:~$ exit
```
 

# Level 3:

```bash
ssh bandit3@bandit.labs.overthewire.org -p2220

Password for level 3: MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx

bandit3@bandit:~$ ls -l
total 4
drwxr-xr-x 2 root root 4096 Jul 17 15:57 inhere

bandit3@bandit:~$ cat inhere/
cat: inhere/: Is a directory

bandit3@bandit:~$ man
What manual page do you want?
For example, try 'man man'.

bandit3@bandit:~$ man ls -a
No manual entry for -a

bandit3@bandit:~$ ls -a
.  ..  .bash_logout  .bashrc  inhere  .profile

bandit3@bandit:~$ inhere
inhere: command not found

bandit3@bandit:~$ ls
inhere

bandit3@bandit:~$ cd inhere

bandit3@bandit:~/inhere$ ls

bandit3@bandit:~/inhere$ ls -a
.  ..  ...Hiding-From-You

bandit3@bandit:~/inhere$ cat ...Hiding-From-You 
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

bandit3@bandit:~/inhere$ exit
```


# Level 4:

```bash
ssh bandit4@bandit.labs.overthewire.org -p2220

Password for level 4: 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ

bandit4@bandit:~$ cd inhere

bandit4@bandit:~/inhere$ ls
-file00  -file02  -file04  -file06  -file08
-file01  -file03  -file05  -file07  -file09

bandit4@bandit:~/inhere$ cat
^C

bandit4@bandit:~/inhere$ ./file0*
-bash: ./file0*: No such file or directory

bandit4@bandit:~/inhere$ ./-file0*
-bash: ./-file00: Permission denied

bandit4@bandit:~/inhere$ file ./-file0*
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: data

bandit4@bandit:~/inhere$ cat -file07
cat: invalid option -- 'f' 
Try 'cat --help' for more information.

bandit4@bandit:~/inhere$ cat file07
cat: file07: No such file or directory

bandit4@bandit:~/inhere$ cat ./file07
cat: ./file07: No such file or directory

bandit4@bandit:~/inhere$ cat ./-file07
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

bandit4@bandit:~/inhere$ exit
```


# Level 5:

```bash
ssh bandit5@bandit.labs.overthewire.org -p2220

Password for level 5: 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw

bandit5@bandit:~$ ls -l
total 4
drwxr-x--- 22 root bandit5 4096 Jul 17 15:57 inhere

bandit5@bandit:~$ cd inhere

bandit5@bandit:~/inhere$ ls
maybehere00  maybehere04  maybehere08  maybehere12  maybehere16
maybehere01  maybehere05  maybehere09  maybehere13  maybehere17
maybehere02  maybehere06  maybehere10  maybehere14  maybehere18
maybehere03  maybehere07  maybehere11  maybehere15  maybehere19

bandit5@bandit:~/inhere$ cat inhere
cat: inhere: No such file or directory

bandit5@bandit:~/inhere$ ls -a
.            maybehere03  maybehere08  maybehere13  maybehere18
..           maybehere04  maybehere09  maybehere14  maybehere19
maybehere00  maybehere05  maybehere10  maybehere15
maybehere01  maybehere06  maybehere11  maybehere16
maybehere02  maybehere07  maybehere12  maybehere17

bandit5@bandit:~/inhere$ man find

bandit5@bandit:~/inhere$ find size 1033c
find: ‘size’: No such file or directory
find: ‘1033c’: No such file or directory

bandit5@bandit:~/inhere$ find 1033c
find: ‘1033c’: No such file or directory

bandit5@bandit:~/inhere$ man find

bandit5@bandit:~/inhere$ find -size 1033c
./maybehere07/.file2

bandit5@bandit:~/inhere$ cd ./maybehere07

bandit5@bandit:~/inhere/maybehere07$ cat file2
cat: file2: No such file or directory

bandit5@bandit:~/inhere/maybehere07$ cat -.file2
cat: invalid option -- '.'
Try 'cat --help' for more information.

bandit5@bandit:~/inhere/maybehere07$ cat .file2
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

bandit5@bandit:~/inhere/maybehere07$ exit
```
 

# Level 6:

```bash
ssh bandit6@bandit.labs.overthewire.org -p2220

Password for level 6: HWasnPhtq9AVKe0dmk45nxy20cvUa6EG

bandit6@bandit:~$ man man

bandit6@bandit:~$ man find

bandit6@bandit:~$ find /
find / -type f user bandit7 -group bandit 6 -size 33c
find / -type f - user bandit7 -group bandit 6 -size 33c
find / -type f -user bandit7 -group bandit6 -size 33c

bandit6@bandit:~$ cat /var/lib/dpkg/info/bandit7.password
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj

bandit6@bandit:~$ exit
```


# Level 7:

```bash
ssh bandit7@bandit.labs.overthewire.org -p2220

Password for level 7: morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```


 
