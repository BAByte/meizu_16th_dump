#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5132fe7532b4f947928ae4cc38f1f0a24f3390af; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:d8d6943713dcb7731da917932a867bcea38b1a8b EMMC:/dev/block/bootdevice/by-name/recovery 5132fe7532b4f947928ae4cc38f1f0a24f3390af 67108864 d8d6943713dcb7731da917932a867bcea38b1a8b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
