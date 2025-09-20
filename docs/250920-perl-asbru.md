

### perl|asbru,pac

- https://www.jianshu.com/p/99ab3edfdfd8 2小时30分钟 perl 速成
- json
  - https://metacpan.org/pod/JSON::PP
  - https://www.cnblogs.com/zhaoyangjian724/p/6199626.html
- perl/cpan
  - http://172.25.23.205:82/sam/jenkins-dsl/src/branch/master/webhookd/Dockerfile `alpine:3.13.12`
  - MyConfig.pm http://172.25.23.205:82/sam/jenkins-dsl/raw/branch/master/webhookd/conf/.cpan_CPAN_MyConfig.pm
- pac/asbru-cm
  - https://github.com/perseo22/pacmanager
  - https://sourceforge.net/projects/pacmanager/files/pac-4.0/
  - https://github.com/asbru-cm/asbru-cm 


```bash
##repo
git clone https://gitee.com/g-system/fk-asbru-cm #默认br: loki>br-perseo22-pacmanager

##deps
# lib0: .cpan/
# /root/.cpan/CPAN/MyConfig.pm: mirror-163; http://172.25.23.205:82/sam/jenkins-dsl/raw/branch/master/webhookd/conf/.cpan_CPAN_MyConfig.pm
# cpan install YAML; 装后不在asbru's find path;
#  ./asbru-cm: #perl文件
#    use FindBin qw ($RealBin $Bin $Script);
#    use lib "$RealBin/lib", "$RealBin/lib/ex", "$RealBin/lib/edit";
# 
# lib1: /usr/share/perl5/
# apt install libyaml-perl
# ref fk-asbru-cm\dist\deb\debian\control
  libvte-2.91-0 libcairo-perl libglib-perl libpango-perl libsocket6-perl libexpect-perl libyaml-perl libcrypt-cbc-perl libcrypt-blowfish-perl libgtk3-perl libnet-arp-perl libossp-uuid-perl openssh-client libcrypt-rijndael-perl libxml-parser-perl libcanberra-gtk-module dbus-x11 libgtk3-simplelist-perl #16M
  gir1.2-wnck-3.0 gir1.2-vte-2.91 ncat nmap #6M
  # 上两行全装后: ubt24启动正常


# pac: gtk2
  https://github.com/perseo22/pacmanager #x35+2
  # UUID
  sudo apt install libuuid-tiny-perl
  # GTK2: ubt24-try
  root@x11-ubuntu:/home/headless/fk-asbru-cm# apt install libgtk2-perl
    Package libgtk2-perl is not available, but is referred to by another package.
    This may mean that the package is missing, has been obsoleted, or
    is only available from another source
  root@x11-ubuntu:/home/headless/fk-asbru-cm# apt install libgtk2-traymanager-perl
    Package libgtk2-traymanager-perl is not available, but is referred to by another package.
    This may mean that the package is missing, has been obsoleted, or
    is only available from another source

```

### tagsTry

- tagsTry
  - mark170117 pac:`br-perseo22-pacmanager`
  - v500@17.12.29: 还是gtk2,改用外部vte;
  - v521@19.10.26: 还是Gtk2.pm; `5.2.1 (2019-10-26)` chlog.[gtk3-1]
  - v600@20.01.03: gtk3运行正常/ui.Pretty1 `6.0.0 (2020-01-02)` chlog.[gtk3-2]
  - v610@20.03.27: `6.1.0 (2020-03-27)` chlog.[gtk3-3-closeIssue]
  - v630@21.02.16: themes<system/default,color/dark>, docs
  - v632: headless:deb9-full>> `asbru-cm:v632`; TODO: deb8-pac? <t210本子/ct容器>

```bash
# root @ deb11-11 in ~ |21:26:11  
$ docker run -it --rm  --privileged -p 10089:10089 registry.cn-shenzhen.aliyuncs.com/infrasync/v2025:infrastlabs--docker-headless---deb9-full #asbru-cm v631

# https://sourceforge.net/projects/pacmanager/files/pac-4.0/
# root @ deb11-11 in /_ext |21:54:26  
$ curl -O -k -fSL https://sourceforge.net/projects/pacmanager/files/pac-4.0/pac-4.5.5.6-all.deb
$ ls -lh pac-4.5.5.*
  -rw-r--r-- 1 root root 1.1M Sep 20 21:45 pac-4.5.5.5-all.deb
  -rw-r--r-- 1 root root 1.1M Sep 20 21:44 pac-4.5.5.6-all.deb ##pac-4.5.5.7-all.deb下载fail
  -rw-r--r-- 1 root root 1.6M Sep 20 21:54 pac-4.5.5.6-2.x86_64.rpm
  # pac-4.5.5.6-all.deb
  Depends: perl, gtk2-engines-pixbuf, libvte9, libcairo-perl, libgtk2-perl, libglib-perl, libpango-perl, libgnome2-gconf-perl, libsocket6-perl, libexpect-perl, libnet-proxy-perl, libyaml-perl, libcrypt-cbc-perl, libcrypt-blowfish-perl, libgtk2-perl, libgtk2-gladexml-perl, libgtk2-ex-simple-list-perl, libnet-arp-perl, libossp-uuid-perl, openssh-client, telnet, ftp, libcrypt-rijndael-perl, libxml-parser-perl, libgtk2-unique-perl

# ubt24-try-gtk2Deps
  # none: libgtk2-perl libgnome2-gconf-perl libgtk2-gladexml-perl libgtk2-ex-simple-list-perl libgtk2-unique-perl 
  apt install gtk2-engines-pixbuf libvte9 libcairo-perl libglib-perl libpango-perl libsocket6-perl libexpect-perl libnet-proxy-perl libyaml-perl libcrypt-cbc-perl libcrypt-blowfish-perl libnet-arp-perl libossp-uuid-perl openssh-client telnet ftp libcrypt-rijndael-perl libxml-parser-perl #589Kb
    E: Package 'libgtk2-perl' has no installation candidate
    E: Unable to locate package libgnome2-gconf-perl
    E: Unable to locate package libgtk2-gladexml-perl
    E: Unable to locate package libgtk2-ex-simple-list-perl
    E: Unable to locate package libgtk2-unique-perl
  # pkg-view
  root@x11-ubuntu:/_ext/fk-asbru-cm-pac# pkgsize |grep perl |wc
      98     294    3873
  root@x11-ubuntu:/_ext/fk-asbru-cm-pac# pkgsize |grep perl |grep -i gtk
  0.04 Mbs        libgtk3-simplelist-perl|0.21-1
  0.10 Mbs        libgtk3-perl|0.038-3


# deb9-ok
  apt install libgtk2-perl libgnome2-gconf-perl libgtk2-gladexml-perl libgtk2-ex-simple-list-perl libgtk2-unique-perl 
  apt install gtk2-engines-pixbuf libvte9 libcairo-perl libglib-perl libpango-perl libsocket6-perl libexpect-perl libnet-proxy-perl libyaml-perl libcrypt-cbc-perl libcrypt-blowfish-perl libnet-arp-perl libossp-uuid-perl openssh-client telnet ftp libcrypt-rijndael-perl libxml-parser-perl
```

