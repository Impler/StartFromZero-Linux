#Docker

##Docker实战
###在windows中使用Docker
####安装
1. 到https://www.docker.com/toolbox下载Docker Toolbox（支持Mac OS X 10.8+ 和 Windows(64bit) 7+）软件并安装，安装过程中记得勾选安装VirtualBox虚拟机，将会自动在虚拟机中安装CentOS系统。  
2. 通过Docker Quickstart Terminal启动程序，第一次启动较慢，因为要拉起虚拟机启动CentOS系统。  CentOS中已经安装好了docker，我们可以通过命令查看:  
	`docker version`  
![首屏](images/docker/windows/install/首屏.png "首屏")  
3. 为了方便操作，我们为CentOS挂在本地共享目录。  
![共享本地目录](images/docker/windows/install/共享本地目录.png "共享本地目录")  

4. 将共享目录挂载到CentOS中的/share目录  
	`mkdir /share`  
	`sudo mount –t vboxsf /VMShare /share`  
测试：  
	`cd /share`  
	`ll`  
![测试共享目录](images/docker/windows/install/测试共享目录.png "测试共享目录")  



##Docker常用命令

- docker version: 显示docker版本
- docker images: 显示所有已安装的镜像
- docker search [镜像名称关键字]: 在官方仓库中搜索镜像。docker search tutorial
- docker pull [镜像名称]: 从仓库中下载镜像，镜像名称按照用户名/镜像名的方式存储。docker pull learn/tutorial
- docker run [镜像名称] [命令参数]: 运行镜像。docker run learn/tutorial echo "hello world"
- apt-get install -y [程序名称]: 在容器中安装新的程序。docker run learn/tutorial apt-get install -y ping
- docker ps -l: 显示容器信息列表
- docker inspect [容器ID]: 显示具体容器信息，容器ID可用其前几（3, 4）个标识符表示
- docker commit [容器ID] [新的镜像名称]: 保存对容器的修改，生成新的镜像，容器ID可用其前几（3, 4）个标识符代替。docker commit 0fea learn/ping
- docker push [镜像名称]: 发布镜像到官方仓库