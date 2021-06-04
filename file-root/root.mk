
ROOT := device/xiaomi/scorpio/file-root
$(shell ($(ROOT)/install_root.sh))

PRODUCT_COPY_FILES += \
    $(ROOT)/MAGISK-UNISTALLER.zip:recovery/root/sbin/iceroot/MAGISK-UNISTALLER.zip \
    $(ROOT)/NO_VERITY_ENCRYPT.zip:recovery/root/sbin/iceroot/NO_VERITY_ENCRYPT.zip \
    $(ROOT)/UNROOT_OLD_MAGISK.zip:recovery/root/sbin/iceroot/UNROOT_OLD_MAGISK.zip
	
PRODUCT_COPY_FILES += \
	$(ROOT)/ui.xml:recovery/root/twres/ui.xml \
	$(ROOT)/portrait.xml:recovery/root/twres/portrait.ice