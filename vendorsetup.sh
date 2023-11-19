# Remove existing HALs
rm -rf hardware/qcom-caf/wlan
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display

# Clone HALs
git clone https://github.com/MSM8953-Tree/hardware_qcom-caf_msm8996_audio -b 13 hardware/qcom-caf/msm8996/audio
git clone https://github.com/MSM8953-Tree/hardware_qcom-caf_msm8996_media -b 12 hardware/qcom-caf/msm8996/media
git clone https://github.com/MSM8953-Tree/hardware_qcom-caf_msm8996_display -b 13 hardware/qcom-caf/msm8996/display
git clone https://github.com/MSM8953-Tree/android_hardware_qcom-caf_wlan -b 12 hardware/qcom-caf/wlan

# Clone Proton-clang
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton

# Clone Kernel
git clone https://github.com/MSM8953-Tree/android_kernel_xiaomi_onclite -b 13 kernel/xiaomi/onclite

# Clone Vendor
git clone https://github.com/MSM8953-Tree/android_vendor_xiaomi_onclite -b 13 vendor/xiaomi/onclite

# Define Host & username
export BUILD_HOSTNAME=JackPC
export BUILD_USERNAME=jack
