# Rename Computer(append)

Author: Altecheon
Version: 1.0

## Description

Uses a batch file to rename and restart a computer

## Configuration

Configured by three files
File		 | Description																												 
------------ | --------------------------------------------------------------------------------------------------------------------------- 
append.txt   | File used to pass the appended string to the computer name															
password.txt | File used to pass the password to the rename command																		 
user.txt     | (DOMAIN\USERNAME) File used to pass the username to the rename command. Assumed that the domain is the same as current user 

## Requirements

Target name must be a valid computer name, be unlocked and running windows.

## Status

| LED              		| Status                   	 |
| --------------------- | -------------------------- |
| Green           		| Working                  	 |
| White           		| Completed without error  	 |
| Blue (blinking)  		| append.txt was not found 	 |
| Light-Blue (blinking) | user.txt was not found  	 |
| Purple           		| password.txt was not found |


