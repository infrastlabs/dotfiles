
**Ref**

- docker-headless
- docker-x11base

```bash
rm -rf /tmp/dots; git clone --depth=1 https://gitee.com/infrastlabs/dotfiles /tmp/dots
cd /tmp/dots
  chmod +x ./dot/Desktop/* ./bin/*
  ls -la
  \cp -a ./bin/* /usr/bin/
  dst="/etc/skel/"
  \cp -a ./dot/. $dst
  \cp -a ./xf/. $dst
  \cp -a ./.mint-artwork-xfce/. $dst
  # 
  \cp -a $dst/. /home/headless/; chown -R headless:headless /home/headless/.; 
  # rm -rf /tmp/dots;
```