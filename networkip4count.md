# Calculation of ipv4 addresses 

<br />

The number of available host addresses in a subnet is 2 less (subnet address and broadcast address are reserved) 
than the number of possible unique addresses in that subnet:
<br /> 
model to count how many hosts (N) in the newtork:
<br /> 
N = 2{32-CIDR}-2
<br /> 
2 times (32 bit ip4 - shortened submask number) - (first host and broadcast ip)
<br /> 

Octal convertions model 
2{128} 2{64} 2{32} 2{16} 2{8} 2{4} 2{2} 2{1}

<br />

| CIDR          | subnet mask   | Number of available host addresses  |
| ------------- |:-------------:| -----:|
| /1 |	128.0.0.0 |	2  147 483 646
/2 |	192.0.0.0 |	1  073 741 822
/3 |	224.0.0.0 |	536  870 910
/4 |	240.0.0.0 |  268 435 454
/5 |	248.0.0.0 |	134 217 726
/6 |	252.0.0.0 |	67 108 862
/7 |	254.0.0.0 |	33 554 430
/8 |	255.0.0.0 |	16 777 214
/9 |	255.128.0.0 |	8 388 606
/10 |	255.192.0.0 |	4 194 302
/11 |	255.224.0.0 |	2 097 150
/12 |	255.240.0.0 |	1 048 574
/13 |	255.248.0.0 |	524 286
/14 |	255.252.0.0 |	262 142
/15 |	255.254.0.0 |	131 070
/16 |	255.255.0.0 |	65 534
/17 |	255.255.128.0 |	32 766
/18 |	255.255.192.0 |	16 382
/19 |	255.255.224.0 |	8 190
/20 |	255.255.240.0 |	4 094
/21 |	255.255.248.0 |	2 046
/22 |	255.255.252.0 |	1 022
/23 |	255.255.254.0 |	510
/24 |	255.255.255.0 |	254
/25 |	255.255.255.128 |	126
/26 |	255.255.255.192 |	62
/27 |	255.255.255.224 |	30
/28 |	255.255.255.240 |	14
/29 |	255.255.255.248 |	6
/30 |	255.255.255.252 |	2

<br />

## Method to get ip network, first host ip, last host ip, broadcast ip.

We have netowork with ip4: 192.168.1.145 and mask: 255.255.255.128
<br />
<br />
Converting to binary:
<br />

|                      |         1 octal       |   2 octal            |   3 octal             |    4 octal            |
|--------------------- | ----------------------|----------------------| --------------------- | --------------------- |
| ip 4                 |  1 1 0 0 0 0 0 0      | 1 0 1 0 1 0 0 0      | 0  0 0 0 0 0 0 1      | 1 0 0 1 0 0 0 1       |
| subnetmask           |  1 1 1 1 1 1 1 1      | 1 1 1 1 1 1 1 1      |  1 1 1 1 1 1 1 1      | 1 0 0 0 0 0 0 0       |


<br />
11000000.10101000.00000001.10000000
<br />
Now we convert from binary to octal
<br />
<br />

|     1 octal          |          2 octal      |   3 octal            |   4 octal             |
|--------------------- | ----------------------|----------------------| --------------------- |
| 128 64 32 16 8 4 2 1 |  128 64 32 16 8 4 2 1 | 128 64 32 16 8 4 2 1 | 128 64 32 16 8 4 2 1  |
| 1   1   0  0 0 0 0 0 |   1  0   1 0  1 0 0 0 |  0   0  0  0 0 0 0 1 |  1  0   0  0 0 0 0 0  |
<br />
Result: 192.168.1.128
<br />
### Broadcast number on NOT notations
<br />
To get broadcast number you need to do NOT notation on the mask which means we turn all 0 to 1 and all 1 to 0  
<br />

|                      |         1 octal       |   2 octal            |   3 octal             |    4 octal            |
|--------------------- | ----------------------|----------------------| --------------------- | --------------------- |
| subnetmask           |  1 1 1 1 1 1 1 1      | 1 1 1 1 1 1 1 1      | 1 1 1 1 1 1 1 1       | 1 0 0 0 0 0 0 0       |
| NOT  notations       |  0 0 0 0 0 0 0 0      | 0 0 0 0 0 0 0 0      | 0 0 0 0 0 0 0 0       | 0 1 1 1 1 1 1 1       |
<br />
in result we are getting binary represation which we need to turn again to octal:
<br />

|                      |         1 octal       |   2 octal            |   3 octal             |    4 octal            |
|--------------------- | ----------------------|---------------------- | ---------------------| --------------------- |
|                      | 128 64 32 16 8 4 2 1  |  128 64 32 16 8 4 2 1 | 128 64 32 16 8 4 2 1 | 128 64 32 16 8 4 2 1  |
|                      |  0  0  0  0  0 0 0 0  |   0  0  0   0 0 0 0 0 |  0   0  0  0 0 0 0 0 |  0   1  1  1 1 1 1 1  |
<br />
which in result will give: 0.0.0.127 
<br />
right now we suming previous ip which we get: 191.168.1.128 + 0.0.0.127 <br />
result of broadcast ip: 192.168.1.255<br />
<br />

### How many hosts in range

<br />
<br />
check the template up <br />
2 * (32 bits ip  - 25 subnetmask shorted) - 2 for first and boradcast address = <br />
2*(7)-2 = 128-2 = 126 hosts in range <br />
<hr />
Finaly: <br />
 <br />
Network ip address is:  192.168.1.145 subnetmastk: 255.255.255.128/25 <br />
first host ip is : 192.168.1.129 and last is 192.168.1.254  broadcast ip is : 192.168.1.254

<br />
<br />
To count down the last ip address in range just subtract 1 from broadcast ip <br />
<br />
To count down the first ip address in range just add 1 to ip address <br />





