---
title: Useful Linux Commands
layout: default
images: []
tags: [Login, Setup, Configuration]
description: Some useful Linux commands.
---

***


### Table of Contents  

 1. [Exploring Files and Directories](#exploring_directories)
 2. [pwd](#pwd)
 3. [cd](#cd)
 4. [chmod](#chmod)
 5. [cp](#cp)
 6. [mv](#mv)
 7. [rm](#rm)
 8. [more](#more)
 9. [diff](#diff)
 10. [paste](#paste)
 11. [du](#du)
 12. [echo](#echo)
 13. [grep](#grep)
 14. [head](#head)
 15. [tail](#tail)
 16. [wc](#wc)
 17. [history](#history)
 18. [jobs](#jobs)
 19. [kill](#kill)
 20. [mkdir](#mkdir)
 21. [ls](#ls)
 22. [Connectors](#connectors)
 23. [nano](#nano)
 24. [emacs](#emacs)
 25. [vi](#vi)

 

***

<h2 id="exploring_directories" style="background-color:green;color:white">1 - Exploring Files and Directories</h2>

***

### <a name="listing_files_and_directories"></a> 1.1 - Listing Files and Directories

***

#### <a name="ls"></a> ls

The **ls** command (short for list) lists the contents of the current working directory. To find out what is in your current directory, type

```bash
ls
```

You can also provide the **ls** command with a path to some directory, and it will list the files in that directory. You can see this by typing

```bash
ls path/to/dir/
```

By default the ls command only lists the names of folders and directories. It will also only list files which are not prefixed with a dot (**.**), a.k.a hidden files. Getting more information from the **ls** command requires the usage of flags, some common ones are given below.

##### Common Flags
| Syntax | Description |
| ------ | ----------- |
| -F    | distinguishes directories |
| -a    | shows hidden files/directories (written as .file/.dir) |
| -l     | shows detailed information about files |
| -lt     | Same as -l, except sorted by date/time |
| -lth    | same as -lt, but cleaner |

***

### <a id="making_directories"></a> 1.2 - Making Directories

***

#### <a name="mkdir"></a> mkdir 

The **mkdir** command (short for make directory) is used to create subdirectories in your filesystem. This is useful for organizing your workflow and keeping files separated. To make a new subdirectory called learn_unix in you current directory, type

```bash
mkdir learn_unix
```
You can check to see the directory has been created by using the **ls** command.

***

### <a id="changing_directories"></a> 1.3 - Changing Directories

***

#### <a name="cd"></a> cd

The **cd** command (short for change directory) chenges the current working directory to the directory sepcified in the command. To change the current working directory to the one you just created, **learn_unix**, type

``` bash
cd learn_unix
```
If you now type **ls** you will see that this directory is empty.

***

### <a id="._and_.."></a> 1.4 - The Directories (.) and (..)

***

If you havent yet tried using the **-a** flag with the **ls** command, you can do so now in the **learn_unix** directory, type

```bash
ls -a
```

You can see that even though the directory is supposed to be empty, there are two special directories there, (**.**) and (**..**).

#### <a name="current_dir"></a> The current directory (.)

In UNIX, the special directory (**.**) is short for the current directory, so when you type

``` bash
cd .
```
you don't move anywhere in the file system. While this might not be usefule for changing directories, having a shorthand for the current directory will be usefule in many other commands.

#### <a name="parent_dir"></a> The parrent directory (..)

The other special directory (**..**) we see when running **ls -a** is shorthand for the parent or the current directory. Typyng

``` bash
cd ..
```
will move you to one direcctory up in the file system's heirarchy. If you typed this from the **leanr_unix** directory, this will take you to the home directory.

***

### <a id="pathnames"></a> 1.5 - Path Names

***

#### <a name="pwd"></a> pwd

The **pwd** command (stands for print working directory) gives you the full path of your current working directory. This is useful for knowing exactly where you are in your file system. This command will be particularly useful when transferring files to and from the cluster, as those operations will require the full path of the file or directory to be transferred. To get the full path of your home directory, type **cd** if you are not yet in your home directory, then type

``` bash
pwd
```
The path printed by this command is your full path.

#### <a name="tilde"></a> ~ (home directory)

You can reference your home directory anywhere in the file system by using the tilde (**~**) shorthand. So say you move to some directory deep in the heirarchy **cd path/deep/in/the/heirarchy** and you want to list the contents of your home directory. You can do that by typing

``` bash
ls ~
```
Or you can also change to a subdirectory of the home directory using the **cd** command like so

```bash
cd ~/learn_unix
```

***

<h2 id="manipulating_files_directories" style="background-color:green;color:white">2 - Manipulating Files and Directories</h2>

***

### <a name="creating_files"></a> 2.1 - Creating Empty Files

***

#### <a name="touch"></a>  touch

The **touch** command is used to update timestamps on files. Every file in the unix system has timestamp information for each file or folder including access time, modify time and change time. It is possible to modify timestamps using the touch command either to update a timestamp to the current time or to modify it to a date in the past.

If the specified file desnt exist, the **touch** command will create that file and set the access and modification time for the file to the current time. To create a file type

```bash
touch file1
```

***

### <a name="copying_files"></a> 2.2 - Copying  Files

***

#### <a name="cp"></a>  cp

The **cp** command (stands for copy) makes a copy of a file. Say we had some file called **file1** in the current directory, and we wanted to create a copy of this file in the same directory called **file1**, we could achiev this by typing

```bash
cp file1 file2
```
If, for instance, we had some file in our home direcrtory, and we wanted to copy it to our **learn_unix** directory while keeping the same name, we could do this in one of two ways depending on where we are in the file system. If we are in the **home directory**, type

```bash
cp file1 learn_unix/
```
If instead we are currently in the **learn_unix** directory, we would type

```bash
cp ../file1 .
```
or
```bash
cp ~/file1 .
```
Notice the difference in these two commands. In the former we use the (**..**) shorthand to specify that **file1** is located one foler up in the heirarchy. In the latter we use the (**~**) for the home directory, which allows us to acess **file1** regardless of where we are in the file system as long as **file1** is in the home directory.

Also note that in both instances we use the (**.**) shorthand to specify that we are copying the file into our current directory.

***

### <a name="moving_files"></a> 2.3 - Moving  Files

***

#### <a name="mv"></a>  mv

The **mv** command (stands for move) moves a file from one place to another. This differes from the **cp** command in that in the end there is still only one file. If we wanted to move **file1** to **file2** we could type

```bash
mv file1 file2
```

This effectively renames the file frome **file1** to **file2**.

Alternatively, if **file1** is in the home directory and we want to move it to the **learn_unix** directory, we would type

```bash
mv file1 learn_unix/
```
provided we were working from the home directory.

### <a name="removing_files_directories"></a> 2.4 - Removing  Files and Directories

***

#### <a name="rm"></a>  rm

The **rm** command (stands for remove) is used to delete a file or directory. If we has a file called **file1** and we wanted to delete it, we would type

```bash
rm file1
```

The **rm** command also works on directories, however the command differs a little when deleting and empty directory vs. a non-empty directory. To remove an empty directory, **dir1**, type

```bash
rm dir1
```
Now if **dir1** is not empty, we would need to use the **-r** flag. The **-r** flag stands for recursive, and it means "delete this directory and everything in it". So to delete the non-empty directory **dir1**, type

```bash
rm -r dir1
```
***USE CAUTION: REMOVING FILES IN THIS WAY WILL PERMANENTLY DELETE THEM***

***

### <a name="alias"></a> 1. alias

```bash
alias name="command"
```
The alias command created a temporary/easier/shorter name for a command or seires of commands.



## <a name="chmod"></a> 4. chmod

```bash
chmod file1
```
Changes write/read/execute permissions for a file



## <a name="mv"></a> 6. mv

```bash
mv file1 file2
```
Move file1 to file2 (also works with directories). The ```mv``` command can also be used to rename files.

## <a name="rm"></a> 7. rm

```bash
rm file1
```
Deletes file1.

```bash
rm -r dir1
```
Deletes dir1 and all of its contents. Use with caution

``` bash
rmdir dir1
```
Deletes the empty directory dir1

## <a name="more"></a> 8. more

```bash
more file1
```
Display the contents of a file one page at a time.



## <a name="diff"></a> 9. diff

```bash
diff file1
```
Compares two files and displays the differences in the window.

## <a name="paste"></a> 10. paste

```bash
paste file1 file2 ...
```
Displays the contents of file1 and file1 next to eachother line by line. 
you can paste more than two.


## <a name="du"></a> 11. du

```bash
du
```
Displays the disk usage.

## <a name="echo"></a> 12. echo

```bash
echo string
```
Displays the string in the temrinal.

## <a name="grep"></a> 13. grep

```bash
grep string file1
```
Search for string in file1 and displays it in the terminal.

### Common Flags
| Syntax | Description |
| ------ | ----------- |
| -i    | ignore case |
| -c     | displays # of times the string is found |
| -v     | displays all lines except those containing the string |
| -n     | include line numbers where string is found |

## <a name="head"></a> 14. head

```bash
head file1
```
Displays the first 10 lines of file1.

``` bash
head -n file1
```
Displays the first n lines of file1.

## <a name="tail"></a> 15. tail

```bash
tail file1
```
Displays the last 10 lines of file1.

``` bash
tail -n file1
```
Displays the last n lines of file1.

## <a name="wc"></a> 16. wc

```bash
wc file1
```
Counts the lines, words, and characters in file1.

## <a name="history"></a> 17. history

```bash
history
```
Displays a list of the history of the commands.

```bash
!n
```
Repeats the nth command from the history list.

``` bash
!!
```
Repeats the most recent command from the list.

## <a name="jobs"></a> 18. jobs

```bash
jobs
```
Displays the active jobs and their corresponding job numbers.

## <a name="kill"></a> 19. kill

```bash
kill ##
```
Terminate a process by its process identification number ##





## 22. Connectors <a name="connectors"></a>

| Syntax | Description |
| ------ | ----------- |
| `<`    | routes input to comand from file |
| `>`    | routes output of command to file |
| `>>`     | shows detailed information about files |
| `|`   | Same as -l, except sorted by date/time |


# Editors

## <a name="nano"></a> 23. nano

```bash
nano
```
Opens a new nano editor, will save a new file.

```bash
nano file1
```
Opens file1 in the nano editor

## <a name="emacs"></a> 24. emacs

```bash
emacs
```
Opens a new emacs editor, will save a new file.

```bash
emacs file1
```
Opens file1 in the emacs editor

## <a name="vi"></a> 25. vi

```bash
vi
```
Opens a new vi editor, will save a new file.

```bash
vi file1
```
Opens file1 in the vi editor



