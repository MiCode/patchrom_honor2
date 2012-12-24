
local-pre-zip += local_customize_pre_zip_misc

local_customize_pre_zip_misc:
	cp customize-make/su2  $(ZIP_DIR)/system/xbin/su2

local-imgs-file := MIUI_honor2_imgs.zip
create-imgs: fullota
	create_image_zip/create_image_zip.sh out/target_files.zip out/$(local-imgs-file)

flash-imgs: create-imgs
	rm -rf out/imgs
	unzip -q -d out/imgs out/$(local-imgs-file) 
	adb reboot bootloader
	sleep 20
	fastboot flash userdata out/imgs/data.img
	sleep 1
	fastboot flash system out/imgs/system.img
	sleep 1
	fastboot reboot
	echo flash done!

remount:
	adb shell su2 -c mount -o rw,remount /dev/block/mmcblk0p15 /system

local-porting-sdcard:=/mnt/sdcard/porting
local-porting-tools:=$(local-porting-sdcard)/tools
root-phone: remount
	adb shell mkdir -p $(local-porting-tools)/
	adb push other/adbd $(local-porting-tools)/
	adb push other/insecure $(local-porting-tools)/
	adb shell su2 -c cp $(local-porting-tools)/insecure /system/xbin/
	adb shell su2 -c chmod 777 /system/xbin/insecure
	adb shell su2 -c insecure

fullota-to-phone: fullota
	adb push out/fullota.zip /sdcard/

apply-fullota: 
	if adb shell ls -l /sdcard/fullota.zip | grep -q "No such file or directory"; \
	then \
		echo "no fullota.zip in sdcard, update it"; \
		adb push out/fullota.zip /sdcard/; \
	else \
		md5_1=`md5sum out/fullota.zip | cut -d' ' -f1`; \
		md5_2=`adb shell md5sum /sdcard/fullota.zip | cut -d' ' -f1`; \
		if [ "$$md5_1" != "$$md5_2" ]; \
		then \
			echo "md5 is not same, update fullota.zip"; \
			adb push out/fullota.zip /sdcard/; \
		else \
			echo "md5 is same, skip update fullota.zip"; \
		fi \
	fi
	#adb shell su2 -c 'cat /dev/null > /cache/recovery/command'
	#adb shell su2 -c 'echo "--wipe_data" >> /cache/recovery/command'
	#adb shell su2 -c 'echo "--wipe_cache" >> /cache/recovery/command'
	#adb shell su2 -c 'echo "--update_package=/sdcard/fullota.zip" >> /cache/recovery/command'
	adb shell mkdir -p $(local-porting-tools)
	adb push customize-make/command $(local-porting-tools)/
	adb shell su2 -c cp $(local-porting-tools)/command /cache/recovery/
	adb reboot recovery

