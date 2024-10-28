
```bash
# alpine
  ls /usr/share/applications/
  echo firefox geany mousepad ristretto gnome-system-monitor pcmanfm xfwm4 xfdesktop xfce4-session xfce4-settings-manager thunar |sed "s/ /\n/g" |while read one; do echo "===/usr/bin/$one"; ldd /usr/bin/$one |sort |wc; ldd /usr/bin/$one |sort; done |tee ldd-info.txt

  # pkgs; pkgsize: err@alpine_3.1 ##|awk '{printf("%03s|%04d|%s\n",$3,$2,$1)}' |sort
  pkgs=$(apk info  --no-network --no-progress 2>/dev/null)
  apk info --no-network -s $pkgs 2>/dev/null |sed ":a;N;s/installed size:\n/ /g;ta" |grep -v "^$" |sort |tee pkgs.txt
  lsz *.txt

# ubt
  # root@6ed4b56ff0c9:/# dpkg -l |awk '{print $2"|"$3"|"$4}' |wc
  #     500     500   19189
  dpkg -l |awk '{print $2"|"$3"|"$4}' |tee pkgs.txt
  add1="flameshot ibus-setup leafpad lxappearance pavucontrol sakura"
  echo $add1 firefox geany mousepad ristretto gnome-system-monitor pcmanfm xfwm4 xfdesktop xfce4-session xfce4-settings-manager thunar |sed "s/ /\n/g" |while read one; do echo "===/usr/bin/$one"; ldd /usr/bin/$one |sort |wc; ldd /usr/bin/$one |sort; done |tee ldd-info.txt


# suse
  f755e687e80e:/ # rpm -qa |sort |wc
      456     456   16964
  rpm -qa |sort |tee pkgs.txt
  add1="flameshot ibus-setup lxappearance pavucontrol plank sakura" #leafpad mousepad  pcmanfm  
  echo $add1 firefox geany ristretto gnome-system-monitor xfwm4 xfdesktop xfce4-session xfce4-settings-manager thunar |sed "s/ /\n/g" |while read one; do echo "===/usr/bin/$one"; ldd /usr/bin/$one |sort |wc; ldd /usr/bin/$one |sort; done |tee ldd-info.txt


```