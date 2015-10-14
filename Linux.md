#Linux(Ubuntu)

##Linux常用命令
1 基本操作
- su: 切换用户

2 文件目录操作
- cd: 改变当前操作目录
- pwd: 显示当前目录
- ps -l: 显示当前目录下的文件信息。/tmp显示最近一次修改的时间
- mkdir [目录名称]: 创建目录。mkdir /opt/java
- rm -r [目录名称]: 删除目录。rm -r /opt/java
- touch [文件名称]: 常见文件。touch /opt/java/HelloWorld.java
- rm [文件名称]: 删除文件。rm /opt/java/HelloWorld.java
- mv [源文件/目录名称] [目标源文件/目录]: 移动文件或文件夹。mv /tmp/res.txt /tmp/des.txt
- cp [源文件名称] [目标文件名称]: 复制文件
- cp -r [源目录/（×(所有文件和文件夹)|一个字符）] [目标目录]: 复制目录。

3 解压文件
- tar -zxvf [tar.gz文件名称]: 解压tar.gz文件到当前目录