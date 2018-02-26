>Depending on your Ubuntu Version, you would need to start it using one of the following way:

>If using the Legacy init.d way:

**sudo /etc/init.d/networking restart**

>If using the Legacy Upstart way:

**sudo service network-manager restart**

>If using SystemD:

**sudo systemctl start networking**

#Wireless
>Bringing device back while interace may freeze eor where taken by service.
**sudo ifconfig wlan0 down         - wlan0 means 1 card for wireless connection will be set to off**
**sudo ifconfig wlan0 up           - wlan0 means 1 card for wireless connection will be set to on**



**iwconfig**
>used to display and change the parameters of the network interface which are specific to the wireless operation.


**iwlist wlan0 s**  
>scan wlan for available connections.


I will continue soon....
