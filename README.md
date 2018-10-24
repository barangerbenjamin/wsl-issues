# WSL ISSUES

Small wiki about known issues on WSL and how to fix them.

## Access Windows file from the wsl terminal

It is possible to access windows files from the terminal.
All Windows files are located on<br/>```/mnt/#{letter_of_the_drive}```<br/>
On a default Windows configuration, it'll be ```/mnt/c```

_Case_: I download an image in my Windows download folder and want to use it in WSL.
I can access it on<br/>```/mnt/c/Users/barangerbenjamin/downloads/image.png```<br/>
Where *barangerbenjamin* is my username on Windows

### My Windows file doesn't appear in Sublime

You followed the solution above and the file does not appear in Sublime text?
First step is to restart Sublime Text. The file should appear.

### The file appears but can't be oppened

Now the file appears in Sublime text, but Sublime text can't seems to be able to open it. If the file has been created on Windows, the rights on this file will be Windows rights. You need to set the Linux rights on that file aswell. You can do it like this:<br/>
```sudo chmod +xr <file_name.extension>```<br/>
_Case_: My picture appears but Sublime text can't read it:<br/>
```sudo chmod +xr my_picture.png```

## Hub browse doesn't work

You get the following error when you try<br/>```hub browse```:<br/>
```Please set $BROWSER to a web launcher to use this command```<br/> The erorr is telling you than you need to set the variable ```BROWSER``` to an browser launcher.

You're using Google Chrome:<br/>
```echo "export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe" >> ~/.zshrc```

You're using Mozilla Firefox:<br/>
```echo "export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe" >> ~/.zshrc```

_IMPORTANT_: Restart your terminal.<br/>
```hub browse``` should now work with the browser of your choice!
