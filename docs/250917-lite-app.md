

- ldd

```bash
apt install --no-install-recommends sakura mousepad geany thunar xarchiver plank
apt install --no-install-recommends spacefm ristretto engrampa scrot
apt install --no-install-recommends spacefm ristretto engrampa scrot sakura mousepad geany thunar xarchiver plank
# which
root@ad3799c7755e:/# which  spacefm ristretto engrampa scrot sakura mousepad geany thunar xarchiver plank        
  /usr/bin/spacefm
  /usr/bin/ristretto
  /usr/bin/engrampa
  /usr/bin/scrot
  /usr/bin/sakura
  /usr/bin/mousepad
  /usr/bin/geany
  /usr/bin/thunar
  /usr/bin/xarchiver
  /usr/bin/plank
# ldd
root@ad3799c7755e:/# echo "$apps" |while read one; do echo $one;  ldd $one |sort |wc; done
/usr/bin/spacefm ##
    155     616   12193
/usr/bin/ristretto
     79     312    6151
/usr/bin/engrampa
     71     280    5511
/usr/bin/scrot ##
     19      72    1337
/usr/bin/sakura
     81     320    6279
/usr/bin/mousepad
     75     296    5833
/usr/bin/geany
     71     280    5497
/usr/bin/thunar
     81     320    6317
/usr/bin/xarchiver
     68     268    5270
/usr/bin/plank
     78     308    6100
```


- apt-install

