ubifsload ${loadaddr} /boot/zImage
ubifsload ${fdt_addr_r} /boot/baseboard.dtb
setenv bootargs rootfstype=ubifs ubi.mtd=0 root=ubi0:boot rootwait console=ttymxc3,115200 consoleblank=0 vt.global_cursor_default=0
bootz ${loadaddr} - ${fdt_addr_r}
