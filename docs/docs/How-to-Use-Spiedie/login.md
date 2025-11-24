---
title: Logging In
layout: default
images: []
nav_order: 1
nav_exclude: false
tags: [Login, Setup, Configuration, Windows, Mac, Linux, New_User]
description: How to log on to Spiedie from your personal computer using various operating systems.
---

***


### Table of Contents  

 1. [Connected to off-campus Network](#off_campus)
     * [Installing Cisco Secure Client](#vpn)
 3. [Using Windows](#using_windows)  
     * [Install SSH Client \(PuTTY\)](#windows_ssh) 
     * [Connected to University Network](#using_windows)  
 4. [Using Mac](#using_mac)
     * [Connected to University Network](#using_mac) 
 5. [Using Linux](#using_linux)  
     * [Connected to University Network](#using_linux)  
 6. [GUI Sessions](#GUI)
     * [GUI using VMWare Horizon Client](#VMWare)
     * [GUI using X2Go](#x2go)



## <a name="off_campus"></a>Connect from off-site internet / remote connection 

***Note: Take the following steps if logging in from an off-campus network***

### <a name="vpn"></a> Install Cisco Secure Client VPN

1. Follow instructions on [this Binghamton University webpage](https://www.binghamton.edu/its/about/teams/operations-infrastructure/network_administration/connecting_from_off_campus-ssl-vpn/) and log in using your university login. Follow the steps to install Cisco Secure Client and connect to Binghamton's VPN remotely

***


***Note: The following instructions are for when you are on campus. If you are off campus you must be connected through Cisco Secure Client.***




## <a name="using_windows"></a> Using Windows
***

### <a name="windows_ssh"> </a>Install a SSH client

First we need to install an ssh client. We will be using <a href="https://www.putty.org" target="_blank">PuTTY</a> for this tutorial. 

<a href="https://www.ssh.com/ssh/putty/windows/install" target="_blank">Follow these instructions to get PuTTY running on your windows machine</a>
   
1. Open a new PuTTY session
2. Type in your *username*@spiedie.binghamton.edu in the Host Name (or IP address) text field 
	
	<!--- (Add image of putty terminal to help user)
	(image#1)
	Caption: putty log in --->
3. Click Open or press enter
4. Type in the password associated with your Binghamton University accounts (your typed characters will remain hidden on the screen and the cursor will not move)
5. ***Note: Once you have logged in, you can then change your password by using the `passwd` command to change to another <u>secure</u> password***

 



## <a name="using_mac"> </a> Using Mac or Linux <a name="using_linux"> </a>
***

1. Open a new terminal window.
2. Type in the following command and press enter:
	``` shell
	ssh username@spiedie.binghamton.edu
	```
	replace `username` with your Spiedie username
3. If this is your first time connecting, type yes and press enter to recognize the ssh fingerprint.
4. Enter password when prompted.
5. ***Note: Once you have logged in, you can then change your password by using the `passwd` command to change to another <u>secure</u> password***


***
## <a name="GUI"></a> GUI Sessions
***
Spiedie offers two options for working through a GUI session: VMWare Horizon Client, which can be accessed via application or a web session; and X2Go, which requires an application to be installed

### <a name="VMWare"></a> Accessing via VMWare
Spiedie uses the VMWare Horizon Client cluster. You can connect to VMWare Horizon Client through the following steps:
0. If the VMWare Horizon Client application is not installed, visit [watsonview.binghamton.edu](https://watsonview.binghamton.edu) and select the left-most option to install the application. You can continue through HTML access, but this will likely be cumbersome and slow.
1. Open the VMWare Horizon Client application. If this is your first time accessing Spiedie through the Horizon Client, please continue to execute steps 2. and 3. If this is not your first time accessing spiedie through VMWare, please select the "watsonview.binghamton.edu" icon and proceed to step 4.
2. Select the "Add a Server" icon in the horizon client, and enter the server address as "[watsonview.binghamton.edu](https://watsonview.binghamton.edu)".
3. Enter you credentials and one-time password as prompted to access the server. If you are accessing Spiedie via a non-hardline connection to eduroam or off-campus, you may need to be logged into the university's VPN to properly connect.
4. Select "Spiedie" to connect to spiedie virtually. After a brief delay, you should see a Rocky workspace appear. You are now connected to Spiedie.

### <a name="x2go"></a> Accessing Spiedie via X2Go GUI

1. Install the x2go client from [here](https://wiki.x2go.org/doku.php/download:start)
2. Open the client and create a new session
3. Enter a Session Name that makes sense, "Spiedie HPC"
4. Under "Server" for "Host" enter: spiedie.binghamton.edu
5. For Login you can enter your UserName
6. Near the bottom the "Session Type" drop down select "XFCE"
7. Click on the "Media" tab
8. Uncheck "Enable Sound Support"
9. Click "OK"
10. You then can click on the saved session in the right hand pane, enter your password and you'll be connected to a GUI session on Spiedie.