```bash
# ubt20
# root@x11-ubuntu:/# apt install --no-install-recommends leafpad
Package leafpad is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source
E: Package 'leafpad' has no installation candidate
# root@x11-ubuntu:/# apt install --no-install-recommends spacefm
The following NEW packages will be installed:
  adwaita-icon-theme desktop-file-utils fontconfig fontconfig-config fonts-dejavu-core gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libaom0 libasound2 libasound2-data
  libass9 libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data libavahi-common3 libavcodec58 libavfilter7 libavformat58 libavutil56 libbluray2 libbs2b0 libcairo-gobject2
  libcairo2 libchromaprint1 libcodec2-0.9 libcups2 libdatrie1 libdbus-1-3 libdrm-common libdrm2 libexpat1 libffmpegthumbnailer4v5 libfftw3-double3 libflite1 libfontconfig1 libfreetype6
  libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgme0 libgomp1 libgraphite2-3 libgsm1 libgtk2.0-0 libgtk2.0-common libharfbuzz0b libicu66 libjbig0 libjpeg-turbo8
  libjpeg8 liblilv-0-0 libmpg123-0 libmysofa1 libnorm1 libnuma1 libopenjp2-7 libopenmpt0 libopus0 libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpgm-5.2-0 libpixman-1-0
  libpng16-16 libpostproc55 librsvg2-2 librsvg2-common librubberband2 libsamplerate0 libserd-0-0 libshine3 libsnappy1v5 libsodium23 libsord-0-0 libsoxr0 libspeex1 libsratom-0-0
  libssh-gcrypt-4 libstartup-notification0 libswresample3 libswscale5 libthai-data libthai0 libtheora0 libtiff5 libtwolame0 libva-drm2 libva-x11-2 libva2 libvdpau1 libvidstab1.1
  libvorbisfile3 libvpx6 libwavpack1 libwebp6 libwebpmux3 libx11-6 libx11-data libx11-xcb1 libx264-155 libx265-179 libxau6 libxcb-render0 libxcb-shm0 libxcb-util1 libxcb1 libxcomposite1
  libxcursor1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxi6 libxinerama1 libxml2 libxrandr2 libxrender1 libxvidcore4 libzmq5 libzvbi-common libzvbi0 ocl-icd-libopencl1
  shared-mime-info spacefm spacefm-common tzdata ubuntu-mono ucf
0 upgraded, 131 newly installed, 0 to remove and 26 not upgraded.
Need to get 65.2 MB of archives.
After this operation, 227 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends thunar   
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service desktop-file-utils exo-utils fontconfig fontconfig-config fonts-dejavu-core glib-networking
  glib-networking-common glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0
  libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3
  libdconf1 libdevmapper1.02.1 libepoxy0 libexif12 libexo-2-0 libexo-common libexo-helpers libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common
  libglib2.0-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libgudev-1.0-0 libharfbuzz0b libice6 libicu66 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0
  libjson-glib-1.0-common libkmod2 liblcms2-2 libnotify4 libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng16-16 libproxy1v5 librest-0.7-0
  librsvg2-2 librsvg2-common libsm6 libsoup-gnome2.4-1 libsoup2.4-1 libstartup-notification0 libthai-data libthai0 libthunarx-3-0 libtiff5 libwayland-client0 libwayland-cursor0
  libwayland-egl1 libwebp6 libx11-6 libx11-data libx11-xcb1 libxau6 libxcb-render0 libxcb-shm0 libxcb-util1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6
  libxfce4ui-2-0 libxfce4ui-common libxfce4util-common libxfce4util7 libxfconf-0-3 libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxml2 libxrandr2 libxrender1 shared-mime-info systemd
  systemd-sysv systemd-timesyncd thunar thunar-data tzdata ubuntu-mono ucf x11-common xfconf xkb-data
0 upgraded, 122 newly installed, 0 to remove and 26 not upgraded.
Need to get 35.4 MB of archives.
After this operation, 159 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends ristretto
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service fontconfig fontconfig-config fonts-dejavu-core glib-networking glib-networking-common
  glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data
  libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3 libdconf1 libdevmapper1.02.1
  libepoxy0 libexif12 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libharfbuzz0b
  libice6 libicu66 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0 libjson-glib-1.0-common libkmod2 liblcms2-2 libmagic-mgc libmagic1 libpam-systemd libpango-1.0-0
  libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng16-16 libproxy1v5 librest-0.7-0 librsvg2-2 librsvg2-common libsm6 libsoup-gnome2.4-1 libsoup2.4-1 libstartup-notification0
  libthai-data libthai0 libtiff5 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libx11-6 libx11-data libx11-xcb1 libxau6 libxcb-render0 libxcb-shm0 libxcb-util1 libxcb1
  libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6 libxfce4ui-2-0 libxfce4ui-common libxfce4util-common libxfce4util7 libxfconf-0-3 libxfixes3 libxi6 libxinerama1 libxkbcommon0
  libxml2 libxrandr2 libxrender1 ristretto shared-mime-info systemd systemd-sysv systemd-timesyncd tzdata ubuntu-mono ucf x11-common xfconf xkb-data
0 upgraded, 115 newly installed, 0 to remove and 26 not upgraded.
Need to get 34.5 MB of archives.
After this operation, 159 MB of additional disk space will be used.
# root@x11-ubuntu:/# 


# root@x11-ubuntu:/# apt install --no-install-recommends mousepad
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service fontconfig fontconfig-config fonts-dejavu-core glib-networking glib-networking-common
  glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data
  libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3 libdconf1 libdevmapper1.02.1
  libepoxy0 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libgtksourceview-3.0-1
  libgtksourceview-3.0-common libharfbuzz0b libicu66 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0 libjson-glib-1.0-common libkmod2 liblcms2-2 libpam-systemd
  libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng16-16 libproxy1v5 librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libthai-data
  libthai0 libtiff5 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libx11-6 libx11-data libxau6 libxcb-render0 libxcb-shm0 libxcb1 libxcomposite1 libxcursor1 libxdamage1
  libxdmcp6 libxext6 libxfce4util-common libxfce4util7 libxfconf-0-3 libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxml2 libxrandr2 libxrender1 mousepad shared-mime-info systemd
  systemd-sysv systemd-timesyncd tzdata ubuntu-mono ucf xfconf xkb-data
0 upgraded, 106 newly installed, 0 to remove and 26 not upgraded.
Need to get 34.4 MB of archives.
After this operation, 154 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends engrampa
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service engrampa engrampa-common fontconfig fontconfig-config fonts-dejavu-core glib-networking
  glib-networking-common glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0
  libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcaja-extension1 libcolord2 libcryptsetup12 libcups2
  libdatrie1 libdbus-1-3 libdconf1 libdevmapper1.02.1 libepoxy0 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3
  libgtk-3-0 libgtk-3-common libharfbuzz0b libicu66 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0 libjson-glib-1.0-common libkmod2 liblcms2-2 libmagic-mgc libmagic1
  libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng16-16 libproxy1v5 librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1
  libthai-data libthai0 libtiff5 libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libx11-6 libx11-data libxau6 libxcb-render0 libxcb-shm0 libxcb1 libxcomposite1 libxcursor1
  libxdamage1 libxdmcp6 libxext6 libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxml2 libxrandr2 libxrender1 p7zip p7zip-full shared-mime-info systemd systemd-sysv systemd-timesyncd
  tzdata ubuntu-mono ucf xkb-data
0 upgraded, 106 newly installed, 0 to remove and 26 not upgraded.
Need to get 36.3 MB of archives.
After this operation, 174 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends xarchiver
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service fontconfig fontconfig-config
  fonts-dejavu-core glib-networking glib-networking-common glib-networking-services gsettings-desktop-schemas
  gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0
  libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3
  libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3 libdconf1
  libdevmapper1.02.1 libepoxy0 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0
  libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libharfbuzz0b libicu66 libjbig0
  libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0 libjson-glib-1.0-common libkmod2 liblcms2-2
  libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng16-16 libproxy1v5
  librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libthai-data libthai0 libtiff5
  libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libx11-6 libx11-data libxau6 libxcb-render0
  libxcb-shm0 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxi6 libxinerama1
  libxkbcommon0 libxml2 libxrandr2 libxrender1 shared-mime-info systemd systemd-sysv systemd-timesyncd tzdata
  ubuntu-mono ucf xarchiver xkb-data
0 upgraded, 100 newly installed, 0 to remove and 26 not upgraded.
Need to get 33.8 MB of archives.
After this operation, 149 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends scrot   
The following NEW packages will be installed:
  giblib1 libfreetype6 libgif7 libid3tag0 libimlib2 libjbig0 libjpeg-turbo8 libjpeg8 libpng16-16 libtiff5 libwebp6 libx11-6 libx11-data libx11-xcb1 libxau6 libxcb-shm0 libxcb1 libxdmcp6
  libxext6 libxfixes3 scrot
0 upgraded, 21 newly installed, 0 to remove and 26 not upgraded.
Need to get 2104 kB of archives.
After this operation, 7490 kB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends dunst
The following NEW packages will be installed:
  dbus dbus-user-session dunst fontconfig fontconfig-config fonts-dejavu-core libapparmor1 libargon2-1 libcairo2 libcryptsetup12 libdatrie1 libdbus-1-3 libdevmapper1.02.1 libexpat1
  libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3 libharfbuzz0b libicu66 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4
  libkmod2 libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng16-16 libthai-data libthai0 libtiff5 libwebp6 libx11-6 libx11-data libxau6
  libxcb-render0 libxcb-shm0 libxcb1 libxdmcp6 libxext6 libxinerama1 libxml2 libxrandr2 libxrender1 libxss1 shared-mime-info systemd systemd-sysv systemd-timesyncd tzdata ucf x11-common
0 upgraded, 58 newly installed, 0 to remove and 26 not upgraded.
Need to get 21.3 MB of archives.
After this operation, 83.2 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends geany
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service fontconfig fontconfig-config fonts-dejavu-core geany geany-common glib-networking glib-networking-common
  glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data
  libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3 libdconf1 libdevmapper1.02.1
  libepoxy0 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libharfbuzz0b libicu66
  libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0 libjson-glib-1.0-common libkmod2 liblcms2-2 libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0
  libpixman-1-0 libpng16-16 libproxy1v5 librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libthai-data libthai0 libtiff5 libwayland-client0 libwayland-cursor0
  libwayland-egl1 libwebp6 libx11-6 libx11-data libxau6 libxcb-render0 libxcb-shm0 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6 libxfixes3 libxi6 libxinerama1
  libxkbcommon0 libxml2 libxrandr2 libxrender1 shared-mime-info systemd systemd-sysv systemd-timesyncd tzdata ubuntu-mono ucf xkb-data
0 upgraded, 101 newly installed, 0 to remove and 26 not upgraded.
Need to get 36.3 MB of archives.
After this operation, 159 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends sakura
The following NEW packages will be installed:
  adwaita-icon-theme dbus dbus-user-session dconf-gsettings-backend dconf-service fontconfig fontconfig-config fonts-dejavu-core glib-networking glib-networking-common
  glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data
  libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3 libdconf1 libdevmapper1.02.1
  libepoxy0 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libglib2.0-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libharfbuzz0b libicu66
  libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0 libjson-glib-1.0-common libkmod2 liblcms2-2 libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0
  libpixman-1-0 libpng16-16 libproxy1v5 librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libthai-data libthai0 libtiff5 libvte-2.91-0 libvte-2.91-common
  libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libx11-6 libx11-data libxau6 libxcb-render0 libxcb-shm0 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6
  libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxml2 libxrandr2 libxrender1 sakura shared-mime-info systemd systemd-sysv systemd-timesyncd tzdata ubuntu-mono ucf xkb-data
0 upgraded, 102 newly installed, 0 to remove and 26 not upgraded.
Need to get 33.6 MB of archives.
After this operation, 148 MB of additional disk space will be used.
# root@x11-ubuntu:/# apt install --no-install-recommends plank 
The following NEW packages will be installed:
  adwaita-icon-theme bamfdaemon dbus dbus-user-session dconf-gsettings-backend dconf-service fontconfig fontconfig-config fonts-dejavu-core glib-networking glib-networking-common
  glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme libapparmor1 libargon2-1 libatk-bridge2.0-0 libatk1.0-0 libatk1.0-data
  libatspi2.0-0 libavahi-client3 libavahi-common-data libavahi-common3 libbamf3-2 libcairo-gobject2 libcairo2 libcolord2 libcryptsetup12 libcups2 libdatrie1 libdbus-1-3 libdbusmenu-glib4
  libdbusmenu-gtk3-4 libdconf1 libdevmapper1.02.1 libepoxy0 libexpat1 libfontconfig1 libfreetype6 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgee-0.8-2 libglib2.0-0
  libgnome-menu-3-0 libgraphite2-3 libgtk-3-0 libgtk-3-common libgtop-2.0-11 libgtop2-common libharfbuzz0b libicu66 libjbig0 libjpeg-turbo8 libjpeg8 libjson-c4 libjson-glib-1.0-0
  libjson-glib-1.0-common libkmod2 liblcms2-2 libpam-systemd libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libplank-common libplank1 libpng16-16 libproxy1v5
  librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libstartup-notification0 libthai-data libthai0 libtiff5 libwayland-client0 libwayland-cursor0 libwayland-egl1
  libwebp6 libwnck-3-0 libwnck-3-common libx11-6 libx11-data libx11-xcb1 libxau6 libxcb-render0 libxcb-shm0 libxcb-util1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxdmcp6 libxext6
  libxfixes3 libxi6 libxinerama1 libxkbcommon0 libxml2 libxrandr2 libxrender1 libxres1 plank shared-mime-info systemd systemd-sysv systemd-timesyncd tzdata ubuntu-mono ucf xkb-data
0 upgraded, 116 newly installed, 0 to remove and 26 not upgraded.
Need to get 34.4 MB of archives.
After this operation, 152 MB of additional disk space will be used.
```

