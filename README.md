# msmu
Minimalistic *Sonic Music Player

Recently, I installed an Airsonic server to stream music for free. But I didn't find any good
TUI music player for Linux that supports *sonic for my rice (something
like CMus with *sonic support). So I decided to create a very simple one on my own, using
HTTPDirFS, Mpv and Bash. Enjoy!
There is a simple floating picture of the album cover on button-right of the screen (right click to pause/resume, scroll to go back and forward.)
**Msmu is currently at very early development stages and it is not designed for simple users.**

## Install
 1. Clone this repository: ```git clone https://github.com/AmitGoren/msmu.git```.
 2. ```cd msmu```, edit ```src/init.sh``` and put your actuall username, password and server url there.
 3. ```./build.sh```
 4. Copy the file```msmu``` into your bin folder.
You now may want to integrate msmu with your rice.

## Usage/Integration
You should initialize msmu using ```msmu init``` at login. In order to stop msmu (also when
logging out), use ```msmu quit```. Also, you should stop your WM from managing ```mpv``` windows.
I recommend you to bind some of these commands to your keyboard.

### ```msmu append "<song>"```
Add some song to the end of the queue.

### ```msmu current```
Print the current song with the following format:

> artist - album (date) - song

### ```msmu getpid```
Prints the PID of the Mpv proccess (it still returns the latest one also if Mpv is closed)

### ```msmu init```
Initializes msmu

### ```msmu list <artists/albums/songs> [artist]```
Lists all the avilable artists, albums and songs, optionally by a specific artist.

### ```msmu next```
Jump to the next song on the queue

### ```msmu pause```
Pause or resume the current song.

### ```msmu play <song>```
Play a song immediately, stopping current one and deleting the queue.

### ```msmu queue```
Play all the songs in the queue.

### ```msmu quit```
Stop Mpv, delete the queue and umount the server.
