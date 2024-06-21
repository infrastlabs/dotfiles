#!/bin/bash
cur=$(cd "$(dirname "$0")"; pwd)
cd $cur

function doConf(){
  chmod +x ./.artwork-main/Desktop/* ./bin/*
  ls -la

  # bin,etc,usr
  \cp -a ./src/bin/* /usr/bin/
  \cp -a ./src/etc/* /etc/ #/etc: dbus-1
  \cp -a ./src/usr/* /usr/

  # dots: /etc/skel
  dst=/etc/skel
  \cp -a ./.artwork-main/. $dst/
  \cp -a ./.artwork-box/. $dst/
  \cp -a ./.collection/mint-artwork-xfce/. $dst/
  \cp -a ./.collection/xf-artwork/. $dst/

  # dconf: ibus, plank, engrampa; dconf dump / > xx.ini
  mkdir -p /etc/dconf/db;\
  cat ./src/dconf.ini |grep -Ev '^;' > /tmp/.dconf.ini; \
  # gosu_x2; TODO: osproc > 2 err; @arm64
  gosu headless bash -c "dbus-launch dconf reset -f /; dbus-launch dconf load / < /tmp/.dconf.ini; ";\
  dbus-launch dconf update;

  # plank-theme: clear3d
  mkdir -p /usr/share/plank/themes/Default
  \cp -a ./src/clear3d.theme /usr/share/plank/themes/Default/dock.theme

# bg,icon,theme: wget -qO
$RUN cd /etc/skel/.config/plank/dock1/launchers && rm -f ristretto* geany* flameshot*; \
  \
  export assets_repo=https://gitee.com/infrastlabs/docker-headless; \
  mkdir -p /usr/share/backgrounds/xfce/; \
  curl -k -fsSL -o /usr/share/backgrounds/xfce/xfce-teal.png $assets_repo/raw/dev/_doc/assets/bg/bg-debian-liteblue.png; \
  curl -k -fsSL -o /usr/share/backgrounds/xfce/xfce-pure-blue.jpg $assets_repo/raw/dev/_doc/assets/bg/pure-blue.jpg; 
  # \
  # 清理ubt自带图标, keep项: hicolor ##TODO @pkg-installer
  # locolor gnome bloom
  # cd /usr/share/icons && rm -rf Humanity* ubuntu-mono* LoginIcons Tango; \
  # \
  sed -i "s^value=\"Mint-Y\"^value=\"Papirus-Bunsen-bluegrey\"^g" /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml; \
  sed -i "s^xfce-teal.png^xfce-pure-blue.jpg^g" /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml;

  # env
  # : > /.env2
  # cat env |egrep -v "^#|^$" |while read one; do
  #   echo "export $one" >> /.env2
  # done
}
doConf


# cp from Dockerfile.xx
bash /etc/skel/.fluxbox/fluxbox.sh; #gen>> /etc/skel/.fluxbox/{init,overlay}
# skel: copy
\cp -a /etc/skel/. /home/headless/; chown -R headless:headless /home/headless;


# spe
dst=/usr/local/static/openbox/libexec; mkdir -p $dst
cat > $dst/openbox-autostart<<EOF
exec bash ~/.config/openbox/autostart;
EOF
chmod +x $dst/openbox-autostart

exit 0
# sv restart x22-de #restart desktop-session
