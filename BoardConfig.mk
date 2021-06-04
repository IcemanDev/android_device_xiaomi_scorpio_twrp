#BoardConfig.mk by IceMan

LOCAL_PATH := device/xiaomi/scorpio
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8996
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture 64bit
ARCH := arm64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI),$(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)

# Target kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

##########################################################################################################
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221028864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_USERDATAIMAGE_PARTITION_SIZE := 250710306816
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096	
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_BASE := 0x80000000
##########################################################################################################

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_USB_STORAGE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi

# Qualcomm flags
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_HW_DISK_ENCRYPTION := true

# Encryption
TW_INCLUDE_CRYPTO := true

# LZMA compression for recovery's & kernel ramdisk....
LZMA_RAMDISK_TARGETS := recovery

# Sdcard External
BOARD_HAS_NO_REAL_SDCARD := true
TW_DEFAULT_EXTERNAL_STORAGE := false

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# Asian region languages
TW_EXTRA_LANGUAGES := false

# Exclude Supersu
TW_EXCLUDE_SUPERSU := true

# exclude Twrp app
TW_EXCLUDE_TWRPAPP := true

# View button bootloader
TW_NO_REBOOT_BOOTLOADER := false

# View button downloadmode - true only samsung
TW_HAS_DOWNLOAD_MODE := false

# Default Brightness (TW_DEFAULT_BRIGHTNESS=255-->100%; TW_DEFAULT_BRIGHTNESS=218-->85%)
TW_DEFAULT_BRIGHTNESS := 255
TW_MAX_BRIGHTNESS := 255

# Use ro.product.model
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# NTFS support
TW_INCLUDE_NTFS_3G := true

# Exfat support
TW_NO_EXFAT := false
TW_NO_EXFAT_FUSE := false

# Set language default
TW_DEFAULT_LANGUAGE := en

# CUSTOMIZATION by IceMan

# For Version TWRP
#TW_SPECIFIC_VERSION_STR := "3.5.9_2"
TW_DEVICE_VERSION := "MiNote2 by IceMan"

# For time custom
TW_SPECIFIC_TIME_ZONE_VAR := "CET-1CEST,M3.5.0,M10.5.0"
TW_SPECIFIC_TIME_ZONE_GUISEL := "CET-1;CEST,M3.5.0,M10.5.0"

# For H24 hours
TW_SPECIFIC_MILITARY_TIME := "1"

# For Screen_timeout_secs
TW_SCREEN_TIMEOUT_SECS := "120"

#For reverse navbar (default "0")
TW_SPECIFIC_SAMSUNG_NAVBAR := "0"