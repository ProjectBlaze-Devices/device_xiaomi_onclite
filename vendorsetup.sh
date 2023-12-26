# Remove existing HALs
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display

# Clone HALs
git clone https://github.com/afterallafk/hardware_qcom-caf_msm8996_audio.git -b 14 hardware/qcom-caf/msm8996/audio
git clone https://github.com/afterallafk/hardware_qcom-caf_msm8996_media.git -b 14 hardware/qcom-caf/msm8996/media
git clone https://github.com/afterallafk/hardware_qcom-caf_msm8996_display.git -b 14 hardware/qcom-caf/msm8996/display

# Clone Proton-clang
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton

# Clone Kernel
git clone --depth=1 https://github.com/afterallafk/kernel_xiaomi_onclite-dynamic -b dynamic kernel/xiaomi/onclite

# Clone Vendor
git clone https://github.com/afterallafk/android_vendor_xiaomi_onclite -b 13 vendor/xiaomi/onclite
