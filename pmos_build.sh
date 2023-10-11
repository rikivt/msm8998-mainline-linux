source ../pmbootstrap/helpers/envkernel.sh
make -j12
pmbootstrap build --envkernel linux-postmarketos-qcom-msm8998 --force
pmbootstrap build device-nubia-nx563j --force
pmbootstrap install
pmbootstrap flasher flash_rootfs --partition userdata
pmbootstrap flasher flash_kernel