- try-deb8

```bash
# try-deb8
root @ deb11-11 in /_ext |22:01:28  
$ docker run -it --rm --net=host registry.cn-shenzhen.aliyuncs.com/infrasync/v2025:library--debian---8 bash
library--debian---8: Pulling from infrasync/v2025
b82b9923b08d: Downloading [============>               ]   38.9MB/54.39MB

# ref fk-jackyzy823-fxa-selfhosting\single\entry.sh
  # https://developer.aliyun.com/mirror/debian ##7.x--11.x
  # apt-deb-ali-archive-repo https://developer.aliyun.com/mirror/debian  ##fix: https> http
  # 
#   cat > /etc/apt/sources.list <<EOF
# deb http://mirrors.aliyun.com/debian-archive/debian stretch main
# EOF
  # deb8: jessie
  cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/debian-archive/debian jessie main contrib non-free
deb http://mirrors.aliyun.com/debian-archive/debian-security jessie/updates main contrib non-free
#deb http://mirrors.aliyun.com/debian-archive/debian jessie-backports main non-free contrib
#deb http://mirrors.aliyun.com/debian-archive/debian jessie-proposed-updates main non-free contrib
EOF
  # deb7
  cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/debian-archive/debian wheezy main contrib non-free
deb http://mirrors.aliyun.com/debian-archive/debian-security wheezy/updates main contrib non-free
EOF
  # deb9
  cat > /etc/apt/sources.list <<EOF
deb http://mirrors.aliyun.com/debian-archive/debian stretch main contrib non-free
deb http://mirrors.aliyun.com/debian-archive/debian-security stretch/updates main contrib non-free
EOF

  cat > /etc/apt/apt.conf.d/skip-gpg-check-ig  <<EOF
Acquire {
  APT::Get::Allow-Unauthenticated true;
  GPG::Ignore true;
  AllowInsecureRepositories true;
  AllowDowngradeToInsecureRepositories true;
}
EOF


# deps apt-ins
  apt update
  root@deb11-11:/# apt install --download-only --allow-unauthenticated perl gtk2-engines-pixbuf libvte9 libcairo-perl libgtk2-perl libglib-perl libpango-perl libgnome2-gconf-perl libsocket6-perl libexpect-perl libnet-proxy-perl libyaml-perl libcrypt-cbc-perl libcrypt-blowfish-perl libgtk2-perl libgtk2-gladexml-perl libgtk2-ex-simple-list-perl libnet-arp-perl libossp-uuid-perl openssh-client telnet ftp libcrypt-rijndael-perl libxml-parser-perl libgtk2-unique-perl
  Need to get 44.2 MB of archives.
  After this operation, 158 MB of additional disk space will be used.
  # ins-deps
  root@deb11-11:/_ext# cp /var/cache/apt/archives/*.deb ./deb8_pac_deps/
  root@deb11-11:/_ext/deb8_pac_deps# #dpkg -i *.deb
  root@deb11-11:/_ext/deb8_pac_deps# ls |wc
      183     183    6719
  # ins-pac
  root@deb11-11:/_ext/deb8_pac# dpkg -i pac-4.5.5.5-all.deb 
  Selecting previously unselected package pac.
  (Reading database ... 13703 files and directories currently installed.)
  Preparing to unpack pac-4.5.5.5-all.deb ...
  Unpacking pac (4.5.5.5) ...
  Setting up pac (4.5.5.5) ...

# x11base: deb8
  apt.sh wget ca-certificates \
    curl lame sox libsox-fmt-mp3 \
    htop rsync tree tmux lrzsz psmisc fuse net-tools iputils-ping \
    procps sudo iproute2 iptables zip unzip xz-utils vim-tiny 
RUN apt.sh \
  tzdata locales librsvg2-common x11-xserver-utils ; \
  \
  # for dbg
  apt.sh thunar leafpad;
  # run
  root @ deb11-11 in ~ |04:43:42  
  $ docker run -it --rm -p 10089:10089 -e START_SESSION=openbox-session -v /_ext:/_ext registry.cn-shenzhen.aliyuncs.com/infrastlabs/x11-base:core-debian-8
  $ docker run -it --rm --net=host -v /_ext:/_ext registry.cn-shenzhen.aliyuncs.com/infrastlabs/x11-base:core-debian-8

# perl-info deb8
  0.50 Mbs	libhtml-tree-perl|5.03-1
  0.59 Mbs	libxml-parser-perl|2.41-3
  0.80 Mbs	libglib-perl|3:1.305-2
  1.05 Mbs	libnet-ssleay-perl|1.65-1+deb8u1
  3.04 Mbs	libgtk2-perl|2:1.2492-4
  4.98 Mbs	perl-base|5.20.2-3+deb8u12
  14.75 Mbs	perl-modules|5.20.2-3+deb8u12
  17.17 Mbs	perl|5.20.2-3+deb8u12
  headless@deb11-11:~$ pkgsize  |grep perl |wc
      46     138    1680
  headless@deb11-11:~$ perl -v
    This is perl 5, version 20, subversion 2 (v5.20.2) built for x86_64-linux-gnu-thread-multi
    (with 103 registered patches, see perl -V for more detail)
    Copyright 1987-2015, Larry Wall
  headless@deb11-11:~$ du -sh /usr/share/perl*
    19M	/usr/share/perl
    3.0M	/usr/share/perl5
  headless@deb11-11:~$ find /usr/share/perl5/ |grep Gtk
    /usr/share/perl5/Gtk2
    /usr/share/perl5/Gtk2/Ex
    /usr/share/perl5/Gtk2/Ex/Simple
    /usr/share/perl5/Gtk2/Ex/Simple/List.pm
    /usr/share/perl5/Gtk2/Ex/Simple/TiedList.pm
    /usr/share/perl5/Gtk2/Ex/Simple/TiedCommon.pm
  headless@deb11-11:~$ pkgsize |grep vte |wc
        2       6      62
    headless@deb11-11:~$ pkgsize |grep vte 
    1.04 Mbs	libvte9|1:0.28.2-5
    1.28 Mbs	libvte-common|1:0.28.2-5

# cp deb8's, try01
headless @ x11-ubuntu in /_ext/fk-asbru-cm-pac |10:14:40  |br-perseo22-pacmanager U:1 ?:5 ✗|
$ ldd deb8-lib/perl5/5.20/auto/Gtk2/Gtk2.so |sort |wc
     54     212    4178
  $ find deb8* |grep "\.so" |sort |wc
      75      75    3486
  $ find deb8* |grep Gtk2.pm
    deb8-lib/perl5/5.20/Gtk2.pm
  $ ./pac
    Can't load '/_ext/fk-asbru-cm-pac/deb8-lib/perl5/5.20/auto/Glib/Glib.so' for module Glib: /_ext/fk-asbru-cm-pac/deb8-lib/perl5/5.20/auto/Glib/Glib.so: undefined symbol: Perl_xs_version_bootcheck at /usr/lib/x86_64-linux-gnu/perl-base/DynaLoader.pm line 201.
    at /_ext/fk-asbru-cm-pac/deb8-lib/perl5/5.20/Gtk2.pm line 30.
    Compilation failed in require at /_ext/fk-asbru-cm-pac/deb8-lib/perl5/5.20/Gtk2.pm line 30.
    BEGIN failed--compilation aborted at /_ext/fk-asbru-cm-pac/deb8-lib/perl5/5.20/Gtk2.pm line 30.
    Compilation failed in require at /_ext/fk-asbru-cm-pac/lib/PACMain.pm line 45.
    BEGIN failed--compilation aborted at /_ext/fk-asbru-cm-pac/lib/PACMain.pm line 45.
    Compilation failed in require at ./pac line 62.
    BEGIN failed--compilation aborted at ./pac line 62.

```

