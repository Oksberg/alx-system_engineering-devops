#Command_line_for_the_win
This project tests your bash skills from the most basic to the complex. It was an interesting project that challenged me with interesting combinations of various bash commands.

Task 0.
-------
This is a set of the first nine challenges. It asks for the bash commands to do the following:
1. Print "hello world" to sdout.
2. Print the current working directory.
3. List names of all files in the current directory, one per line.
4. Print contents of a file.
5. Print the last 5 lines of contents of a file.
6. Create an empty file.
7. Create a directory in the current working directory.
8. Copy a file the a directory.
9. Move a file to a directory.

Task 1.
-------
This is a set of the next nine challenges. It asks for the bash commands to do the following:
10. Create a symbolic link with a name and a target.
11. Delete all files in a directory recursively.
12. Remove the extension of all files in a directory recursively.
13. Print all lines of the content of a file that contain a specific string.
14. Print just file names of all files in a directory that contain a specific string.
15. Print the relative paths, one per line for all filenames that start with a specified string.
16. Print all matching lines in all files under the current directory that start with a specified string.
17. Extract all IP addresses from files that start with a specified string, one IP address per line.
18. Print the number thats a total count of the number of files in the current working directory.

Task 2.
-------
These next nine challenges complete the last task for the project. It asks for the bash commands to do the following:
19. Print the contents of a file sorted.
20. Print the number of lines in a file that contain a specific string.
21. Split contents of a file using a specified separator one per line.
22. Print a range of numbers separated by spaces.
23. Delete a phrase from all files that have a specific extension recursively.
24. Print the sum of a list of numbers arranged one per line in a file.
25. Print all files in the current directory recursively without the leading directory path.
26. Rename all files removing the extension from them in the current directory recursively.
27. List all of the files (filenames only) in the current directory but replace all spaces in the files with a '.'.

#STEPS FOLLOWED TO USE THE SFTP COMMAND-LINE TOOL.
I configured SSH key authentication to my server by generating an SSH key pair on my local computer.

Step 1. Creating SSH Keys
-------------------------
I used the command "ssh-keygen" to generate a private/public rsa key pair and specified a location to save it.It asked for a passphrase to keep my key pair safe, and I typed in a passphrase. The key pair was saved and I was shown a randomart image for it.

Step 2. Copying an SSH Public Key to my Server
----------------------------------------------
I then displayed the content of my public key by typing this command in my local terminal "cat ~/.ssh/id_rsa.pub" and copied it.
I then opened the terminal of my remote server, created the ssh folder using "mkdir -p ~/.ssh" because it didn't exist. After that I created the "authorized_keys" file and posted the copied public key in it. I could have appended the public key string to the file by usng this command "echo public_key_string >> ~/.ssh/authorized_keys"

Step 3. Authenticating to My Server Using SSH Keys
--------------------------------------------------
I connected to the remote host server using the command "sftp username@remote_host" and pasted its password when it requested it.
Eureka, I now had access to the remote server and could issue commands.

Step 4. Uploading The Screenshots to My Remote Server
-----------------------------------------------------
I navigated to the repository and the directory to upload the files to.
I also changed the current directory on my local machine to the folder containing the files, and used "put *" to upload the files to the target directory.
