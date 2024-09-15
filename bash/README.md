# Bash Game Arena 🏟️

# Level 1

Mission: Create a directory named Arena and then inside it create three files: warrior.txt mage.txt archer.txt
List the contents of the Arena directory

```bash
mkdir arena
cd arena
touch warrior.txt mage.txt archer.txt
ls
warrior.txt mage.txt archer.txt
```
# Level 2

Mission: Create a script that outputs the numbers 1 to 10, one number per line.

```bash
vim l2
#!/bin/bash

count=1

while [ $count -le 10 ]
do
  echo "$count"
  ((count++))
done

chmod +x l2
./l2
1
2
3
4
5
6
7
8
9
10
```

# Level 3

Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. If it does, print Hero found!; otherwise, print Hero missing!.

```bash
vim l3

#!/bin/bash

cd arena
file=hero.txt

if
    [[ -f "$file" ]]
then
    echo "Hero found!"
else
    echo "Hero missing!"
fi
```

# Level 4

Mission: Create a script that copies all .txt files from the Arena directory to a new directory called Backup.

```bash
#!/bin/bash

mkdir backup

cp arena/*.txt backup/
```

# Level 5 (Boss level)

Mission: Combine what you've learned! Write a script that:
1. Creates a directory names 'Battlefield'
2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
4. List the contents of both Battlefield and Archive.

```bash
#!/bin/bash
dir1="battlefield"
dir2="archive"
mkdir $dir1
mkdir $dir2
cd $dir1

touch knight.txt sorcerer.txt rogue.txt

file="knight.txt"
if 
    [[ -f "$file" ]]
then 
    mv $file $dir2
fi

cd $dir1
ls

cd $dir2
ls
```


