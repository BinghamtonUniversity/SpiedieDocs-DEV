---
title: How to Connect to Cluster
layout: default
images: []
tags: [Login, Setup, Configuration, Windows, Mac, Linux, New_User]
description: How to log on to Spiedie from your personal computer using various operating systems.
---

***


### Table of Contents  

 1. [Using Windows](#using_windows)  
     * [Install SSH Client \(PuTTY\)](#windows_ssh) 
     * [Connected to University Network](#windows_connect)  
     * [Connected to off-campus Network](#windows_off_campus)  
         * [Installing Pulse Client ](#windows_vpn)
         * [Connect Using SSL VPN and PuTTY](#windows_vpn_connect)
 2. [Using Mac](#using_mac)
     * [Connected to University Network](#mac_connect)  
     * [Connected to off-campus Network](#mac_off_campus)  
         * [Installing Pulse Client ](#mac_vpn)
         * [Connect Using SSL VPN and Terminal](#mac_vpn_connect)
 3. [Using Linux](#using_linux)  
     * [Connected to University Network](#linux_connect)  
     * [Connected to off-campus Network](#linux_off_campus)  
         * [Installing Pulse Client ](#linux_vpn)
         * [Connect Using SSL VPN and Terminal](#linux_vpn_connect)
 4. [Accessing Bright Web Portal](#bright_web)
 5. [X2Go on Spiedie](#x2go)

## <a name="using_windows"></a> Using Windows
***

#### <a name="windows_ssh"> </a>Install a SSH client

First we need to install an ssh client. We will be using <a href="https://www.putty.org" target="_blank">PuTTY</a> for this tutorial. 

<a href="https://www.ssh.com/ssh/putty/windows/install" target="_blank">Follow these instructions to get PuTTY running on your windows machine</a>]
   

#### <a name="windows_connect"> </a>Connect from on-campus network 

***Note: The following steps are only applicable if connected to the university network. If connecting through off-campus internet, follow the instructions in the next subsection***

1. Open a new PuTTY session
2. Type in your *username*@spiedie.binghamton.edu in the Host Name (or IP address) text field 
	
	(Add image of putty terminal to help user)
	(image#1)
	Caption: putty log in
3. Click Open or press enter
4. Type in password (your typed characters will remain hidden on the screen)

 

#### <a name="windows_off_campus"></a>Connect from off-site internet / remote connection 

***Note: Take the following steps if logging in from off-campus***

#### <a name="windows_vpn"></a> Install Pulse Secure VPN

1. Go to [ssl.binghamton.edu](https://ssl.binghamton.edu) and log in using your PODS DOMAIN ID and follow the steps to install Pulse Secure for Windows 

	<!-- (Add image of ssl landing page and circle pulse secure for windows link	) -->

#### <a name="windows_vpn_connect"> </a>Connect using VPN and PuTTY

1. Follow the installation instructions on Pulse Secure for Windows to start a new connection to ssl.binghamton.edu

	(possibly attach the pdf to this site permanently so we can add a hyperlink to the pdf available)
2. Once connected to the VPN, follow the same steps the university network access to log in to Spiedie. 


## <a name="using_mac"> </a> Using Mac

#### <a name="mac_connect"> </a> Connect from on-campus network

1. Open a new terminal window
2. Type in the following command and press enter:
	``` shell
	ssh username@spiedie.binghamton.edu
	```
	replace username with spiedie username
3. type yes and press enter to recognize ssh fingerprint
4. Enter password


***



##  <a name="using_linux"> </a> Using Linux


#### <a name="linux_connect"> </a> Connect from on-campus network

1. Open a new terminal window
2. Type in the following command and press enter:
	``` shell
	ssh username@spiedie.binghamton.edu
	```
	replace username with your Spiedie username
3. type in yes and press enter to recognize ssh fingerprint
4. Enter password


***

## <a name="bright_web"></a> Accessing Bright Web Portal
Spiedie uses the Bright Computing cluster manager. You can also check the status of clusters on a web portal by login in with Spiedie username and password. (Note: This is not the same as your PODS account)

*** [Click here to log into the web portal](https://spiedie.binghamton.edu/userportal/) ***

## <a name="x2go"></a> Accessing Spiedie via X2Go

*** [Click here for a tutorial on how to connect to Spiedie via X2Go] (x2go_spiedie.html)***