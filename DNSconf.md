# 服务器IP地址分配表
--------


| 主机名 hosts | 完整主机名 FQDNs| IP | 开启服务 Services |
| :------:|:------:|:------:|:------:|
|SCWS|SCWS.lilab.com|210.47.246.4| computer node, CentOS 6.5|
|SCNAS|SCNAS.lilab.com|210.47.246.5| storage node, CentOS 6.5|
|WS01|WS01.lilab.com|210.47.246.6| workstation, Rstudio, CentOS 7.0|
|WS02|WS02.lilab.com|210.47.246.7| workstation, Rstudio, CentOS 7.0|
|WS03|WS03.lilab.com|210.47.246.8| workstation, Rstudio, CentOS 7.0|
|WS04|WS04.lilab.com|210.47.246.9| workstation, Rstudio, CentOS 7.0|
|WS05|WS05.lilab.com|210.47.246.10| workstation, Ubuntu 14.04|
|WS06|WS06.lilab.com|210.47.246.11| workstation, Rstudio, CentOS 7.0|
|GB|GB.lilab.com|210.47.246.12|GB,DNS,Http|
|BK|BK.lilab.com|210.47.246.13|backup disk|
|CJ|CJ.lilab.com|210.47.246.14|terminal，VPN，Squid|
|FS|FS.lilab.com|210.47.246.15|terminal，VPN，Squid|
|LY|LY.lilab.com|210.47.246.16|terminal，VPN，Squid|
|Share|Share.lilab.com|210.47.246.17|terminal,Printer,Share Folder|
|XL|XL.lilab.com|210.47.246.18|terminal|


## 使用主机名访问服务器的方法
* 1 修改**hosts**文件
将下列信息添加到hosts文件，**Linux**系统hosts文件在/etc/hosts，**Windows**系统hosts在C:\Windows\System32\drivers\etc\hosts
>210.47.246.4				scws 	scws.lilab.com
210.47.246.5				scnas	scnas.lilab.com
210.47.246.6				ws01 	ws01.lilab.com 
210.47.246.7				ws02 	ws02.lilab.com 
210.47.246.8				ws03 	ws03.lilab.com 
210.47.246.9				ws04 	ws04.lilab.com 
210.47.246.10				ws05 	ws05.lilab.com 
210.47.246.11				ws06 	ws06.lilab.com 
210.47.246.12				GB   	GB.lilab.com   
210.47.246.13				BK   	BK.lilab.com   
210.47.246.14				CJ   	CJ.lilab.com   
210.47.246.15				FS   	FS.lilab.com   
210.47.246.16				LY   	LY.lilab.com   
210.47.246.17				Share	Share.lilab.com
210.47.246.18				XL   	XL.lilab.com   

* 2 使用实验室搭建的**DNS服务器**
实验室DNS服务的的IP是**210.47.246.12**，**Linux**系统可以使用桌面的网络管理器添加DNS和搜索域search domin，DNS为**210.47.246.12** , search domin为** lilab.com ** .

![linux DNS 配置](http://img.lyhonk.com/DNS1.png) 

centos系统还可以修改/etc/resolv.conf,添加如下内容

> search lilab.com
nameserver 210.47.246.12

ubuntu 系统需要修改/etc/resolvconf/resolv.conf.d/base，修改内容同上

windows系统打开网络链接，找到修改适配器设置，点击Internet协议版本4，将DNS改为210.47.246.12，点击高级，在DNS选项卡中将附加DNS后缀设置为 lilab.com

![Windows DNS 配置](http://img.lyhonk.com/DNS2.png) 


## 注意事项：
### 1. 所有服务器均已配置好DNS，可以直接主机名互相访问，不必再使用IP互相登陆。
### 2. DNS 若没有设置搜索域，访问时需要使用完整主机名，如： 

```sh
ssh root@ws01.lilab.com
```
