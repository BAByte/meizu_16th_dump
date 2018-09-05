#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d8ffe8ce62bad3acd0a5917bb593bddaf82304a0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:67108864:a39bad9f386cb6e58e37221dfc5086d701db7276 EMMC:/dev/block/bootdevice/by-name/recovery d8ffe8ce62bad3acd0a5917bb593bddaf82304a0 67108864 a39bad9f386cb6e58e37221dfc5086d701db7276:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
