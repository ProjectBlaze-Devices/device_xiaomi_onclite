git clone --depth=1 https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton
git clone https://github.com/ProjectBlaze-Devices/vendor_xiaomi_onclite.git -b 13 vendor/xiaomi/onclite
git clone --depth=1 https://github.com/afterallafk/sinsperf_kernel_xiaomi_onclite.git -b 12.1 kernel/xiaomi/onclite
rm -rf hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display
rm -rf hardware/qcom-caf/wlan
git clone https://github.com/afterallafk/hardware_qcom-caf_msm8996_audio.git -b 13 hardware/qcom-caf/msm8996/audio
git clone https://github.com/afterallafk/hardware_qcom-caf_msm8996_media.git -b 12 hardware/qcom-caf/msm8996/media
git clone https://github.com/afterallafk/hardware_qcom-caf_msm8996_display.git -b 13 hardware/qcom-caf/msm8996/display
git clone https://github.com/afterallafk/hardware_qcom-caf_wlan.git -b 12 hardware/qcom-caf/wlan
