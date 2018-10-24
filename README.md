# WSL ISSUES

Small wiki about known issues on WSL and how to fix them.

## Access Windows file from the wsl terminal

It is possible to access windows files from the terminal.
All Windows files are located on ```/mnt/#{letter_of_the_drive}```
On a default Windows configuration, it'll be ```/mnt/c```

Case: I download an image in my Windows download folder and want to use it in WSL.
I can access it on ```/mnt/c/Users/barangerbenjamin/downloads/image.png```
Where *barangerbenjamin* is my username on Windows

### My Windows file doesn't appear in Sublime

You followed the solution above and the file does not appear in Sublime text?
First step is to restart Sublime Text. The file should appear.

### The file appears but can't be oppened

Now the file appears in Sublime text, but Sublime text can't seems to be able to open it. If the file has been created on Windows, the rights on this file will be Windows rights. You need to set the Linux rights on that file aswell. You can do it like this:
```sudo chmod +xr <file_name.extension>```
Case: My picture appears but Sublime text can't read it:
```sudo chmod +xr my_picture.png```
