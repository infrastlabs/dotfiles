

### wps 12.1.2

```bash
  9  zypper install glu-devel #有该依赖后可安装
  10  rpm -ivh wps-office-12.1.2.22571.AK.preread.sw-1-480058.x86_64.rpm 
  # 装后wps命令启UI成功

```

### netease-cloud-music-gtk

```bash
# https://github.com/gmg137/netease-cloud-music-gtk
# openSUSE Leap
  // 添加源
  sudo zypper ar -f obs://multimedia:apps multimedia
  // 安装
  sudo zypper in netease-cloud-music-gtk
  # 之后启动OK: en, 可播放

# Ubuntu(24.10/24.04/22.04)
  # 添加 PPA 源
  sudo add-apt-repository ppa:gmg137/ncm
  # 刷新源
  sudo apt update
  # 安装
  sudo apt install netease-cloud-music-gtk
  ##########
  apt-get install -y libgles2-mesa-dev  #补装
  # 之后启动OK: zh, 播放:提示没得歌曲??

Debian
  # 添加 Debian 中文社区软件源; https://github.com/debiancn/repo/blob/master/README.rst
  # 安装
  sudo apt install netease-cloud-music-gtk

```


