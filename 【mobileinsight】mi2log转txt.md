# 【mobileinsight】
视频教程（参考）：http://mobileinsight.net/tutorial-video.html
教程（参考）：http://mobileinsight.net/mi-dev-container.html
github资源：https://github.com/mobile-insight
操作系统：windows10
## 1. 配置环境
1.1 下载并安装VirtualBox

[Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)
![在这里插入图片描述](https://img-blog.csdnimg.cn/c5209020fa6845abaa8b2247e3f024f8.png)
1.1 下载Vagrant

[下载Vagrant](https://github.com/mobile-insight/mobileinsight-dev)
```powershell
git clone https://github.com/mobile-insight/mobileinsight-dev.git /path/to/dev
cd /path/to/dev
```

> F:\mobileinsight\MI_FOLDER\mobileinsight-dev
![在这里插入图片描述](https://img-blog.csdnimg.cn/eb4124a4364f4792a78da3a7b1beb0d3.png)

1.2 配置容器

https://github.com/mobile-insight/mobileinsight-dev#customize-mobileinsight
```powershell
vagrant destroy
vagrant up
vagrant ssh
```
![在这里插入图片描述](https://img-blog.csdnimg.cn/4fb83530596944c795da6de2f89ce1c8.png)
![在这里插入图片描述](https://img-blog.csdnimg.cn/5714eabb74c94761909bf2f410c12819.png)

```powershell
cd mi-dev
```
![在这里插入图片描述](https://img-blog.csdnimg.cn/fd87d79dfae74f61bce303350b450fc5.png)
## 2. mi2log转txt
https://github.com/mobile-insight/mobileinsight-dev#modify-mobileinsight-core-codes
```bash
cd ~/mi-dev/mobileinsight-core
./install-ubuntu.sh
```
测试python文件

```powershell
python3 xxx.py
```
[example文件](https://github.com/mobile-insight/mobileinsight-core/blob/master/examples/offline-analysis-example.py)
![在这里插入图片描述](https://img-blog.csdnimg.cn/a780998b6f6a4866a34d42daf3d8bbc7.png)
运行成功
![请添加图片描述](https://img-blog.csdnimg.cn/b7753aa8963043ea93ea6d65913ad7fa.png)
## 3. 传输到本地
### ~~容器文件夹同步问题~~ 
https://developer.hashicorp.com/vagrant/docs/synced-folders/basic_usage

### VirtualBox安装Lunix系统ip地址的问题
原ip地址：10.0.2.15
原因是虚拟机选择的是nat联网方式，将主机虚拟成10.0.2.1然后随机给虚拟机一个10.0.2.15的地址，可以看网关是多少，那就是虚拟出来主机的地址。

[简单解决ubuntu的ip地址不可用的情况（原本ip地址为10.0.2.15）
SFTP和FTP介绍](https://blog.csdn.net/weixin_47700137/article/details/115430591)

![在这里插入图片描述](https://img-blog.csdnimg.cn/19d6b6cc4b7e4af1876ea96e29117c19.png)
用Xftp可连接
![7c753d6820c84e93b9ff643e2ae018b4](C:\Users\XUAN\Pictures\Camera Roll\7c753d6820c84e93b9ff643e2ae018b4.png)

已转成txt格式
![在这里插入图片描述](https://img-blog.csdnimg.cn/c75f240f26334ba68f50e2973fe728fb.png)

