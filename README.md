# holberton-system_engineering-devops repository
This repository contains 18 projects:
* [0x00. Shell, basics](./0x00-shell_basics/)
* [0x01. Shell, permissions](./0x01-shell_permissions/)
* [0x02. Shell, I/O Redirections and filters](./0x02-shell_redirections/)
* [0x03. Shell, init files, variables and expansions](./0x03-shell_variables_expansions/)
* [0x04. Loops, conditions and parsing](./0x04-loops_conditions_and_parsing/)
* [0x05. Processes and signals](./0x05-processes_and_signals/)
* [0x06. Regular expression](./0x06-regular_expressions/)
* [0x07. Networking basics #0](./0x07-networking_basics/)
* [0x08. Networking basics #1](./0x08-networking_basics_2/)
* [0x09. Web infrastructure design](./0x09-web_infrastructure_design/)
* [0x0A. Configuration management](./0x0A-configuration_management/)
* [0x0B. SSH](./0x0B-ssh/)
* [0x0C. Web server](./0x0C-web_server/)
* [0x0D. Web stack debugging #0](./0x0D-web_stack_debugging_0/)
* [0x0E. Web stack debugging #1](./0x0E-web_stack_debugging_1/)
* [0x0F. Load balancer](./0x0F-load_balancer/)
* [0x10. HTTPS SSL](./0x10-https_ssl/)
* [Command line for the win](./command_line_for_the_win/) (optional)

## Learning Objectives
### [0x00. Shell, basics](./0x00-shell_basics/)
* What do the commands or built-ins `cd`, `pwd`, `ls` do
* How to navigate the filesystem
* What are the `.` and `..` directories
* What is the working directory, how to print it and how to change it
* What is the `root` directory
* What is the `home` directory, and how to go there
* What is the difference between the `root` directory
and the `home` directory of the user root
* What are the characteristics of hidden files and how to list them
* What does the command `cd -` do
* What do the commands `ls`, `less`, `file` do
* How to use options and arguments with commands
* Understand the `ls` long format and how to display it
* What does the `ln` command do
* What's found in the most common/important directories
* What is a symbolic link
* What is a hard link
* What is the difference between a hard link and a symbolic link

### [0x01. Shell, permissions](./0x01-shell_permissions/)
* What do the commands `chmod`, `sudo`, `su`, `chown`, `chgrp` do
* Linux file permissions
* How to represent each of the three sets of permissions
(owner, group, and other) as a single digit
* How to change permissions, owner and group of a file
* Why can’t a normal user `chown` a file
* How to run a command with root privileges
* How to change the user ID or become superuser
* Other Man Pages
* How to create a user
* How to create a group
* How to print real and effective user and group IDs
* How to print the groups a user is in
* How to print the effective userid

### [0x02. Shell, I/O Redirections and filters](./0x02-shell_redirections/)
* What the commands `head`, `tail`, `find`, `wc`, `sort`, `uniq`, `grep`, `tr` do
* How to redirect standard output to a file
* How to get standard input from a file instead of the keyboard
* How to send the output from one program to the input of another program
* How to combine commands and filters with redirections
* What are special characters
* Understand what do the white spaces, single quotes, double quotes,
backslash, comment, pipe, command separator, tilde and how and when to use them

### [0x03. Shell, init files, variables and expansions](./0x03-shell_variables_expansions/)
* What happens when you type `ls -l *.txt`
* What are the `/etc/profile` file and the `/etc/profile.d` directory
* What is the `~/.bashrc` file
* What is the difference between a local and a global variable
* What is a reserved variable
* How to create, update and delete shell variables
* What are the roles of the following reserved variables: `HOME`, `PATH`, `PS1`
* What are special parameters
* What is the special parameter `$?`
* What is expansion and how to use them
* What is the difference between single and double quotes
and how to use them properly
* How to do command substitution with `$()` and backticks
* How to perform arithmetic operations with the shell
* How to create an alias
* How to list aliases
* How to temporarily disable an alias
* How to execute commands from a file in the current shell

### [0x04. Loops, conditions and parsing](./0x04-loops_conditions_and_parsing/)
* How to create SSH keys
* What is the advantage of using `#!/usr/bin/env bash` over `#!/bin/bash`
* How to use `while`, `until` and `for` loops
* How to use `if`, `else`, `elif` and `case` condition statements
* How to use the `cut` command
* What are files and other comparison operators, and how to use them

### [0x05. Processes and signals](./0x05-processes_and_signals/)
* What is a PID
* What is a process
* How to find a process’ PID
* How to kill a process
* What is a signal
* What are the 2 signals that cannot be ignored

### [0x06. Regular expression](./0x06-regular_expressions/)
* None

### [0x07. Networking basics #0](./0x07-networking_basics/)
* **OSI Model**
	* What it is
	* How many layers it has
	* How it is organized
* **What is a LAN**
	* Typical usage
	* Typical geographical size
* **What is a WAN**
	* Typical usage
	* Typical geographical size
* **What is the Internet**
	* What is an IP address
	* What are the 2 types of IP address
	* What is `localhost`
	* What is a subnet
	* Why IPv6 was created
* **TCP/UDP**
	* What are the 2 mainly used data transfer protocols for IP (transfer level on the OSI schema)
	* What is the main difference between TCP and UDP
	* What is a port
	* Memorize SSH, HTTP and HTTPS port numbers
	* What tool/protocol is often used to check if a device is connected to a network

### [0x08. Networking basics #1](./0x08-networking_basics_2/)
* What is localhost/127.0.0.1
* What is 0.0.0.0
* What is `/etc/hosts`
* How to display your machine’s active network interfaces

### [0x09. Web infrastructure design](./0x09-web_infrastructure_design/)
* You must be able to draw a diagram covering the web stack you built with the sysadmin/devops track projects
* You must be able to explain what each component is doing
* You must be able to explain system redundancy
* Know all the mentioned acronyms: LAMP, SPOF, QPS

### [0x0A. Configuration management](./0x0A-configuration_management/)
* None

### [0x0B. SSH](./0x0B-ssh/)
- What is a server
- Where servers usually live
- What is SSH
- How to create an SSH RSA key pair
- How to connect to a remote host using an SSH RSA key pair
- The advantage of using `#!/usr/bin/env bash` instead of `/bin/bash`

### [0x0C. Web server](./0x0C-web_server/)
- What is the main role of a web server
- What is a child process
- Why web servers usually have a parent process and child processes
- What are the main HTTP requests
- What DNS stands for
- What is DNS main role

### [0x0D. Web stack debugging #0](./0x0D-web_stack_debugging_0/)
- None

### [0x0E. Web stack debugging #1](./0x0E-web_stack_debugging_1/)
- None

### [0x0F. Load balancer](./0x0F-load_balancer/)
- None

### [0x10. HTTPS SSL](./0x10-https_ssl/)
- What is HTTPS SSL 2 main roles
- What is the purpose encrypting traffic
- What SSL termination means

### [Command line for the win](./command_line_for_the_win/)
* None