- deb7 wheezy

```bash
# deb7 wheezy
  # bash-err> sh
  $ docker run -it --rm --net=host -v /_ext:/_ext registry.cn-shenzhen.aliyuncs.com/infrasync/v2025:library--debian---7 bash
  $ echo $?
  139
  # root @ deb11-11 in ~ |04:36:18  
  $ docker run -it --rm --net=host -v /_ext:/_ext registry.cn-shenzhen.aliyuncs.com/infrasync/v2025:library--debian---7 sh  
  # 
  #apt-err
  # apt
  sh: 6: apt: not found
  # apt-get update
  E: Method http has died unexpectedly!
  E: Sub-process http received a segmentation fault.

# genM-deb11 fix
cat > /etc/apt/sources.list <<EOF
deb https://mirrors.aliyun.com/debian/ bullseye main non-free contrib
deb https://mirrors.aliyun.com/debian-security/ bullseye-security main
deb https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib
# deb-src https://mirrors.aliyun.com/debian/ bullseye main non-free contrib
# deb-src https://mirrors.aliyun.com/debian-security/ bullseye-security main
# deb-src https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib
EOF
```

## 附

### asbru-Changelog

- https://docs.asbru-cm.net/General/Changelog/
  - fk-asbru-cm\doc\General\Changelog.md `auto-generated`

