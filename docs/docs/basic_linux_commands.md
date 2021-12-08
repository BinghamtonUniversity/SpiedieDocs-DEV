---
title: Useful Linux Commands
layout: default
images: []
tags: [Login, Setup, Configuration, New_User]
description: Some useful Linux commands.
---

***


### Table of Contents  

 1. [alias](#alias)
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

## <a name="alias"></a>1. alias

```bash
alias name="command"
```
The alias command created a temporary/easier/shorter name for a command or seires of commands.

## <a name="pwd"></a> 2. pwd

```bash
pwd
```
Prints the full path of the current working directory.

## <a name="cd"></a> 3. cd

``` bash
cd
```
Changes the current directory to the home directory.

```bash
cd dir1
```
Changes the current directory to path dir1

```bash
cd ..
```
Changes the current directory to parent directory


## <a name="chmod"></a> 4. chmod

```bash
chmod file1
```
Changes write/read/execute permissions for a file

## <a name="cp"></a> 5. cp

```bash
cp file1 file2
```
Copies file1 to file2

```bash
cp -r dir1 dir2
```
Copies dir1 to dir2.

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

## <a name="mkdir"></a> 20. mkdir

```bash
mkdir dir1
```
Creates a new directory called dir1.

## <a name="ls"></a> 21. ls

```bash
ls
```
Lists the files and subdirectories in a directory

### Common Flags
| Syntax | Description |
| ------ | ----------- |
| -F    | distinguishes directories |
| -a    | shows hidden files/directories (written as .file/.dir) |
| -l     | shows detailed information about files |
| -lt     | Same as -l, except sorted by date/time |
| -lth    | same as -lt, but cleaner |


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



