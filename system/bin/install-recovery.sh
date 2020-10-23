#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:12587936:97268f2c0c2cf676b2bb79f42a2d29886e414315; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:8256416:bf9d6aa61c23e356ecd6c963b121b4994e5658c7 EMMC:/dev/block/platform/bootdevice/by-name/recovery 97268f2c0c2cf676b2bb79f42a2d29886e414315 12587936 bf9d6aa61c23e356ecd6c963b121b4994e5658c7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