```bash
# Changelog https://docs.asbru-cm.net/General/Changelog/
6.4.0 (2022-11-13)¶
Full Changelog
Implemented enhancements:

    Fedora 37 build #981
    Please modify to install mint 21 vanessa #972
    The sorting of list of connections from right click->"goto tab" can make tabs hard to find #962
    New default command prompt #904
    Using zero port on Jump host configuration #888
    Support for "postpend" options on generic command #850
    Request for Appimage #804
    Field ssh Authentication dont save username, when used Manual checkbox #788
    Better display of keybindings #787
    Problem with show/hide connection list #786
    Better error message handling when KeepassXC lookup values got changed. #770
    "Linux" type function keys support as putty does #755
    Feature: Only Programatically Send String when Idle #902 (henry701)
    Tunnels once #863 (hanspr)

Fixed bugs:
    "Operation not permitted" when using a shared directory (smb/cifs) as config-dir #909
    KeePassXC DB in a folder with cyrillic letter in a path #859
    Various issues after upgrade of Crypt-CBC #816
    copy paste works only once #729
    Cluster delete fix #862 (hanspr)

Closed issues:
    Typo error on Manual installation docs #980
    Asbru doesn't correctly send ctrl-F8 to remote #977
    Groups are broken for me and Asbru does not save hosts/connections (files) #975
    Startup error with Keepass DB on CentOS 7.9 #971
    session appears to hang, no echo and after some time disconnects #960
    Fail on Import/ not saving connection on fresh install #947
    Dumped core #943
    Unable to install on Ubuntu 22.04 (Key is stored in legacy trusted.gpg keyring (/etc/apt/trusted.gpg)) #930
    Use of '“' is deprecated as a string delimiter at /opt/asbru-cm/lib/asbru_conn line XXX #951
    Tray Icon in Unity #870

Merged pull requests:
    fix delimiter #952 (b17k0)
    Distribution: Raw AppImage builder using Docker #912 (henry701)
    Run once fix#889 #893 (hanspr)
    Fix889 #890 (hanspr)
    Fix copy #887 (hanspr)
    Fix missing salt #886 (hanspr)
    Fix expect #882 (hanspr)
    Delay user expect #881 (hanspr)
    Fix755 #878 (hanspr)
    Fix 634 #877 (hanspr)
    Re-enable Unity tray icon in GTK3 #872 (toptnc)
    Paste #869 (hanspr)
    Fix 729 #865 (hanspr)
    Add the PostPend command in order to use ChromaTerm #857 (teicors)
    Execute in new cluster warning message #836 (syco)
    Fix use of uninitialized value $forward_ports (#742) #830 (kjuanman)
    Add options in preferences to show port forwarding (full or short) in statusbar (#742) #823 (kjuanman)
    :bug: Show ssh port forwarding when connected in status bar (#742) #819 (kjuanman)
    remove all embedded which checks and replace them with system #802 (syco)
    Other connection options + socks tunnel #790 (gfrenoy)
    [Feat] Vendor default configuration overrides #860 (henry701)
    Add random socks5 port to connctions and add related variable to use in local commands #771 (syco)

6.3.3 (2022-05-21)¶
Full Changelog
Implemented enhancements:
    Support for Pop!_OS 21 #834
    ZMODEM protocol support! #808
    Pop!_OS 21.10 support #916
    Support for Linux Mint 20.3 "Una" #911
    Asbru-CM not available on Fedora 35 #907
    Won't install on Linux mint 20.2 #903
    Support for Ubuntu 21.10 (Impish Indri) #861
    elementaryOS6 #855
    Add support for PubkeyAcceptedKeyTypes option #853
    Pop!_OS 21.04 support #852
    Can't install on Ubuntu 21 Hirsute #813
    Create builds for Debian Bullseye #812
    Fedora 34 Support - (PackageCloud) #807
    Support for Pop!_OS 20.04 #789

Fixed bugs:
    Expect processing not working #897
    asbru frozen when local command executed via keybinding #889
    huge tray icon #883
    asbru-cm loki latest -Main window doesn't show up when I click the systray icon #880
    "Save and Close" button does not save configuration to a file and does not close configuration window #858
    password not correct on 6.4.0 #844
    Argument "" isn't numeric in division (/) #841
    variable not allowed to be undef where GtkTreePath is wanted (Loki branch) #839
    Asbru hang #814
    ssh Options, does not load the parameters #795
    Connections using keePass no longer work #780
    Support for KeepassXC 2.7.0 (and above) #924
    Settings password set if dialogs canceled #922
    sftp via jumphost to target with private key instead of password doesn't work #913
    Can't close tab after doing split-unsplit #817
    KeepassXC password exposed on asbru-cm local shell terminal #801
    Error when using an entry of a KeePass database with a pipe ("|") on title #794
    Power Cluster Controller (PCC) can't close multiple exploded tabs #791
    closing one tab in cluster disconnects whole cluster #634

Closed issues:
    Unable to search KeePassXC database #936
    Bulk Edit Login Method #934
    Ubuntu 22.04 apt-key is depreciated - installation script needs to be updated #929
    Cannot start xfreerdp session (GtkSocket: only works under X11) #927
    Unable to install on Ubuntu 22.04 #926
    ssh to a previously unknown host hangs at "are you sure you want to continue connecting"? #923
    no matching key exchange method found. Their offer: diffie-hellman-group14-sha1,diffie-hellman-group1-sha1 #920
    404 on install #917
    package absru-cm is missing #914
    When copy content from termial whitespace changed to tab #910
    SSH terminals partly freezing #908
    Could not resolve all dependencies on current Arch #906
    RDP throws an error in Ubuntu 18.04 #901
    Asbru main window doesn't open/show when I click the systray icon #884
    Unable to install on Raspberry Pi Buster #847
    Empty entry under sub-group folders #843
    Stop Autologin #838
    Can not install - missing perl dependencies #829
    Connection no longer working with KeePassXC integration #821
    Typing ~. closes any SSH session #809
    Failed Connection with TWO-Step Verification #799
    Reverse SSH sessions fail to connect #796
    No menu on right click in terminal #793
    Inherit configuration from root folder #781
    Ásbrú's terminal automatically copies selection to clipboard #747
    📡 Promote the latest release on tech medias #944
    Unable to install asbru-cm on fedora 36. #941

Merged pull requests:
    Add missing ssh options (#853) #854 (bukajsytlos)
    [Doc] - Gentoo instructions added to the installation docs #846 (nikoladsp)
    [Docs] Fix small typo, suggest backup usage for YAML export #845 (henry701)
    Add 21.04 support in .travis.yml #820 (kjuanman)

6.3.2 (2021-02-27)¶
Full Changelog
Fixed bugs:
    ssh session sometimes reconnects on manual disconnection when autoreconnect enabled #765
    Blank main window when starting iconified #783
    Install problem on linuxmint Tessa #782

Merged pull requests:
    Do not mention yaourt #784 (micwoj92)

6.3.1 (2021-02-22)¶
Full Changelog
Fixed bugs:
    Compact layout is fullscreen #778
    --config-dir="/home/user/some dir" fails due space in version 6.3 (not in v6.2) #777
    Power Cluster Controller Explode Send to ALL terminal doesn't work anymore #775
    Clusters view appears empty on startup #753

Closed issues:
    Copy and Paste with select and copy buffer broken #774

6.3.0 (2021-02-16)¶
Full Changelog
Implemented enhancements:
    Conecction Type: https/http #731
    Fedora 33 Support - (PackageCloud) / obsoleted perl-X11-GUITest #719
    Support default prompt of VMware ESXi (and avoid connection is not detected and automatically closed after 40 seconds timeout) #757
    Make port number optional (to support for ~/.ssh/config defined hosts) #754
    Force LANG=en_US.UTF-8 on startup #748
    Ásbrú's terminal uses X11 PRIMARY clipboard, ignores CLIPBOARD #746
    Support for infinite scrollback lines #739
    A /tls-secure level option menu is required for freerdp connection. #688
    Remove unimplemented option "Check port status at connect" #677
    Copy and paste from wine to terminal #673
    Improve show/hide of the connections list using the Alt+n shortcut key #649
    Do not allow modification in protected folders #648
    Suggest packages to create all supported types of connections #647
    Add dependency check for ncat #643
    Global Network Settings - KeepassXC integration #639
    "CTRL+TAB goes to" setting is now obsolete #630
    Copy password not working properly after password change #626
    Right click in a terminal should switch the focus to that terminal #604
    An option to include time info in the session logs #603
    Customize Keybindings #556
    search function : Ctrl-F only works when focus is on connections pane #543
    Open all connection of one folder #534
    Jump Server authentication #490
    Loki branch - Pseudo-jump server #470
    Enable port range for mosh connections #424
    Add hotkeys to commands #285
    Add custom hotkeys for scripts and commands #43

Fixed bugs:
    Can't close tabbed terminal with its keybind #769
    Issue with Vte::Terminal::feed_child version #723
    Window gets centered on screen on open connection #768
    Connection fails without any error #767
    ctrl+alt+s opens ssh instead of sftp when autossh is enabled #766
    GLOBAL commands doesn't work in cluster when triggered from button bar #758
    Two clicks are sometimes required to untray #756
    asbru asks me to type keepassxc password everytimes when I run connection. However master password already set in global settings. #750
    VTE version not correctly detected on F33 #749
    Cant enter User / Password for new SSH-Connection #735
    'show GLOBAL commands' covers bottom of RDP session screen #687
    How do I select row from a start symbol with hiding connection tree? #683
    Close All terminals doesn't work #660
    vertical split wrongly aligned when tabs are on right side #646
    Remove unwanted GLib message "Source ID 1234 was not found when attempting to remove it" when closing a RDP connection #633
    Left click on several selected connections deselcts selection befores popup shows #617
    asbru crash after manual RDP session disconnection #538
    Be able to drag and drop connections into groups #167

Closed issues:

    sftp> Connection to [...] closed by remote host. Connection closed. #717
    Maximum number of clients reached (asbru_conn:5864): Gtk-WARNING **: 14:45:53.545: cannot open display: :0.0 #712
    setenv()/putenv() are not thread-safe #432

Merged pull requests:

    Change max baud rate for using above 1 Mbps on serial(using cu) #772 (nlimbo76)
    Fix bug clipboard utf8 #743 (hanspr)
    update vte_feed_child detection #726 (syco)
    do not close socket on disconnect only at the time of a full stop #706 (hanspr)
    Fix694 b #702 (hanspr)
    reset environment keepassword if not set and available #697 (hanspr)
    Fix #502 Destroy windows after full disconnection #693 (hanspr)
    Copy and paste cleanup #685 (gfrenoy)
    Fix #617 #623 (hanspr)
    Fix603 #621 (hanspr)
    Fix regression logcleanup #620 (hanspr)
    Pseudojump keepassxc #616 (hanspr)
    fix change method, properties not visible #615 (hanspr)
    Fix470 490 424 psuedo jump server #601 (hanspr)
    Fix556 keybindings #600 (hanspr)
    Restyle modal windows #574 (hanspr)

6.2.2 (2020-11-07)¶

Full Changelog

Implemented enhancements:

    Cluster session detach/re-attach toggle #680
    Handle untrusted certificates with rdesktop connection #629
    Close dialog box make "ok" the default button #592
    Support for Lubuntu 20.10 #720
    Linux Mint 20 Support - PackageCloud #663

Fixed bugs:

    Syntax error at /usr/share/asbru-cm/lib/PACKeyBindings.pm line 360 (Loki on EL 7.8) #714
    Use of uninitialized value in string eq at /opt/asbru/lib/asbru_conn line 175. #711
    Icon is not shown in tray bar anymore (Loki on EL8.2) #709
    print() on closed filehandle $CMD at /opt/asbru/lib/asbru_conn line 1320. #700
    KeePass password asked every time it is required #694
    Loki EL7 - Paste copied Password from node context menu. #664
    Another issue in generated autostart file #718
    FreeBSD login error again #708
    $TERMINAL{expect} Not Picking Up Anything #656
    Copy and paste Cyrillic text #652
    Error in generated autostart file #651
    High CPU utilization when disconnect #502

Closed issues:

    perl-X11-GUITest and Fedora 33 - unable to install the Asbru-CM #707
    add more options for the pre exec feature #704
    Startup script to run Ásbrú on Windows 10 ? #695
    ssvnc integration #684
    Option for cluster to open each connection in their own window #679
    Show/hide button for side pane (MyConnections etc.) #675
    Right click menu not working #668
    File transfer functions like SecureCRT are required #632

Merged pull requests:

    Add 'env GDK_BACKEND=x11' to generated .desktop files #722 (ErikTerwan)
    Add win10 instructions to docs #703 (SegiH)

6.2.1 (2020-06-06)¶

Full Changelog

Implemented enhancements:

    Keyboard Focus with RDP #638
    Connection UI enhancements #579

Fixed bugs:

    Fatal crash on post exec #618
    'Favourites'/'History'/'Clusters' tab label gets lost sometimes #230
    Authentication failed - escaping $ in passwords field (VNC) #641
    Paste connection password with shortcut does not resolve the KeePass password #627
    Impossible to edit generic command connections after updating to 6.2.0 #625

6.2.0 (2020-05-15)¶

Full Changelog

Implemented enhancements:

    Support for Fedora 32 #594
    a checkbox to lock Expect GUI 'goto' settings #564
    Loki - EL7 - Make Get Command Line dialog copiable #558
    Zoom in/out Text in terminal #447
    Loki branch - Improve anonymized configuration export #439
    Show KeePass integration icon near the password field #416
    Ask KeePass master password only when needed #415
    Support for non system wide installed instance of KeePassXC #414
    add \<PORT> to PAC internal variables #412
    Configuration file version #353
    Migrate config files #182
    Proper KeePass support #65
    Add KeePassx key file support #56
    Feature to reorganize remote commands #50

Fixed bugs:

    Loki - EL7 - Can't select text from the begining of a line on ssh terminal #560
    Loki - EL7 - Messages while closing some ssh sessions #557
    Remote commands: Send \<INTRO> at the end always working #605
    "Select key bindings to disable from TABs Window" not working for "alt-p". #590
    Loki - EL7 - More messages in terminal #588
    Connection panel resizes on terminal selection open #581
    Fedora 31 - Transparancy doesn't work #530
    Add to cluster menu no longer shows new cluster name #408

Closed issues:

    Closing a tab automatically disconnects the connection. #607
    Announcement for testers : configuration file change #569

Merged pull requests:

    document issues with old expects #619 (hanspr)
    set window title in detached tab #611 (hanspr)
    fix #408 #610 (hanspr)
    [Doc] - Correct typo in installation docs #609 (detvan)
    Docs keybinds jumpserver #602 (hanspr)
    Fix 590 #591 (hanspr)
    verify terminal exists before hiding #589 (hanspr)
    disable scroll over spin buttons in expect fix564 #586 (hanspr)
    Fix #581 redesigned statistics to avoid jumps #583 (hanspr)
    Cluster terminals #578 (hanspr)
    added warning unable to open session log #577 (hanspr)
    Fix569 #576 (hanspr)
    Keepass improvements #553 (hanspr)
    Fix533 2 #547 (hanspr)
    Fix warning keepass #546 (hanspr)
    Possible Fix533 #545 (hanspr)
    Rdp window #541 (hanspr)
    537 #539 (hanspr)
    Fix530 #536 (hanspr)
    Fix518 2 #527 (hanspr)
    Link docs tray #526 (hanspr)
    Fix warning unite #523 (hanspr)
    Fix518 #521 (hanspr)
    Fix ask protected #520 (hanspr)
    Fix182 #515 (hanspr)
    Fix294 #513 (hanspr)
    Wenter socket fix #512 (hanspr)
    Fix debug export #508 (hanspr)
    Anonimyse utility #507 (hanspr)
    Fix499 2 #503 (hanspr)
    Tooltips help #501 (hanspr)
    Fix499 #500 (hanspr)
    Fix414 #495 (hanspr)
    Compact position #494 (hanspr)
    Fix amp #493 (hanspr)
    Fix489 #491 (hanspr)
    Reimplement subst 2 #488 (hanspr)
    Pipe pass gtk warning #487 (hanspr)
    Fix412 #484 (hanspr)
    Link ssh docs #483 (hanspr)
    Fix encodin chain #480 (hanspr)
    Fix475 #477 (hanspr)
    Test expect #476 (hanspr)
    Fix463 #469 (hanspr)
    Copy paste spaces fix #467 (hanspr)
    Link help kpxc #465 (hanspr)
    Link help 4 #462 (hanspr)
    Fix447 #460 (hanspr)
    Link help 3 #457 (hanspr)
    Link help 2 #454 (hanspr)
    Link help #452 (hanspr)
    Design improvements #450 (hanspr)
    Fix439 4 #446 (hanspr)
    Fix439 3 #445 (hanspr)
    Fix434 5 41 #443 (hanspr)
    Fix439 2 #442 (hanspr)
    Fix439 #440 (hanspr)
    Fix437 #438 (hanspr)
    Facelift 1 #395 (hanspr)
    Fix50 #382 (hanspr)
    Fix65 #349 (hanspr)

6.1.3 (2020-04-28)¶

Full Changelog

Implemented enhancements:

    Add support for Ubuntu 20.04LTS focal #571

Fixed bugs:

    Jump Host Feature: unable to estabilish connection, Missing user name in temp ssh configuration; #463
    edit connection dialog not showed #572
    Empty value for "Get Command line" #518
    Window position not properly restored #498

Merged pull requests:

    reorganize main menu and connections information #580 (hanspr)

6.1.2 (2020-04-14)¶

Full Changelog

Implemented enhancements:

    Right click in connection pane brings up selected item properties, not under-mouse item properties #550

Fixed bugs:

    Loki - EL7 - Keepass master password popup send warning message to terminal #549
    text color in dark plasma themes #499

Closed issues:

    UI should notice that EXPECT timeouts set for a line are greater than global EXPECT timeout setting. #566
    clarification of documentation for KeePassXC entry protection #565
    Keepass integration - Username not shown during lookup #551
    Loki branch - EL7 - Post Exec execution crashes Asbru #537
    Loki branch - EL7 build - Terminal transparency doesn't work & Asbru main window unresponsive #533
    Asbru 6.1 on Mint/Tricia #517
    Drag and drop open tabs #510
    right click on last version #492
    Users Manual #430
    Asbru entry left on Window List (el7+el8) #294

Merged pull requests:

    [Doc] Create sensitive-info-notice.md (#1) #567 (grey-olli)
    Docs update keepasssc docs #552 (hanspr)
    Docs explanation about transparency and side effects #548 (hanspr)
    Docs improved documentation pre,post exec #540 (hanspr)
    downgrade config dir migration to homologate all the code #531 (hanspr)
    Docs fexed typos, added substitution example #528 (hanspr)
    Docs typos 2 #525 (hanspr)
    Docs added gnome shell extensions page #524 (hanspr)
    Update README.md and debian/files #522 (SwampRabbit)
    Docs updated keepass integration documentation page #496 (hanspr)

6.1.1 (2020-03-27)¶

Full Changelog
6.1.0 (2020-03-27)¶

Full Changelog

Implemented enhancements:

    sftp does not honor jump host setting #489
    Find connection tree (Ctrl-Shift-F) moves app to most left screen #486
    Loki branch - Change Expired Password #473
    ssh compression activated by change of other options #359
    (Snapshot Version 6) Folder appearance #306
    Invalid scroll position in KDE (gtk3) #303
    Reverse button order to "Cancel" "OK"? #229
    Add support for the "jump host" functionality of SSH #67

Fixed bugs:

    Loki branch - Copy connection password having the connection set with Keepass #475
    Loki Branch - Last commit on Preferences help button #455
    asbru-cm freeze #441
    6.0.4-1 - The tabs are not closed #434
    First connection to RDP in compact mode fails #426
    asbru-cm 6.1.0 rc1 on EL7 does not start #417
    ssh port number field too small #410
    Asbru 6.0.2 does not save text in 'info tab' #372
    SSH connection via SOCKS proxy not working #280

Closed issues:

    Loki branch - Keepass integration improvement #474
    On release pages the Fedora release notes links are broken #472
    App crashes (Can't find information for method TreeModel::sort_new_with_model) #421
    Remove Net::Proxy, replace with ssh option parameters #323
    libnet-proxy-perl dependency old and deprecated #218
    [gtk3] VTE history of commands #211
    [gtk3] VTE bold is bright option #210
    [gtk3] VTE visible bell #208
    [gtk3] VTE transparency #207
    [gtk3] VTE: Remove or rework "Term Emulation" #206

Merged pull requests:

    Docs added missing link to new article #516 (hanspr)
    Docs add warning about system tray on gnome-shell #514 (hanspr)
    Docs masks #511 (hanspr)
    Docs update manuals in reference to expect #509 (hanspr)
    Docs documented new themes #504 (hanspr)
    Docs 11 #482 (hanspr)
    improved password prompt regex explanation #478 (hanspr)

6.1.0rc2 (2020-03-14)¶

Full Changelog

Implemented enhancements:

    Loki branch - Auto saving feature #437
    asbru 6.2 (loki branch) vs asbru 6.1.0rc1 - Colors #431

Closed issues:

    Ásbrú crash on rdp logout in compact mode #436

Merged pull requests:

    Doc 8 #471 (hanspr)
    KeePass Manual 2 #466 (hanspr)
    added new keypass integration help docs #464 (hanspr)
    Docs 6 #461 (hanspr)
    Doc 5 #456 (hanspr)
    more typos fixed #453 (hanspr)
    Docs 3 #451 (hanspr)
    Docs 2 #449 (hanspr)

6.1.0rc1 (2020-03-01)¶

Full Changelog

Fixed bugs:

    UTF8 characters not showing properly #423

Closed issues:

    Installation fails in Arch or Manjaro #427
    6.1.0 rc1 SSH saved connections icon (EL7) #418
    Debian/Ubuntu 16.04 - Error during installation of package due to unmet dependencies #405
    Please add support to KeePass 2 Database File #400

Merged pull requests:

    Vncrdpsocksproxy #404 (hanspr)
    show hidden connection list on info tab selected #401 (hanspr)
    Find bug266 #398 (hanspr)
    Fix focus #396 (hanspr)
    URGENT REGRESSION MISSING KEY FILE #394 (hanspr)
    Treeview 2 #392 (hanspr)
    Cluster windows #390 (hanspr)
    Fix372 2 #388 (hanspr)
    Proxyvncrdp1 #384 (hanspr)
    Fixcompact #383 (hanspr)
    Fix373 #377 (hanspr)
    Fix372 #376 (hanspr)
    Handlepipechar #375 (hanspr)
    Portforward2 #371 (hanspr)
    Portforward improvement #370 (hanspr)
    Rdpvnc #368 (hanspr)
    Moveproxyssh #367 (hanspr)
    Transientwindows #365 (hanspr)
    Fix359 #362 (hanspr)
    Transparency1 #360 (hanspr)
    Fix67 2 #357 (hanspr)
    Fix67 1 #356 (hanspr)
    Fix323 improvements #348 (hanspr)
    Fix211 #339 (hanspr)
    Fix208 #338 (hanspr)
    Fix210 #337 (hanspr)
    Netproxy remove #336 (hanspr)
    Fix323 FOR TESTING #335 (hanspr)

6.0.4 (2020-02-04)¶

Full Changelog

Closed issues:

    Help with expect regex for this system #387
    Indentation problem #385
    Proposal to replace OSSP::uuid dependency for Data::UUID #374
    Some servers disconnected when using clusters #373
    6.0.2: Select-by-word characters not functioning #363
    Please correct Debian dependencies entry in wiki #361

Merged pull requests:

    fix find bug #399 (hanspr)
    Treeview master #393 (hanspr)
    improved restart logic on exit, removed sleep #389 (hanspr)
    retry on timeout #380 (hanspr)

6.0.3 (2020-01-17)¶

Full Changelog

Implemented enhancements:

    Port asbru_from_superputty.py to python3 #355

Fixed bugs:

    Question: Is there a dependency on Python 2? #354

6.0.2 (2020-01-11)¶

Full Changelog

Implemented enhancements:

    asbru for centos #60
    Icons and some buttons are small on 4K display #55

Fixed bugs:

    Host key verification throws script error #344
    local command automated username error. #341
    RDP keyboard stops to work #331
    Remote commands in Cluster connections #304
    Crash when re-attaching window #70

Closed issues:

    Terminals Tabbed Window fails in Compact Window Layout #352
    Keepass does not work in latest #343
    asbru-cm.spec - another similar minor issue #333
    asbru-cm.spec file - minor correction #332
    Resizing left menu section doesn't repaint the console properly #310
    2FA under Authentication options #300

Merged pull requests:

    fix343 #350 (hanspr)
    fix #341 #347 (hanspr)
    fix #344 #346 (hanspr)
    fixed regression tabbed terminals #334 (hanspr)

6.0.1 (2020-01-04)¶

Full Changelog

Implemented enhancements:

    Password is visible on the taskbar tooltip for RDP session (xfreerdp) #328

Fixed bugs:

    Asbru-cm doesn't start anymore after upgrading to 6.0 #329
    Click on re-attached tab, open an empty window #327

Closed issues:

    Dropping support for legacy distributions #325

6.0.0 (2020-01-02)¶

Full Changelog

Implemented enhancements:

    Can not install on LinuxMint/tricia #321
    [gtk3] GtkDialog mapped without a transient parent #312
    Copy password from another connection defined in the Connections List #295
    Double click on tab to restart #281
    gtk3 Minimalist Main Window #262
    Disable ssh's X forwarding by default #247
    not found asbru-cm deb from repository #237
    Automatic Keyboard Focus #148
    More compact server-list tree #133
    Garbage characters in shell logfiles #132
    Flatpak support #83
    Add feature to see RDP connection log (especially errors) directly in asbru-cm #76
    Right-click on connection-tree changes selection #51
    Renaming a cloned connection can be confusing #37

Fixed bugs:

    Some regressions in gtk3 #317
    RPM packaging issue: res directory is in incorrect path #302
    VNC connection status is not parsed properly (always "connecting") #301
    Cannot change proxy settings #291
    Can not input username more than 14 symbols on Proxy tab #288
    Terminals not closing on el7 #269
    [gtk3] It doesn't close, the windows #259
    Removing a local/remote command/macro might remove another one #252
    asbru-cm gtk3 rpm missing file #250
    Latest asbru-cm 6.0 builds not working on RHEL 7.7 #240
    \<-= DISCONNECTED (PRESS \<ENTER> TO RECONNECT) issue in gtk3 #232
    [gtk3] VNC connection (in embed mode) does not work properly #199
    Deleting one cluster deletes all #180
    VNC options empty: Can't call method "_buildGUI" on an undefined value #178
    Right mouse click on tab title stop working #169
    Cannot interact with multiple selections in Connection list #168
    ncurses: showing applications in ncurses is looking very ugly #143
    Cluster explode: window sizes and placement are incorrect #98
    "Retab" button in PCC causes asbru-cm to crash #52
    Pasting long passwords into password prompt doesn't always work #49
    starting asbru-cm a second time leads to segfault #23
    Guessing the hostname with \<ctrl>+\<shift>+\<g> doesn't work with zsh #9
    Errors while opening local shell should not be shown as messages of the remote session #4

Closed issues:

    [gtk3] alt-e does not open connection editor #314
    GTK3 about size of preference #293
    Manual password required #283
    Unable to Install GTK2 or GTK3 versions on Centos 7.6 #274
    Placement of the context menu after right click the asbru-cm tray icon (on EL7) #273
    gtk3 version not running on debian 10, xfce4 #272
    [gtk3] Remove termcap #271
    Move all encoding to utf8 #268
    Find option shows lots of weird characters #266
    asbru crashed, config file empty #265
    [GTK3] Typing text not replicated on cluster windows #261
    vteFeedChild #256
    [gtk3] Faulty link in license dialog #251
    gtk3 Favourites #245
    Full width banner #233
    SSH options: clashing local port wipes out previous entries #179

Merged pull requests:

    added execute cluster commit on confirmed if confirmation was required #324 (hanspr)
    added cluster commit, #304 #322 (hanspr)
    fixed regression removing unless from eq to ne #320 (hanspr)
    Fix spelling in banner of "Power Cluster Controller" #319 (merikz)
    revised unless statements, caused regressions #318 (hanspr)
    [gtk3] regression from removal of "unless" (fixes #314) #315 (merikz)
    Remove GTK-Message:GtkDialog mapped without a transient parent. (#312) #313 (merikz)
    added feature #295 copy password, passphrase from terminal, connections #298 (hanspr)
    Shrink preferences #296 (hanspr)
    Fix layout #292 (hanspr)
    Fix229 #290 (hanspr)
    Fix288 #289 (hanspr)
    Fix232 #287 (hanspr)
    Add layouts #286 (hanspr)
    Fix179 #284 (hanspr)
    Automatically create configuration backups #279 (hanspr)
    Proposal Export debug information #278 (hanspr)
    removed depresiated method in gtk3, fixed render problem with \<>, fix… #277 (hanspr)
    Fix regression #276 (hanspr)
    Utf8 migration #275 (hanspr)
    Menu icons #260 (hanspr)
    Add pcc tray menu #258 (hanspr)
    Fix mouse on cluster #257 (hanspr)
    fix copy with mouse selection gets lost sometimes #255 (hanspr)
    better window placement on explode #254 (hanspr)
    Utf8 test (#133) #253 (hanspr)
    Fix #168 #249 (hanspr)
    Gtk3 Save sessions popup menu #244 (hanspr)
    Gtk3 changed configdir to config-dir #241 (hanspr)
    Gtk3 Add global configuration settings #238 (hanspr)
    Gtk3format Large cosmetic change #236 (hanspr)
    Gtk3format. PACUtils.pm coding standard #235 (hanspr)
    Gtk3format, format, coding standard and documentation #231 (hanspr)
    Gtk3format PACTerminal.pm #228 (hanspr)
    Gtk3format PACMain #225 (hanspr)
    Gtk3format asbru-cm #224 (hanspr)
    CODING STANDARDt added #221 (hanspr)
    Gtk3 Fixes and proposed improvements #213 (hanspr)

5.2.1 (2019-10-26)¶

Full Changelog

Implemented enhancements:

    [gtk3] reformat code request #217
    PNG screenshots #194
    Port to GTK3 and new VTE #176
    RSA authentication on MOSH protocol #173
    Highlight search results in terminal #172
    Installation on Linux Mint 19.2 Tina does not work #166
    Open duplicated connection just after current active tab #165
    Relocate "Set keyboard focus" button to gain a piece of screen in embedded tabs #160
    Add a free textbox to pass custom options in xfreerdp #158
    Paste current connection password button #152
    SSH authenticity of host issue #145
    Debian experimental (buster) removed libgnome2... #114
    Installing on fedora not working #106
    Unable to install on Linux Mint 19 (LTS Release) #96
    Debian - build libgnome2-vte-perl need additional dependency #93
    [rdesktop] Exhance parameters for rdesktop (or any other client) #81
    'Start a shell upon startup' does not start a shell on startup #79

Fixed bugs:

    [gtk3] Can not type passprhasse, wrong terminal focus, can not login to any server #204
    "split" misspelled #177
    Size of embedded xfreerdp #153
    Cant start SSH session since last update (missing PACUtils.pm) on Fedora #147
    New windows will not get focus #142
    App freezes when connecting after saving/editing connection #139
    Forced password change on logon closes connection #138
    Cluster Controller - Uninitialized value (Expect.pm) #134

Closed issues:

    Warnings when renaming a connection #243
    gtk3 utf8 encoding terminal names #242
    [gtk3] Update xfreerdp dependency (if possible) #239
    Draw text on the banner as real text #234
    (pac_conn:22985): Gtk-WARNING Theme parsing error: #227
    [gtk3] gtkSocket: only works under X11 #226
    KDE Neon compatibility #220
    [gtk3] Windows close on vertical resize #216
    [gtk3] Splash screen progress bar height #215
    ubuntu 19.10 support please #214
    [gtk3] Big GTK2 leftover cleanup #212
    [gtk3] VTE right-click #209
    [gtk3] Clusters sync input no longer works #205
    [gtk3] Asbru crashes if you inactivate option "Put Terminals y Tabs" #203
    [gtk3] Typelib file for namespace 'Wnck', version '3.0' not found #202
    Not installable on Debian Sid #201
    Suspicious pipe chars in regexps #197
    [gtk3] Local shell colors not remembered #196
    [gtk3] Set VTE's cwd via proper API #195
    [gtk3] feed_child: passed too many parameters #193
    [gtk3] Searching in the terminal doesn't work #192
    [gtk3] New shortcuts shown that don't work #191
    [gtk3] "Connection UUID" text entry too large #190
    [gtk3] Wrong label for Proxy Configuration #189
    [gtk3] Broken screenshot viewer #188
    Launching a second Ásbrú crashes the first one #187
    [gtk3] Can't launch group #186
    [gtk3] Narrow input fields #185
    [gtk3] No statistics for groups #184
    Reports two more nodes #183
    Readonly mode doesn't work #181
    How can I load a PuTTy (.ppk) private key into an ssh connection? #161
    Common Router characters do not behave correctly (TAB, CTRL-a, CTRL-e, UP-Arrow) #141
    Snap support #97
    Error prevents RDP session from starting #57

Merged pull requests:

    Enabled RSA Authentication via MOSH protocol #174 (bitchecker)
    Improving RDP methods #163 (figue)
    GUI: down 'Set keyboard focus' button to bottombox to gain a piece of… #162 (figue)
    Method rdesktop: add 32 bpp #159 (figue)
    Method xfreerdp: add 32 bpp #157 (figue)
    Add dynamic resolution and X11::GUITest method to calculate embed window size properly #155 (figue)

5.2.0 (2019-04-19)¶

Full Changelog

Implemented enhancements:

    Ubuntu 19.04 - uninstallable #140
    FreeBSD port #119
    Changing shortcuts for COPY and PASTE commands #115
    Missing dependencies on (k)ubuntu 18.10 #113
    Retrieve terminal method inside scripts #105
    FreeBSD login #104
    make the "Info" tab always visible. #100
    Make it possible to close the Info tab #92
    Missing dependency in .deb package #90
    Add support for bionic #66

Fixed bugs:

    App closes/crashes #135
    Perl script when connection is launched executes multiple times #128
    Asbru-CM should save its main window position #123
    SHIFT+CTRL+V / SHIFT+CTRL+C seems not working #122
    tab switching / focus issue #120
    problem in (Cisco) ssh session #87

Closed issues:

    Wrong tooltip for Session log numbers #131
    Button for saythanks.io #126
    No colors and long wait for shell when connecting to mikrotik routers #125
    Executing whit sshrc method #118
    Why not a Mac osx version or port??? #116
    It doesnt connect #111
    Connection " is of type ", which is not supported.... #91
    zssh support #88

Merged pull requests:

    update split panes separator handling #124 (syco)
    Add option to change main window title with terminal title. #103 (kak-tus)

5.1.0 (2018-07-23)¶

Full Changelog

Implemented enhancements:

    Show button bar when hidden #89
    Adding new codenames in repository for Linux Mint (18.x) #63
    Add a "Close disconnected tabs" option to tab-bar-rightclick-menu #59
    Auto-save by default #44
    asbru-cm could not be installed in Redhat Enterprise Linux/CentOS 7 #30
    rpm spec file #24

Fixed bugs:

    Crash (Delete connection) #78
    rdp connection over xfreerdp doesn't work with special characters in password #75
    Connections Tree Panel reopenes when you switch tabs #58
    RPM package installs /asbru-cm in root #47
    desktop file is not installed to correct location #22
    Canceling user input dialogs for expect produces an error message #10

Closed issues:

    Merging of two yaml configurations asbru-cm (for wiki) #85
    Fedora 27/28: Permission denied opening ssh/rdp #84
    Split horizontal/vertical reversed #71
    Problem auto connect password #61
    256 color support #54
    Mass-Import from a csv File #48
    Add a way to force a reconnect #46
    Opening a new connection maximizes the window #42
    Focus on connections can change and not be apparent why #38
    Export or import connections in .ssh/config #31
    ansible install script #20

Merged pull requests:

    Tweaks for more vertical terminal space #86 (lukefor)
    201804 split fix2 #80 (basos9)
    Fix append group name semantics (append instead of prepend) #77 (basos9)
    Removed deprecated "have" function #64 (daugustin)
    Don't swallow key-accelerators which are not used by asbru #53 (nomike)

5.0.0 (2017-12-29)¶

Full Changelog

Implemented enhancements:

    Superputty to Asbru #39
    Bad repository generated by asbru.sh on ubuntu #21
    Request - Link binary to something in $PATH #15

Fixed bugs:

    Renaming node adds - #36
    Duplicated options strings on SSH Advanced options tab #19
    segfault on exit like good old pac #18

Closed issues:

    Session disconected after sucessful login and interactive menu showed #35
    User Variables does not work #28
    variable not allowed to be undef where GtkTreePath is wanted at /opt/asbru/lib/PACMain.pm line 986. #5

Merged pull requests:

    Adding script to convert SuperPutty Sessions.xml file to Asbru-cm yam… #40 (sonicepk)
    New style of packaging #33 (KlaasT)
    Debian automatic building #32 (KlaasT)
    [Bugfix] - User variables doesn't work #29 (merikz)
    [Usability] Add tooltip to "Edit" -> "Expect" when disabled #26 (merikz)
    add Arch/Manjaro instruction and some fix for this distributives #25 (b17k0)

5.0.0-RC4 (2017-11-12)¶

Full Changelog

Implemented enhancements:

    bracketed paste mode #12

Fixed bugs:

    Colors are not initialized correctly #7
    Starting an entry from the connections tree maximizes the progam window #6

Closed issues:

    color #13
    Detached windows still use a logo variant of PAC #11

5.0.0-RC3 (2017-10-30)¶

Full Changelog

Implemented enhancements:

    libgnome2-vte-perl_0.11-1_amd64.deb could not be installed on ubuntu 17.10 (artful) #3
    No packages for Ubuntu #2

Closed issues:

    Add screenshots #1

5.0.0-RC2 (2017-09-23)¶

Full Changelog
5.0.0-RC1 (2017-09-20)¶

Full Changelog

* This Changelog was automatically generated by github_changelog_generator
```

`