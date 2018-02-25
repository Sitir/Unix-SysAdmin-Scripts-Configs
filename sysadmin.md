**ctrl +s**  
>supspend terminal 

**ctrl +q** 
>rerun suspdened terminal



**&**
>added at the end of command give us back terminal and run command in background.

**nohup** 		
>allows the background process to continue running
even after the user logs out (or exits the initiating shell).


**pgrep** 	
>find by short name or id ex pgreg -f {name}
** pgrep**  	
>with -fl show us fullname 

>to kill we can use pkill -f short name 

**df -h**  	 
>show us available space others info (very important).

**mount** 	 
>to find where is where moutned 


**htop**  
>better version of top, more options below:


<i>Arrows, PgUP, PgDn, Home, End
Scroll the process list.
Space
Tag or untag a process. Commands that can operate on multiple processes, like "kill", will then apply over the list of tagged processes, instead of the currently highlighted one.
U
Untag all processes (remove all tags added with the Space key).

s

Trace process system calls: if strace(1) is installed, pressing this key will attach it to the currently selected process, presenting a live update of system calls issued by the process.

l

Display open files for a process: if lsof(1) is installed, pressing this key will display the list of file descriptors opened by the process.

F1, h, ?
Go to the help screen
F2, S
Go to the setup screen, where you can configure the meters displayed at the top of the screen, set various display options, choose among color schemes, and select which columns are displayed, in which order.
F3, /
Incrementally search the command lines of all the displayed processes. The currently selected (highlighted) command will update as you type. While in search mode, pressing F3 will cycle through matching occurrences.
F4, \
Incremental process filtering: type in part of a process command line and only processes whose names match will be shown. To cancel filtering, enter the Filter option again and press Esc.
F5, t
Tree view: organize processes by parenthood, and layout the relations between them as a tree. Toggling the key will switch between tree and your previously selected sort view. Selecting a sort view will exit tree view.
F6, <, >
Select a field for sorting. The current sort field is indicated by a highlight in the header.
F7, ]
Increase the selected process's priority (subtract from 'nice' value). This can only be done by the superuser.
F8, [
Decrease the selected process's priority (add to 'nice' value)
F9, k
"Kill" process: sends a signal which is selected in a menu, to one or a group of processes. If processes were tagged, sends the signal to all tagged processes. If none is tagged, sends to the currently selected process.
F10, q
Quit
I
Invert the sort order: if sort order is increasing, switch to decreasing, and vice-versa.

+, -

When in tree view mode, expand or collapse subtree. When a subtree is collapsed a "+" sign shows to the left of the process name.

a (on multiprocessor machines)
Set CPU affinity: mark which CPUs a process is allowed to use.
u
Show only processes owned by a specified user.</i>


**mtr**  
>combines the functionality of the traceroute and ping programs in a single network diagnostic tool.


**Socat** 
>is a command line based utility that establishes two bidirectional byte streams and transfers data between them. Because the streams can be constructed from a large set of different types of data sinks and sources (see address types), and because lots of address options may be applied to the streams, socat can be used for many different purposes.

**iptraf**   
>monitor of network 


**strace** 
>show which file is open by the program etc 

**strace /usr/local/bin/cough <any required argument for cough here>**



**jshon**  
>taking json file  and output in the way we would to have.


**certtool**  
>to generate keys etc, better than openssl also genereting rsa key.


**systemd-cgls**  
>where is run what(procces) display as less 
