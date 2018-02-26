# ZYPPER
**version Leap 42.3 2018**
>After an unsuccessfully upate i have to remove and add again all repostitories.
<br />
-------------------------------------------------------------------------------------------------------------------------
<br />
>first deleted all from /etc/repos.d/*

**sudo rm /etc/repos.d/**

>than add new from this link:  [**Suse Repos* ](https://en.opensuse.org/Package_repositories)

>the opensource code all programs as below **URL and alias**
>there are more of them just add which you need.

**sudo zypper ar -c http://download.opensuse.org/distribution/leap/42.3/repo/oss/ oss**

>than upade to have download the metda etc. needed in the way you want to use them.

**sudo zypper ref**


>In case of problems and errors check the by this command all repos you have:

**sudo zypper repos**

>to delete by zypper instead of delete all files from folder like this: (**Sometimes by alias or number**)

**sudo zypper rr <alias, number> of repo**
