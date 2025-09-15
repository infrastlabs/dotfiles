

**250915**

- box: openbox-session/fluxbox
  - icon-theme, tz/locale
  - **perl/asbru-cm**
  - python/virt-manager
  - app: thunar geany/leafpad ristretto engrampa
- misc:
  - icon/themes locales 
  - firefox/vscode/wps
- dist
  - yum:opensuse,fedora
  - apt:ubuntu,debian
  - apk:alpine/void
  - _: busybox,openwrt

```bash
# APP
# st leafpad spacefm ristretto engrampa scrot
# sakura mousepad geany thunar xarchiver plank
# ubt20:st/sakura(33.6M) leafpad/mousepad(34.4 MB)/geany(36.3M) spacefm(65.2M)/thunar(35.4M) ristretto(34.5M) engrampa(36.3M)/xarchiver(33.8M) scrot(2104kB)/dunst(21.3M) plank(34.4M)
RUN \
  apt.sh thunar dunst \
  sakura geany ristretto; \
  # misc2
  apt.sh plank engrampa scrot ; \
  # mousepad clipit pasystray pcmanfm lxappearance gnome-system-monitor \
  test "24.04" != "${VER}" && apt.sh leafpad; \
  exit 0


# diff
  # x11-base
  compile
  rootfs
  distros: 不同dists之entry,x11ser/pulse,icon/theme/locale的程序配置数据复用

  # x11-apps
  py:virt-manager
  pl:asbru-cm
  firefox/chrome

  # docker-headless
  ubt: cust/sogou,gnome/plasma,~cxfce/cinna~

# TODO1
 1.alpine-glibc-localedef; locales/xx.mo预生成
 2.void/openEu
 3.apps:firefox vscode/wps
  # base: MISC; entry,x11ser/pulse,icon/theme/locale
  # app: MESA-LLVM LIBS AUD/INPUT XFCE4 MISC2 firefox


```

