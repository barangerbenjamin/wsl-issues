# WSL ISSUES

Small wiki about known issues on WSL and how to fix them.

## Access Windows files from the WSL terminal

It is possible to access Windows files from the terminal.
All Windows files are located on<br/>```/mnt/#{letter_of_the_drive}```<br/>
On a default Windows configuration, it'll be ```/mnt/c```

_Case_: I download an image in my Windows download folder and want to use it in WSL.
I can access it on<br/>```/mnt/c/Users/barangerbenjamin/downloads/image.png```<br/>
Where *barangerbenjamin* is my username on Windows  

To add this image to your project:  
```bash
cp -p /mnt/c/Users/windows_username/downloads/image.png path_to_project_folder/images 
``` 

### My Windows file doesn't appear in Sublime

You followed the solution above and the file does not appear in Sublime text?
First step is to restart Sublime Text. The file should appear.

### The file appears but can't be oppened

Now the file appears in Sublime text, but Sublime text can't seems to be able to open it. If the file has been created on Windows, the rights on this file will be Windows rights. You need to set the Linux rights on that file aswell. You can do it like this:<br/>
```sudo chmod +xrw <file_name.extension>```<br/>
_Case_: My picture appears but Sublime text can't read it:<br/>
```sudo chmod +xrw my_picture.png```

## Access WSL files from Windows

It is possible to access WSL files from Windows. All WSL files are located on<br/>
```C:\Users\your-windows-username\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_...\LocalState\rootfs\home\your-ubuntu-username\code\your-github-username```<br/>
_Case_: I want to open a Windows File explorer to my WSL files, the path will be:
```C:\Users\benjamin\AppData\Local\Packages\CanonicalGroupLimited.UbuntuonWindows_...\LocalState\rootfs\home\bbaranger\code\barangerbenjamin```<br/>
Where ```benjamin``` is my Windows username.<br/>
Where ```bbaranger``` is my WSL username.<br/>
Where ```barangerbenjamin``` is my github username.

:warning: Also, using drag and drop from windows will not set the right on the file for WSL, meaning you'll have to do it manually<br/>
You can do it like so when you have drag and drop your file:
From the WSL terminal<br/>
```chmod +xrw path_of_the_file/file_name.extension```

## Hub browse doesn't work

You get the following error when you try ```hub browse```:<br/>
```Please set $BROWSER to a web launcher to use this command```<br/> The error is telling you than you need to set the variable ```BROWSER``` to an browser launcher.

You're using Google Chrome:<br/>
```echo "export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe" >> ~/.zshrc```

You're using Mozilla Firefox:<br/>
```echo "export BROWSER=/mnt/c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe" >> ~/.zshrc```

:warning:_IMPORTANT_::warning: Restart your terminal.<br/>
```hub browse``` should now work with the browser of your choice!

## Rails - PG::ConnectionBad

You get the following error:<br/>
```PG::ConnectionBad could not connect to server: No such file or directory Is the server running locally and accepting connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?```<br/>
Means you can't ```rails s``` or ```rails db:create``` or ```rails db:drop``` or ```rails db:migrate```<br/>
The error indicates that the ```postgresql``` server is either not running (99% cases) or not accepting any connection.<br/>
Run the following command in WSL terminal: ```sudo service postgresql start``` to start the server.

## Replace Rails' stylesheets by Le Wagon's stylesheets

Go at the root of the rails project:<br/>
```cd```<br/>
```cd code/github_username/rails-project```<br/>
e.g: ```cd code/barangerbenjamin/rails-mister-cocktail```<br/>

Remove the current stylesheets folder:<br/>
```rm -rf app/assets/stylesheets```<br/>

Download Le Wagon custom stylesheets:<br/>
```curl -L https://github.com/lewagon/rails-stylesheets/archive/master.zip > stylesheets.zip```<br/>

Unzip the archive to the app/assets folder:<br/>
```unzip stylesheets.zip -d app/assets && rm -f stylesheets.zip && rm -f app/assets/rails-stylesheets-master/README.md```<br/>

Create a new directory stylesheets:<br/>
```mkdir app/assets/stylesheets```<br/>

Move the download custom stylesheets in the our new folder:<br/>
```mv app/assets/rails-stylesheets-master/* app/assets/stylesheets```<br/>

Check if everything is correct:<br/>
```ls app/assets/stylesheets```<br/>
It should contain 4 folders `components`, `config`, `layouts` and `pages`<br/>
And 1 file `application.scss`<br/>

If everything is correct, you can run:<br/>
`rm -rf app/assets/rails-stylesheets-master`


## Yarn doesn't install

Error look like this when trying to do `sudo apt-get install yarn` ?<br/>
`E: Repository ‘http://dl.google.com/linux/chrome-remote-desktop/deb stable Release’ changed its ‘Origin’ value from ‘Google, Inc.’ to ‘Google LLC’ N: This must be accepted explicitly before updates for this repository can be applied. See apt-secure(8) manpage for details.`<br/>

Easy fix:<br/>
`sudo apt update`<br/>

Install yarn:<br/>
`sudo apt-get-install yarn`<br/>
