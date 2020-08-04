mmc dev 0
fatload mmc 0:1 ${loadaddr} zImage
fatload mmc 0:1 ${fdt_addr_r} baseboard.dtb
setenv bootargs root=/dev/mmcblk0p2 rootwait
bootz ${loadaddr} - ${fdt_addr_r}
