
**Ref**

- docker-headless
- docker-x11base|(chore) dir-refactor
  - src/{bin,etc,usr}
  - .dot> .artwork-main
  - .box-artwork> .artwork-box
  - .xf-artwork> .collection/xf-artwork
  - .mint-artwork-xfce> .collection/mint-artwork-xfce

```bash
dst=/tmp/dots
rm -rf $dst; git clone --depth=1 https://gitee.com/infrastlabs/dotfiles $dst

cd $dst
bash refresh.sh

# export START_SESSION=startfluxbox #openbox-session xfce4-session
# git pull; bash refresh.sh; sv restart x21-de
```

**TODO**

- core-x3,`busybox,openwrt,debian,fedora`
  - openbox-tint2/fluxbox: arm64,armv7
- app-`alpine,ubuntu,opensuse`
  - xfce4+tint2: amd64, arm64;
  - tzone,local,ibus-input,mesa
  - alpine-firefox
  - undock-apps

```bash
# tint2-arm64 fix; compile: geany,pcmanfm,xlunch,pulse-pnmixer,

# openbox-theme
keys


# fluxbox-slax-theme



```

**headless**

```bash
# ubt
pasystray, plank;

# ubt.conf
flameshot, ibus-rime #OK

# alpine
ibus, ibus-rime # alpine_none: librime-data-wubi


# xrandr: @x11-xserver-utils
apt install pasystray xrandr plank engrampa #ubt,deb

```
