# WSL ISSUES

Small wiki about known issues on WSL and how to fix them.

## Access Windows file from the wsl terminal

It is possible to access windows files from the terminal.
All Windows files are located on ```/mnt/#{letter_of_the_drive}```
On a default Windows configuration, it'll be ```/mnt/c```

Case: I dowload an image in my Windows download folder and want to use it in WSL.
I can access it on ```/mnt/c/Users/barangerbenjamin/downloads/image.png```
Where *barangerbenjamin* is my username on Windows
