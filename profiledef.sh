#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="GinarOS"
iso_label="GinarOS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Kernelginar <https://github.com/kernelginar>"
iso_application="GinarOS Installation Live Image"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:755"
  ["/etc/passwd"]="0:0:755"
  ["/usr/bin/pacman-fix-keyring"]="755:755:755"
  ["/usr/bin/archis-installation"]="755:755:755"
)
