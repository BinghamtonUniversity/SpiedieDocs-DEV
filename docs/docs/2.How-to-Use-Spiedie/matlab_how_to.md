---
title: MATLAB on Spiedie
layout: default
images: []
nav_order: 11
nav_exclude: false
tags: [Login, Setup, Configuration, Remote Access, MATLAB]
description: How to set up MATLAB remote session on Spiedie
---

There are two main pathways to submitting parallel Matlab calculations on Spiedie: Accessing MATLAB on Spiedie and submitting jobs directly, or using a local copy of MATLAB with the parallel computing toolbox to access Spiedie's Cluster Profile (requires accessing Binghamton's network via hardline connection, eduroam, or the university's VPN).

# Submit Calculations on Spiedie

## Opening MATLAB on Spiedie

### GUI Through VMWare Horizon Client (Application)

0. If the VMWare Horizon Client application is not installed, visit [watsonview.binghamton.edu](https://watsonview.binghamton.edu) and select the left-most option to install the application.
1. Open the VMWare Horizon Client application. If this is your first time accessing Spiedie through the Horizon Client, please continue to execute steps 2. and 3. If this is not your first time accessing spiedie through VMWare, please select the "watsonview.binghamton.edu" icon and proceed to step 4.
2. Select the "Add a Server" icon in the horizon client, and enter the server address as "[watsonview.binghamton.edu](https://watsonview.binghamton.edu)".
3. Enter you credentials and one-time password as prompted to access the server. If you are accessing Spiedie via a non-hardline connection to eduroam or off-campus, you may need to be logged into the university's VPN to properly connect.
4. Select "Spiedie" to connect to spiedie virtually. After a brief delay, you should see a Rocky workspace appear. You are now connected to Spiedie.
5. Navigate to the top left corner and click "Applications." Select the "Terminal" app from the Utilities section, which should open a terminal session.
6. Load the MATLAB module by executing the following command

```plaintext
module load MATLAB
```

7. Follow by running the

```plaintext
matlab
```

command to open a MATLAB GUI session.

### GUI Through VMWare Browser Access

1. Visit [watsonview.binghamton.edu](https://watsonview.binghamton.edu).
2. Select the right-most option for "VMware Horizon HTML Access"
3. Login using your Binghamton University user ID as well as your Binghamton One-Time-Password (OTP). You will then be prompted to enter your password.
4. Select the "Spiedie" icon from the list of available connections. After a brief delay, you should see a Rocky workspace appear. You are now connected to Spiedie.
5. Navigate to the top left corner and click "Applications." Select the "Terminal" app from the Utilities section, which should open a terminal session.
6. Load the MATLAB module by executing the following command

```plaintext
module load MATLAB
```

7. Follow by running the

```plaintext
matlab
```

command to open a MATLAB GUI session

### Command Line Interface Through SSH

1. Open your favorite command line interface (such as PowerShell, PuTTY, iTerm2, or terminal)
2. Connect to Spiedie via SSH. if you don't know how to do this, please visit the relevant tutorials at [spiediedocs.binghamton.edu](https://spiediedocs.binghamton.edu).
3. Load the MATLAB module by executing the following command:

```plaintext
module load MATLAB
```

4. Follow by running the 

```plaintext
matlab -nodisplay
```

command to open a command-line interface (CLI) to MATLAB on Spiedie.


### GUI Through SSH with X11 forwarding (not recommended)

0. Make sure you have your favorite X11 forwarding software installed and enabled.
1. Open your favorite command line interface (such as PowerShell, PuTTY, iTerm2, or terminal)
2. Connect to Spiedie via SSH -X user@spieie.binghamton.edu
3. Load the MATLAB module by executing the following command:

```plaintext
module load MATLAB
```

4. Follow by running the 

```plaintext
matlab
```

## Configuring MATLAB options on Spiedie

###What is a Cluster Profile?

In order to retrieve and change certain variables or options associated with parallel computing with Matlab on the Spiedie cluster, you must make use of what is known as a "cluster profile". If you are in a GUI session, you can view cluster profile information by navigating to Home and select the "Parallel" dropdown frome the Environment subheading. Click on "Create and Manage clusters."

If in CLI, you can run the following to view all available cluster profiles by running

```plaintext
parallel.listProfiles
```
You can subsequently run 

```plaintext
c=parcluster("cluster_profile")
```
to view all information for *cluster_profile*, which should be replaced with your chosen profile.

Each user will by default have the "Processes" cluster profile available; this corresponds to jobs running on the headnode. __Note that parallelization is difficult, problematic, and extremely cumbersome to other users for even mid-sized calculations__. For this reason, *please* avoid running large or massively-parallel calculations with the "Processes" cluster profile. 

### Connecting to Spiedie Cluster Compute Nodes through GUI

To access the compute nodes of Spiedie for parallel computing, you must import or discover Spiedie's cluster profile. The best way to access this cluster profile is to select "Import" from Matlab's previously-described "Create and Manange Profiles" window. Upon selecting "import", a file selector will appear. Navigate to */opt/ohpc/pub/apps/MATLAB/matlab-parallel-slurm-plugin/discover/* and select the *spiedie.conf* file, then press "open".

With this cluster profile now imported, you can move to the "validate" tab and click the "Validate" button at the very bottom. If all tests pass, then you are all set up to write and submit parallel matlab scripts using the Spiedie cluster profile!

### Connecting to Spiedie Cluster Compute Nodes through CLI

From the CLI session of Matlab, you can run the following to connect to and validate access to compute nodes:

```plaintext
SpiedieProfile = parallel.importProfile('/opt/ohpc/pub/apps/MATLAB/matlab-parallel-slurm-plugin/discover/spiedie.conf')
c = parcluster(SpiedieProfile)
parallel.validateProfile(SpiedieProfile)
```

You can then continue to use this cluster for creating jobs or running parallel scripts and code.

#### Cluster connection fails

Check connection to the internet. If issues persist, edit the Spiedie Cluster properties (lower button on the "Properties" tab) and change the JobStorageLocation to the subdirectory in your home directory that you wish to house MATLAB job files. If issues persist, please contact the cluster administrator.

#### Job Test Fails

Please preserve errors, logs, and other materials that will help diagnose the problem and contact the cluster administrator, Phil Valenta.
