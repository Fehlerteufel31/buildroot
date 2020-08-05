mmc dev 0
fatload mmc 0:1 ${loadaddr} zImage
fatload mmc 0:1 ${fdt_addr_r} baseboard.dtb
setenv bootargs root=/dev/mmcblk0p2 rootwait console=ttymxc3,115200 consoleblank=0 vt.global_cursor_default=0
bootz ${loadaddr} - ${fdt_addr_r}
