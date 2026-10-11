$(call inherit-product, device/xiaomi/marble/device.mk)
$(call inherit-product, vendor/bootleggers/config/common.mk)

PRODUCT_NAME := bootleggers_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="marble_global-user 15 AQ3A.250226.002 OS3.0.4.0.VMRMIXM release-keys" \
    BuildFingerprint=POCO/marble_global/marble:15/AQ3A.250226.002/OS3.0.4.0.VMRMIXM:user/release-keys \
    DeviceProduct=marble \
    SystemName=marble_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# qcwcn driver_cmd lib: fully-qualified (unprefixed is invisible to external/wpa_supplicant_8)
$(call soong_config_set,wpa_supplicant_8,board_wpa_supplicant_private_lib,//hardware/qcom-caf/wlan/qcwcn/wpa_supplicant_8_lib:lib_driver_cmd_qcwcn)
$(call soong_config_set,wpa_supplicant_8,board_hostapd_private_lib,//hardware/qcom-caf/wlan/qcwcn/wpa_supplicant_8_lib:lib_driver_cmd_qcwcn)

# Dummy kernel vars for vendor/lineage soong generators (marble builds kernel via make tasks)
KERNEL_BUILD_OUT_PREFIX ?=
TARGET_KERNEL_PLATFORM_TARGET ?=

# qcwcn driver_cmd lib: fully-qualified (unprefixed is invisible to external/wpa_supplicant_8)
$(call soong_config_set,wpa_supplicant_8,board_wpa_supplicant_private_lib,//hardware/qcom-caf/wlan/qcwcn/wpa_supplicant_8_lib:lib_driver_cmd_qcwcn)
$(call soong_config_set,wpa_supplicant_8,board_hostapd_private_lib,//hardware/qcom-caf/wlan/qcwcn/wpa_supplicant_8_lib:lib_driver_cmd_qcwcn)

# Dummy kernel vars for vendor/lineage soong generators (marble builds kernel via make tasks)
KERNEL_BUILD_OUT_PREFIX ?=
TARGET_KERNEL_PLATFORM_TARGET ?=