- ldd-dtl

```bash

root @ deb11-11 in ~ |10:30:14  
$ docker exec -it ad3799c7755e bash
root@ad3799c7755e:/# apps=$(which  spacefm ristretto engrampa scrot sakura mousepad geany thunar xarchiver plank)
root@ad3799c7755e:/# echo "$apps" |while read one; do echo $one;  ldd $one |sort; done
/usr/bin/spacefm
	/lib64/ld-linux-x86-64.so.2 (0x00007f810de14000)
	libOpenCL.so.1 => /lib/x86_64-linux-gnu/libOpenCL.so.1 (0x00007f81062f4000)
	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007f810c45e000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f810d11b000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f810a4b6000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f810cadb000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f810cae0000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f810cad6000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f810a4ae000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f810cac1000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f810cda7000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f810cafa000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f810cb0e000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f810caed000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f810cb13000)
	libaom.so.0 => /lib/x86_64-linux-gnu/libaom.so.0 (0x00007f8108b69000)
	libasound.so.2 => /lib/x86_64-linux-gnu/libasound.so.2 (0x00007f8103cf5000)
	libass.so.9 => /lib/x86_64-linux-gnu/libass.so.9 (0x00007f8104d91000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f810cd7d000)
	libavcodec.so.58 => /lib/x86_64-linux-gnu/libavcodec.so.58 (0x00007f810ac23000)
	libavfilter.so.7 => /lib/x86_64-linux-gnu/libavfilter.so.7 (0x00007f810a779000)
	libavformat.so.58 => /lib/x86_64-linux-gnu/libavformat.so.58 (0x00007f810c1e4000)
	libavutil.so.56 => /lib/x86_64-linux-gnu/libavutil.so.56 (0x00007f810aafa000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f810a457000)
	libbluray.so.2 => /lib/x86_64-linux-gnu/libbluray.so.2 (0x00007f8109f1d000)
	libbs2b.so.0 => /lib/x86_64-linux-gnu/libbs2b.so.0 (0x00007f8106232000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f8104cbb000)
	libbz2.so.1.0 => /lib/x86_64-linux-gnu/libbz2.so.1.0 (0x00007f810a1c0000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f810cdb7000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007f810447b000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f810d694000)
	libchromaprint.so.1 => /lib/x86_64-linux-gnu/libchromaprint.so.1 (0x00007f8109f70000)
	libcodec2.so.0.9 => /lib/x86_64-linux-gnu/libcodec2.so.0.9 (0x00007f8107d83000)
	libcom_err.so.2 => /lib/x86_64-linux-gnu/libcom_err.so.2 (0x00007f8101ed9000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f810a3bc000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f810c8bf000)
	libdrm.so.2 => /lib/x86_64-linux-gnu/libdrm.so.2 (0x00007f81064ff000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f810a4c7000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f810c6de000)
	libffmpegthumbnailer.so.4 => /lib/x86_64-linux-gnu/libffmpegthumbnailer.so.4 (0x00007f810d258000)
	libfftw3.so.3 => /lib/x86_64-linux-gnu/libfftw3.so.3 (0x00007f8103eb4000)
	libflite.so.1 => /lib/x86_64-linux-gnu/libflite.so.1 (0x00007f8104fc4000)
	libflite_cmu_us_awb.so.1 => /lib/x86_64-linux-gnu/libflite_cmu_us_awb.so.1 (0x00007f8105dd2000)
	libflite_cmu_us_kal.so.1 => /lib/x86_64-linux-gnu/libflite_cmu_us_kal.so.1 (0x00007f8105c6a000)
	libflite_cmu_us_kal16.so.1 => /lib/x86_64-linux-gnu/libflite_cmu_us_kal16.so.1 (0x00007f8105890000)
	libflite_cmu_us_rms.so.1 => /lib/x86_64-linux-gnu/libflite_cmu_us_rms.so.1 (0x00007f81053f5000)
	libflite_cmu_us_slt.so.1 => /lib/x86_64-linux-gnu/libflite_cmu_us_slt.so.1 (0x00007f8104ffd000)
	libflite_cmulex.so.1 => /lib/x86_64-linux-gnu/libflite_cmulex.so.1 (0x00007f8103df2000)
	libflite_usenglish.so.1 => /lib/x86_64-linux-gnu/libflite_usenglish.so.1 (0x00007f8103e89000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f810cd1d000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f810c959000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f810c7f9000)
	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007f810a4f5000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007f8104564000)
	libgdk-x11-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk-x11-2.0.so.0 (0x00007f810d7c9000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f810d66c000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f810d48a000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f810d2aa000)
	libgme.so.0 => /lib/x86_64-linux-gnu/libgme.so.0 (0x00007f810a173000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f810cdb1000)
	libgmp.so.10 => /lib/x86_64-linux-gnu/libgmp.so.10 (0x00007f8104682000)
	libgnutls.so.30 => /lib/x86_64-linux-gnu/libgnutls.so.30 (0x00007f8109d47000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f810d3d4000)
	libgomp.so.1 => /lib/x86_64-linux-gnu/libgomp.so.1 (0x00007f8103cb3000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007f8104541000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f810a38d000)
	libgsm.so.1 => /lib/x86_64-linux-gnu/libgsm.so.1 (0x00007f8107d74000)
	libgssapi_krb5.so.2 => /lib/x86_64-linux-gnu/libgssapi_krb5.so.2 (0x00007f81044f4000)
	libgthread-2.0.so.0 => /lib/x86_64-linux-gnu/libgthread-2.0.so.0 (0x00007f810d434000)
	libgtk-x11-2.0.so.0 => /lib/x86_64-linux-gnu/libgtk-x11-2.0.so.0 (0x00007f810d884000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f810c6ea000)
	libhogweed.so.5 => /lib/x86_64-linux-gnu/libhogweed.so.5 (0x00007f8104706000)
	libicudata.so.66 => /lib/x86_64-linux-gnu/libicudata.so.66 (0x00007f8101fee000)
	libicuuc.so.66 => /lib/x86_64-linux-gnu/libicuuc.so.66 (0x00007f8104ad5000)
	libidn2.so.0 => /lib/x86_64-linux-gnu/libidn2.so.0 (0x00007f8104911000)
	libjpeg.so.8 => /lib/x86_64-linux-gnu/libjpeg.so.8 (0x00007f810a6f4000)
	libk5crypto.so.3 => /lib/x86_64-linux-gnu/libk5crypto.so.3 (0x00007f8101ee0000)
	libkeyutils.so.1 => /lib/x86_64-linux-gnu/libkeyutils.so.1 (0x00007f8101ec1000)
	libkrb5.so.3 => /lib/x86_64-linux-gnu/libkrb5.so.3 (0x00007f8101f11000)
	libkrb5support.so.0 => /lib/x86_64-linux-gnu/libkrb5support.so.0 (0x00007f8101eca000)
	liblilv-0.so.0 => /lib/x86_64-linux-gnu/liblilv-0.so.0 (0x00007f8106217000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f81099be000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f810cfcc000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f810c85f000)
	libmp3lame.so.0 => /lib/x86_64-linux-gnu/libmp3lame.so.0 (0x00007f8107cfc000)
	libmpg123.so.0 => /lib/x86_64-linux-gnu/libmpg123.so.0 (0x00007f8104a75000)
	libmysofa.so.1 => /lib/x86_64-linux-gnu/libmysofa.so.1 (0x00007f81061c9000)
	libnettle.so.7 => /lib/x86_64-linux-gnu/libnettle.so.7 (0x00007f810473f000)
	libnorm.so.1 => /lib/x86_64-linux-gnu/libnorm.so.1 (0x00007f8103ab1000)
	libnuma.so.1 => /lib/x86_64-linux-gnu/libnuma.so.1 (0x00007f8104461000)
	libogg.so.0 => /lib/x86_64-linux-gnu/libogg.so.0 (0x00007f810446e000)
	libopenjp2.so.7 => /lib/x86_64-linux-gnu/libopenjp2.so.7 (0x00007f8107ca6000)
	libopenmpt.so.0 => /lib/x86_64-linux-gnu/libopenmpt.so.0 (0x00007f8109f86000)
	libopus.so.0 => /lib/x86_64-linux-gnu/libopus.so.0 (0x00007f8107c47000)
	libp11-kit.so.0 => /lib/x86_64-linux-gnu/libp11-kit.so.0 (0x00007f8104932000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f810d439000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f810d7b7000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f810cd64000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f810c66b000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f810a3c6000)
	libpgm-5.2.so.0 => /lib/x86_64-linux-gnu/libpgm-5.2.so.0 (0x00007f8103c0c000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f810ca18000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f810c921000)
	libpostproc.so.55 => /lib/x86_64-linux-gnu/libpostproc.so.55 (0x00007f8106239000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f810cfa9000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f810c818000)
	librsvg-2.so.2 => /lib/x86_64-linux-gnu/librsvg-2.so.2 (0x00007f81090a1000)
	librubberband.so.2 => /lib/x86_64-linux-gnu/librubberband.so.2 (0x00007f81061da000)
	libsamplerate.so.0 => /lib/x86_64-linux-gnu/libsamplerate.so.0 (0x00007f81040ba000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f810c834000)
	libserd-0.so.0 => /lib/x86_64-linux-gnu/libserd-0.so.0 (0x00007f8104440000)
	libshine.so.3 => /lib/x86_64-linux-gnu/libshine.so.3 (0x00007f8107a3c000)
	libsnappy.so.1 => /lib/x86_64-linux-gnu/libsnappy.so.1 (0x00007f8109007000)
	libsodium.so.23 => /lib/x86_64-linux-gnu/libsodium.so.23 (0x00007f8103c5b000)
	libsord-0.so.0 => /lib/x86_64-linux-gnu/libsord-0.so.0 (0x00007f8104432000)
	libsoxr.so.0 => /lib/x86_64-linux-gnu/libsoxr.so.0 (0x00007f8104489000)
	libspeex.so.1 => /lib/x86_64-linux-gnu/libspeex.so.1 (0x00007f8107a1c000)
	libsratom-0.so.0 => /lib/x86_64-linux-gnu/libsratom-0.so.0 (0x00007f8104426000)
	libssh-gcrypt.so.4 => /lib/x86_64-linux-gnu/libssh-gcrypt.so.4 (0x00007f8109cb9000)
	libstartup-notification-1.so.0 => /lib/x86_64-linux-gnu/libstartup-notification-1.so.0 (0x00007f810d29f000)
	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007f810a510000)
	libswresample.so.3 => /lib/x86_64-linux-gnu/libswresample.so.3 (0x00007f8109c97000)
	libswscale.so.5 => /lib/x86_64-linux-gnu/libswscale.so.5 (0x00007f810625d000)
	libtasn1.so.6 => /lib/x86_64-linux-gnu/libtasn1.so.6 (0x00007f8104779000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f810c7ee000)
	libtheoradec.so.1 => /lib/x86_64-linux-gnu/libtheoradec.so.1 (0x00007f81079bf000)
	libtheoraenc.so.1 => /lib/x86_64-linux-gnu/libtheoraenc.so.1 (0x00007f81079df000)
	libtwolame.so.0 => /lib/x86_64-linux-gnu/libtwolame.so.0 (0x00007f8107999000)
	libudev.so.1 => /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f810d272000)
	libunistring.so.2 => /lib/x86_64-linux-gnu/libunistring.so.2 (0x00007f810478f000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f810a4be000)
	libva-drm.so.2 => /lib/x86_64-linux-gnu/libva-drm.so.2 (0x00007f8106523000)
	libva-x11.so.2 => /lib/x86_64-linux-gnu/libva-x11.so.2 (0x00007f810651b000)
	libva.so.2 => /lib/x86_64-linux-gnu/libva.so.2 (0x00007f810652a000)
	libvdpau.so.1 => /lib/x86_64-linux-gnu/libvdpau.so.1 (0x00007f8106515000)
	libvidstab.so.1.1 => /lib/x86_64-linux-gnu/libvidstab.so.1.1 (0x00007f8104d7b000)
	libvorbis.so.0 => /lib/x86_64-linux-gnu/libvorbis.so.0 (0x00007f810796b000)
	libvorbisenc.so.2 => /lib/x86_64-linux-gnu/libvorbisenc.so.2 (0x00007f81078c0000)
	libvorbisfile.so.3 => /lib/x86_64-linux-gnu/libvorbisfile.so.3 (0x00007f8104a68000)
	libvpx.so.6 => /lib/x86_64-linux-gnu/libvpx.so.6 (0x00007f8109a5f000)
	libwavpack.so.1 => /lib/x86_64-linux-gnu/libwavpack.so.1 (0x00007f8107892000)
	libwebp.so.6 => /lib/x86_64-linux-gnu/libwebp.so.6 (0x00007f81099e7000)
	libwebpmux.so.3 => /lib/x86_64-linux-gnu/libwebpmux.so.3 (0x00007f8109a53000)
	libx264.so.155 => /lib/x86_64-linux-gnu/libx264.so.155 (0x00007f81075d4000)
	libx265.so.179 => /lib/x86_64-linux-gnu/libx265.so.179 (0x00007f8106666000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f810c8e3000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f810c91c000)
	libxcb-util.so.1 => /lib/x86_64-linux-gnu/libxcb-util.so.1 (0x00007f810c465000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f810c8f2000)
	libxml2.so.2 => /lib/x86_64-linux-gnu/libxml2.so.2 (0x00007f810a1d3000)
	libxvidcore.so.4 => /lib/x86_64-linux-gnu/libxvidcore.so.4 (0x00007f8106553000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f810c8c5000)
	libzmq.so.5 => /lib/x86_64-linux-gnu/libzmq.so.5 (0x00007f8104cd5000)
	libzvbi.so.0 => /lib/x86_64-linux-gnu/libzvbi.so.0 (0x00007f8109012000)
	linux-vdso.so.1 (0x00007ffe8b54f000)
/usr/bin/ristretto
	/lib64/ld-linux-x86-64.so.2 (0x00007fdb629d1000)
	libICE.so.6 => /lib/x86_64-linux-gnu/libICE.so.6 (0x00007fdb60cfa000)
	libSM.so.6 => /lib/x86_64-linux-gnu/libSM.so.6 (0x00007fdb60d18000)
	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007fdb6089c000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007fdb619e2000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007fdb60bb3000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007fdb6122c000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007fdb61231000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007fdb61227000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007fdb60bab000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007fdb611ad000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007fdb61657000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007fdb6165f000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007fdb6124b000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007fdb6123e000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007fdb60e6d000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007fdb61621000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007fdb615ea000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007fdb60c29000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007fdb60b52000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007fdb60aa7000)
	libbz2.so.1.0 => /lib/x86_64-linux-gnu/libbz2.so.1.0 (0x00007fdb60cb1000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fdb61679000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007fdb6164b000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007fdb61f48000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007fdb60bb9000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007fdb60c60000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fdb60e4b000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007fdb614b7000)
	libexif.so.12 => /lib/x86_64-linux-gnu/libexif.so.12 (0x00007fdb61b6a000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007fdb60bcc000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007fdb60d96000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007fdb61334000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007fdb61275000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007fdb61498000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007fdb606ac000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007fdb620cc000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007fdb61f20000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007fdb61d3c000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007fdb61bb2000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007fdb61673000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007fdb61cdc000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007fdb60689000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007fdb60bfc000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007fdb621d1000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007fdb6137b000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007fdb607ca000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007fdb60cc4000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fdb61893000)
	libmagic.so.1 => /lib/x86_64-linux-gnu/libmagic.so.1 (0x00007fdb6186b000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007fdb60deb000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007fdb6206b000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007fdb620ba000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007fdb6147f000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007fdb60d23000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007fdb60ac1000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007fdb610ef000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007fdb610b7000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007fdb61252000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007fdb60da4000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007fdb611a3000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007fdb60dc0000)
	libstartup-notification-1.so.0 => /lib/x86_64-linux-gnu/libstartup-notification-1.so.0 (0x00007fdb60cef000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007fdb607eb000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007fdb61196000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007fdb60bc3000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007fdb611c2000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007fdb611d8000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007fdb611d3000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007fdb61079000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007fdb610b2000)
	libxcb-util.so.1 => /lib/x86_64-linux-gnu/libxcb-util.so.1 (0x00007fdb608a1000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007fdb61088000)
	libxfce4ui-2.so.0 => /lib/x86_64-linux-gnu/libxfce4ui-2.so.0 (0x00007fdb61b1f000)
	libxfce4util.so.7 => /lib/x86_64-linux-gnu/libxfce4util.so.7 (0x00007fdb61b3a000)
	libxfconf-0.so.3 => /lib/x86_64-linux-gnu/libxfconf-0.so.3 (0x00007fdb61b4c000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007fdb611e3000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007fdb60e51000)
	linux-vdso.so.1 (0x00007ffea4feb000)
/usr/bin/engrampa
	/lib64/ld-linux-x86-64.so.2 (0x00007f38ced25000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f38cdb23000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f38ccf6d000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f38cd5b0000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f38cd5b5000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f38cd5ab000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f38ccf65000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f38cd531000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f38cdb09000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f38cdb11000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f38cd5d1000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f38cd5c4000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f38cd1f3000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f38cdad1000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007f38cda9a000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007f38ccfe3000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f38ccf0e000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f38ccdb2000)
	libbz2.so.1.0 => /lib/x86_64-linux-gnu/libbz2.so.1.0 (0x00007f38cd06b000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f38cdc7a000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007f38cdafd000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f38ce278000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f38ccf73000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007f38cd01a000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f38cd1cf000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007f38cd967000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f38ccf88000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f38cd11c000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f38cd695000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f38cd5d6000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f38cd94a000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007f38ccc73000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007f38ce3ea000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f38ce250000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f38ce041000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f38cdeb7000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f38cdc72000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f38cdfe1000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007f38ccc4e000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f38ccfb6000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007f38ce4ef000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f38cd6dc000)
	libjson-glib-1.0.so.0 => /lib/x86_64-linux-gnu/libjson-glib-1.0.so.0 (0x00007f38ce225000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007f38ccd91000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f38cd080000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f38cd7fb000)
	libmagic.so.1 => /lib/x86_64-linux-gnu/libmagic.so.1 (0x00007f38cde8f000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f38cd16f000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f38ce39b000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f38cdc60000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f38cd7e2000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f38cd0a9000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f38cce7b000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f38cd475000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f38cd43d000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f38cde6c000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f38cd128000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007f38cd527000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f38cd144000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007f38ccdcc000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f38cd51c000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f38ccf7d000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007f38cd548000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007f38cd55e000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007f38cd559000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f38cd3fd000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f38cd436000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f38cd40c000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007f38cd569000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f38cd1d7000)
	linux-vdso.so.1 (0x00007ffe1a9d9000)
/usr/bin/scrot
	/lib64/ld-linux-x86-64.so.2 (0x00007f6256eb2000)
	libImlib2.so.1 => /lib/x86_64-linux-gnu/libImlib2.so.1 (0x00007f6256ae4000)
	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007f6256698000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f6256d5e000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f625668b000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f6256683000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f625669d000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f6256d56000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f6256615000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f62568f2000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f62568c0000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f6256801000)
	libgiblib.so.1 => /lib/x86_64-linux-gnu/libgiblib.so.1 (0x00007f6256b4c000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f62566b2000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f625664b000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f6256693000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f62568c8000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f625662f000)
	linux-vdso.so.1 (0x00007ffc41ddc000)
/usr/bin/sakura
	/lib64/ld-linux-x86-64.so.2 (0x00007ff4168e3000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007ff415889000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007ff41243c000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007ff4151a8000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007ff4151ad000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007ff4151a1000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007ff412434000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007ff415129000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007ff41586d000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007ff415877000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007ff4151c7000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007ff4151ba000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007ff4145bf000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007ff4156ec000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007ff4156b5000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007ff414535000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007ff41446e000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007ff4123f5000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007ff4159de000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007ff415861000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007ff41573e000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007ff4144c7000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007ff41456e000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007ff4150f0000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007ff415580000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007ff4144da000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007ff41503b000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007ff4152b0000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007ff4151ef000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007ff415563000)
	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007ff4125ac000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007ff412442000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007ff41600b000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007ff415716000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007ff415dda000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007ff415c50000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007ff4159d8000)
	libgmp.so.10 => /lib/x86_64-linux-gnu/libgmp.so.10 (0x00007ff414088000)
	libgnutls.so.30 => /lib/x86_64-linux-gnu/libgnutls.so.30 (0x00007ff414df2000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007ff415d7a000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007ff412411000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007ff414508000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007ff416110000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007ff4152f7000)
	libhogweed.so.5 => /lib/x86_64-linux-gnu/libhogweed.so.5 (0x00007ff41410c000)
	libicudata.so.66 => /lib/x86_64-linux-gnu/libicudata.so.66 (0x00007ff4125c7000)
	libicuuc.so.66 => /lib/x86_64-linux-gnu/libicuuc.so.66 (0x00007ff414c0c000)
	libidn2.so.0 => /lib/x86_64-linux-gnu/libidn2.so.0 (0x00007ff414317000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007ff412562000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007ff412583000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007ff415414000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007ff415090000)
	libnettle.so.7 => /lib/x86_64-linux-gnu/libnettle.so.7 (0x00007ff414145000)
	libp11-kit.so.0 => /lib/x86_64-linux-gnu/libp11-kit.so.0 (0x00007ff414338000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007ff415fbc000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007ff4159c6000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007ff4153fb000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007ff414fc8000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007ff414b79000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007ff414817000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007ff4147dd000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007ff4151cc000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007ff415047000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007ff41511d000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007ff415063000)
	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007ff4148e8000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007ff414aca000)
	libtasn1.so.6 => /lib/x86_64-linux-gnu/libtasn1.so.6 (0x00007ff41417f000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007ff415112000)
	libunistring.so.2 => /lib/x86_64-linux-gnu/libunistring.so.2 (0x00007ff414195000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007ff4144d1000)
	libvte-2.91.so.0 => /lib/x86_64-linux-gnu/libvte-2.91.so.0 (0x00007ff415bd0000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007ff41513e000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007ff415154000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007ff41514f000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007ff4147c9000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007ff4147d8000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007ff4148be000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007ff41515f000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007ff4150f6000)
	linux-vdso.so.1 (0x00007ffe85126000)
/usr/bin/mousepad
	/lib64/ld-linux-x86-64.so.2 (0x00007f0a42b9d000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f0a41621000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f0a40927000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f0a41227000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f0a4122c000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f0a41222000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f0a4091f000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f0a411a8000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f0a41605000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f0a4160d000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f0a41248000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f0a41239000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f0a40d20000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f0a41a69000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007f0a415c2000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007f0a40a87000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f0a409c0000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f0a3eb96000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f0a41bf6000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007f0a415f9000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f0a41946000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f0a40a17000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007f0a40abe000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f0a4116f000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007f0a4148f000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f0a40a2a000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f0a410bc000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f0a4130c000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f0a4124d000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f0a41472000)
	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007f0a3ec61000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007f0a3ea57000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007f0a421e6000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f0a4191e000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f0a41f97000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f0a41e0b000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f0a4175e000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f0a41f35000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007f0a3ea34000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f0a40a5a000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007f0a422eb000)
	libgtksourceview-3.0.so.1 => /lib/x86_64-linux-gnu/libgtksourceview-3.0.so.1 (0x00007f0a42a9c000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f0a41353000)
	libicudata.so.66 => /lib/x86_64-linux-gnu/libicudata.so.66 (0x00007f0a3ee5e000)
	libicuuc.so.66 => /lib/x86_64-linux-gnu/libicuuc.so.66 (0x00007f0a40b38000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007f0a3eb75000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f0a40b0f000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f0a41aa7000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f0a4110f000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f0a42197000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f0a41a95000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f0a41457000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f0a41049000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f0a4092f000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f0a40fa0000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f0a40f68000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f0a41de8000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f0a410c8000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007f0a4119e000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f0a410e4000)
	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007f0a3ec7c000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007f0a3ebb0000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f0a41193000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f0a40a21000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007f0a411bd000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007f0a411d5000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007f0a411d0000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f0a40f2a000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f0a40f63000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f0a40f39000)
	libxfconf-0.so.3 => /lib/x86_64-linux-gnu/libxfconf-0.so.3 (0x00007f0a42179000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007f0a411e0000)
	libxml2.so.2 => /lib/x86_64-linux-gnu/libxml2.so.2 (0x00007f0a41764000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f0a41177000)
	linux-vdso.so.1 (0x00007ffeb9d0a000)
/usr/bin/geany
	/lib64/ld-linux-x86-64.so.2 (0x00007fea3449c000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007fea32cfa000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007fea322d6000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007fea328dd000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007fea328e2000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007fea328d8000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007fea322ce000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007fea3285e000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007fea32cde000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007fea32ce8000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007fea328fe000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007fea328ef000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007fea32520000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007fea33642000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007fea32c9b000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007fea3234c000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007fea32277000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007fea3211b000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fea33f85000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007fea32cd2000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007fea3351f000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007fea322dc000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007fea32383000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007fea324fc000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007fea32b68000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007fea322f1000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007fea32449000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007fea329e5000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007fea32926000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007fea32b4b000)
	libgcc_s.so.1 => /lib/x86_64-linux-gnu/libgcc_s.so.1 (0x00007fea32e37000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007fea31fb3000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007fea336cf000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007fea334f7000)
	libgeany.so.0 => /lib/x86_64-linux-gnu/libgeany.so.0 (0x00007fea34177000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007fea33315000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007fea33183000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007fea332af000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007fea332b5000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007fea31f8e000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007fea3231f000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007fea337d4000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007fea32a2c000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007fea320d1000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007fea320f2000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007fea32e52000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007fea3249c000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007fea3366e000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007fea336bd000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007fea32b32000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007fea323d6000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007fea321e6000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007fea327a2000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007fea32768000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007fea32903000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007fea32455000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007fea32854000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007fea32471000)
	libstdc++.so.6 => /lib/x86_64-linux-gnu/libstdc++.so.6 (0x00007fea32fa1000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007fea32135000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007fea32849000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007fea322e8000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007fea32873000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007fea3288b000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007fea32886000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007fea3272a000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007fea32763000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007fea32739000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007fea32896000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007fea32504000)
	linux-vdso.so.1 (0x00007fffe332e000)
/usr/bin/thunar
	/lib64/ld-linux-x86-64.so.2 (0x00007f81068ca000)
	libICE.so.6 => /lib/x86_64-linux-gnu/libICE.so.6 (0x00007f8106753000)
	libSM.so.6 => /lib/x86_64-linux-gnu/libSM.so.6 (0x00007f8106771000)
	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007f81048fa000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f8105425000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f810480f000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f810500e000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f8105013000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f8105009000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f8104807000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f8104f8f000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f81053ec000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f81053f6000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f810502f000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f8105022000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f8104c5c000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f8105e58000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007f81053a9000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007f8104872000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f81047a6000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f8105562000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f810572c000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007f81053e0000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f8105d35000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f81047fd000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007f81048a9000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f8104c2d000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007f8105276000)
	libexo-2.so.0 => /lib/x86_64-linux-gnu/libexo-2.so.0 (0x00007f8106794000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f8104815000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f8104b7a000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f81050f3000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f8105034000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f8105259000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007f81044fc000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007f8105e82000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f8105d0d000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f8105aaa000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f8105920000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f8105726000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f8105a4a000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007f81044d7000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f8104845000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007f8105f87000)
	libgudev-1.0.so.0 => /lib/x86_64-linux-gnu/libgudev-1.0.so.0 (0x00007f8106787000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f810513a000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007f810461a000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f810463b000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f81055d7000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f8104bcd000)
	libnotify.so.4 => /lib/x86_64-linux-gnu/libnotify.so.4 (0x00007f810677c000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f8105c8c000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f8105408000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f8105240000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f8104b07000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f8104713000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f8104ede000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f8104ea6000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f81055b4000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f8104b86000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007f8104f85000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f8104ba2000)
	libstartup-notification-1.so.0 => /lib/x86_64-linux-gnu/libstartup-notification-1.so.0 (0x00007f810541a000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007f8104664000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f8104c35000)
	libthunarx-3.so.0 => /lib/x86_64-linux-gnu/libthunarx-3.so.0 (0x00007f81067d1000)
	libudev.so.1 => /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f8105587000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f810557c000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007f8104fa6000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007f8104fbc000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007f8104fb7000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f8104e66000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f8104ea1000)
	libxcb-util.so.1 => /lib/x86_64-linux-gnu/libxcb-util.so.1 (0x00007f81048ff000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f8104e75000)
	libxfce4ui-2.so.0 => /lib/x86_64-linux-gnu/libxfce4ui-2.so.0 (0x00007f8106738000)
	libxfce4util.so.7 => /lib/x86_64-linux-gnu/libxfce4util.so.7 (0x00007f8105cf9000)
	libxfconf-0.so.3 => /lib/x86_64-linux-gnu/libxfconf-0.so.3 (0x00007f8105cdb000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007f8104fc7000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f8104c40000)
	linux-vdso.so.1 (0x00007fff09738000)
/usr/bin/xarchiver
	/lib64/ld-linux-x86-64.so.2 (0x00007f25da33f000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f25d9516000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f25d8652000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f25d8c4f000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f25d8c54000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f25d8c4a000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f25d864a000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f25d8bd0000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f25d94fc000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f25d9504000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f25d8c6e000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f25d8c61000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f25d8816000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f25d93a1000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007f25d936a000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007f25d8770000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f25d8542000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f25d848d000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f25d966b000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007f25d94ee000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f25d93cb000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f25d84a7000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007f25d87a9000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f25d8b3f000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007f25d9237000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f25d8661000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f25d8bb8000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f25d8d34000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f25d8c73000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f25d921a000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007f25d8323000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007f25d9a34000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f25d9a0c000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f25d9036000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f25d9882000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f25d9665000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f25d99ac000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007f25d8300000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f25d868f000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007f25d9b39000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f25d8d7b000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007f25d8441000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f25d8462000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f25d8ee7000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f25d8710000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f25d8e7f000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f25d9653000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f25d8ece000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f25d8b45000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f25d84b1000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f25d8a6e000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f25d8a34000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f25d985f000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f25d86c9000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007f25d8bc6000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f25d86e5000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007f25d8599000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f25d86be000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f25d8658000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007f25d8be5000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007f25d8bfb000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007f25d8bf6000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f25d8a20000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f25d8a2f000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f25d8b15000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007f25d8c06000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f25d87fa000)
	linux-vdso.so.1 (0x00007fffdeb8d000)
/usr/bin/plank
	/lib64/ld-linux-x86-64.so.2 (0x00007f345c975000)
	libX11-xcb.so.1 => /lib/x86_64-linux-gnu/libX11-xcb.so.1 (0x00007f345a870000)
	libX11.so.6 => /lib/x86_64-linux-gnu/libX11.so.6 (0x00007f345bdf4000)
	libXRes.so.1 => /lib/x86_64-linux-gnu/libXRes.so.1 (0x00007f345b00e000)
	libXau.so.6 => /lib/x86_64-linux-gnu/libXau.so.6 (0x00007f345a86a000)
	libXcomposite.so.1 => /lib/x86_64-linux-gnu/libXcomposite.so.1 (0x00007f345abf1000)
	libXcursor.so.1 => /lib/x86_64-linux-gnu/libXcursor.so.1 (0x00007f345abf6000)
	libXdamage.so.1 => /lib/x86_64-linux-gnu/libXdamage.so.1 (0x00007f345abec000)
	libXdmcp.so.6 => /lib/x86_64-linux-gnu/libXdmcp.so.6 (0x00007f345a862000)
	libXext.so.6 => /lib/x86_64-linux-gnu/libXext.so.6 (0x00007f345afcf000)
	libXfixes.so.3 => /lib/x86_64-linux-gnu/libXfixes.so.3 (0x00007f345bdda000)
	libXi.so.6 => /lib/x86_64-linux-gnu/libXi.so.6 (0x00007f345bde2000)
	libXinerama.so.1 => /lib/x86_64-linux-gnu/libXinerama.so.1 (0x00007f345ac10000)
	libXrandr.so.2 => /lib/x86_64-linux-gnu/libXrandr.so.2 (0x00007f345ac03000)
	libXrender.so.1 => /lib/x86_64-linux-gnu/libXrender.so.1 (0x00007f345b04b000)
	libatk-1.0.so.0 => /lib/x86_64-linux-gnu/libatk-1.0.so.0 (0x00007f345b021000)
	libatk-bridge-2.0.so.0 => /lib/x86_64-linux-gnu/libatk-bridge-2.0.so.0 (0x00007f345af8c000)
	libatspi.so.0 => /lib/x86_64-linux-gnu/libatspi.so.0 (0x00007f345a7da000)
	libbamf3.so.2 => /lib/x86_64-linux-gnu/libbamf3.so.2 (0x00007f345bf78000)
	libblkid.so.1 => /lib/x86_64-linux-gnu/libblkid.so.1 (0x00007f345b2e6000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f345a750000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f345c345000)
	libcairo-gobject.so.2 => /lib/x86_64-linux-gnu/libcairo-gobject.so.2 (0x00007f345afc3000)
	libcairo.so.2 => /lib/x86_64-linux-gnu/libcairo.so.2 (0x00007f345b367000)
	libdatrie.so.1 => /lib/x86_64-linux-gnu/libdatrie.so.1 (0x00007f345a76a000)
	libdbus-1.so.3 => /lib/x86_64-linux-gnu/libdbus-1.so.3 (0x00007f345a811000)
	libdbusmenu-glib.so.4 => /lib/x86_64-linux-gnu/libdbusmenu-glib.so.4 (0x00007f345bda3000)
	libdbusmenu-gtk3.so.4 => /lib/x86_64-linux-gnu/libdbusmenu-gtk3.so.4 (0x00007f345bdc3000)
	libdl.so.2 => /lib/x86_64-linux-gnu/libdl.so.2 (0x00007f345c31b000)
	libepoxy.so.0 => /lib/x86_64-linux-gnu/libepoxy.so.0 (0x00007f345ae57000)
	libexpat.so.1 => /lib/x86_64-linux-gnu/libexpat.so.1 (0x00007f345a77d000)
	libffi.so.7 => /lib/x86_64-linux-gnu/libffi.so.7 (0x00007f345c243000)
	libfontconfig.so.1 => /lib/x86_64-linux-gnu/libfontconfig.so.1 (0x00007f345acd6000)
	libfreetype.so.6 => /lib/x86_64-linux-gnu/libfreetype.so.6 (0x00007f345ac17000)
	libfribidi.so.0 => /lib/x86_64-linux-gnu/libfribidi.so.0 (0x00007f345ae3a000)
	libgcrypt.so.20 => /lib/x86_64-linux-gnu/libgcrypt.so.20 (0x00007f345a537000)
	libgdk-3.so.0 => /lib/x86_64-linux-gnu/libgdk-3.so.0 (0x00007f345b4eb000)
	libgdk_pixbuf-2.0.so.0 => /lib/x86_64-linux-gnu/libgdk_pixbuf-2.0.so.0 (0x00007f345b33f000)
	libgee-0.8.so.2 => /lib/x86_64-linux-gnu/libgee-0.8.so.2 (0x00007f345bfb0000)
	libgio-2.0.so.0 => /lib/x86_64-linux-gnu/libgio-2.0.so.0 (0x00007f345c783000)
	libglib-2.0.so.0 => /lib/x86_64-linux-gnu/libglib-2.0.so.0 (0x00007f345c5f9000)
	libgmodule-2.0.so.0 => /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 (0x00007f345c33f000)
	libgobject-2.0.so.0 => /lib/x86_64-linux-gnu/libgobject-2.0.so.0 (0x00007f345c723000)
	libgpg-error.so.0 => /lib/x86_64-linux-gnu/libgpg-error.so.0 (0x00007f345a514000)
	libgraphite2.so.3 => /lib/x86_64-linux-gnu/libgraphite2.so.3 (0x00007f345a7ab000)
	libgtk-3.so.0 => /lib/x86_64-linux-gnu/libgtk-3.so.0 (0x00007f345b5f2000)
	libharfbuzz.so.0 => /lib/x86_64-linux-gnu/libharfbuzz.so.0 (0x00007f345ad1d000)
	liblz4.so.1 => /lib/x86_64-linux-gnu/liblz4.so.1 (0x00007f345a655000)
	liblzma.so.5 => /lib/x86_64-linux-gnu/liblzma.so.5 (0x00007f345a676000)
	libm.so.6 => /lib/x86_64-linux-gnu/libm.so.6 (0x00007f345c081000)
	libmount.so.1 => /lib/x86_64-linux-gnu/libmount.so.1 (0x00007f345c2bb000)
	libpango-1.0.so.0 => /lib/x86_64-linux-gnu/libpango-1.0.so.0 (0x00007f345b48a000)
	libpangocairo-1.0.so.0 => /lib/x86_64-linux-gnu/libpangocairo-1.0.so.0 (0x00007f345b4d9000)
	libpangoft2-1.0.so.0 => /lib/x86_64-linux-gnu/libpangoft2-1.0.so.0 (0x00007f345ae21000)
	libpcre.so.3 => /lib/x86_64-linux-gnu/libpcre.so.3 (0x00007f345c1d0000)
	libpcre2-8.so.0 => /lib/x86_64-linux-gnu/libpcre2-8.so.0 (0x00007f345b255000)
	libpixman-1.so.0 => /lib/x86_64-linux-gnu/libpixman-1.so.0 (0x00007f345aac9000)
	libplank.so.1 => /lib/x86_64-linux-gnu/libplank.so.1 (0x00007f345c537000)
	libpng16.so.16 => /lib/x86_64-linux-gnu/libpng16.so.16 (0x00007f345aa91000)
	libpthread.so.0 => /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f345c251000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f345c274000)
	librt.so.1 => /lib/x86_64-linux-gnu/librt.so.1 (0x00007f345ab7d000)
	libselinux.so.1 => /lib/x86_64-linux-gnu/libselinux.so.1 (0x00007f345c290000)
	libstartup-notification-1.so.0 => /lib/x86_64-linux-gnu/libstartup-notification-1.so.0 (0x00007f345b016000)
	libsystemd.so.0 => /lib/x86_64-linux-gnu/libsystemd.so.0 (0x00007f345a69f000)
	libthai.so.0 => /lib/x86_64-linux-gnu/libthai.so.0 (0x00007f345ab72000)
	libuuid.so.1 => /lib/x86_64-linux-gnu/libuuid.so.1 (0x00007f345a774000)
	libwayland-client.so.0 => /lib/x86_64-linux-gnu/libwayland-client.so.0 (0x00007f345ab87000)
	libwayland-cursor.so.0 => /lib/x86_64-linux-gnu/libwayland-cursor.so.0 (0x00007f345ab9d000)
	libwayland-egl.so.1 => /lib/x86_64-linux-gnu/libwayland-egl.so.1 (0x00007f345ab98000)
	libwnck-3.so.0 => /lib/x86_64-linux-gnu/libwnck-3.so.0 (0x00007f345bf33000)
	libxcb-render.so.0 => /lib/x86_64-linux-gnu/libxcb-render.so.0 (0x00007f345aa7d000)
	libxcb-shm.so.0 => /lib/x86_64-linux-gnu/libxcb-shm.so.0 (0x00007f345aa8c000)
	libxcb-util.so.1 => /lib/x86_64-linux-gnu/libxcb-util.so.1 (0x00007f345a877000)
	libxcb.so.1 => /lib/x86_64-linux-gnu/libxcb.so.1 (0x00007f345afe4000)
	libxkbcommon.so.0 => /lib/x86_64-linux-gnu/libxkbcommon.so.0 (0x00007f345aba8000)
	libz.so.1 => /lib/x86_64-linux-gnu/libz.so.1 (0x00007f345c321000)
	linux-vdso.so.1 (0x00007ffccdfcc000)
root@ad3799c7755e:/# 

```

