---
title: Transfer File to Cluster
layout: default
images: []
tags: [Login, Setup, File Transfer, Windows, Mac, Linux]
description: A guide to transferring data to and from Spiedie and setting up network drives. 
---


***

***Note: The following steps are only applicable wihle conenctef to the university network. If working off-campus, you must connect first to a SSL VPN. [Click here for more details](ssl_vpn.html)*** 

### Table of Contents 

1. [Using SCP](#SCP)
2. [Using RSYNC](#rsync)
3. [Map Home Directory](#Home_dir)
    * [Windows](#windows_map_home)
    * [Mac](#mac_map_home)
    * [Linux](#linux_map_home)



## <a name="SCP"></a> SCP

***


#### Single File Transfer to Spiedie Cluster

Go to the directory of the file you wish to transfer using your terminal or command prompt and run 

``` bash
scp file.ext <username>@spiedie.binghamton.edu:your/desired/directory 
``` 

Where file.ext is the file you wish to transfer, \<username> is your username, and the path following : is your desired destination directory. 


#### Single File Transfer from Spiedie Cluster


#### Directory Transfer 

``` bash 
scp -r directory <username>@spiedie.binghamton.edu:your/desired/destination
```

## <a name="RSYNC"> </a> RSYNC

Similar to SCP, rsync can also be used to transfer files and folders using the terminal. For large files, rsync is more suitable in case of network connection failure mid transfer. 

``` bash 
rsync file.ext <username>@spiedie.binghamton.edu:your/desired/directory 
```

## <a name= "Home_dir"> </a>Mapping Home Directory

You can map your Spiedie home direcotyry to your file explorer if you wish to use a graphical interface for file transfer 

#### <a name="windows_map_home"> </a> Windows Explorer
1. Open a new windows explorer to PC
2. Click on the computer option on the taskbar and select Map network drive
3. Select folder letter and paste ```\\128.226.74.206\username``` to the folder text field 
4. Make sure to select 'Use different credentials' and click finish
5. Use Spiedie user name and password for your credentials 

#### <a name="linux_map_home"> </a> Linux File System Viewer (Ubuntu)
1. Open a new system files window
2. Click on other locations 
3. Enter ``` smb://128.226.74.206/username``` for the server address, replacing your user name for username and click connect
4. Click on registered users and use your user name and password to mount the network drive 

