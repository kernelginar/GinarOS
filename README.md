# GinarOS
*__GinarOS__* configuration files that can be created with Archiso.

*__File structure__*:<br />
`airootfs`: The folder containing the files that will be pre-populated in the file system when the ISO file is created. The root folder of the ISO file.<br />
`efiboot`: Folder with the systemd-boot bootloader configuration files.<br />
`grub`: Folder with the GRUB bootloader configuration file.<br />
`syslinux`: Folder with the configuration files of the syslinux bootloader (for BIOS/Legacy systems).<br />
`build`: Bash script where you can start the ISO file creation process with a single command.<br />
`clean`: Bash script that allows you to delete files created after ISO file creation with a single command.<br />
`packages.x86_64`: File containing the names of the packages to be installed when creating the ISO file.<br />
`pacman.conf`: The `pacman.conf` file to be used when creating the ISO file.<br />
`profiledef.sh`: Profile file containing information about the ISO file and file permissions.<br /><br />

~*__Known issues__:* System won't start on computer with BIOS/Legacy. Not sure what the problem is at the moment.~<br />
**The problem has been found and fixed**. Please see the change in `syslinux-linux.cfg` file. <br />

Username: `liveuser`, Password: `liveuser`<br />
Username: `root`, Password: `root`
