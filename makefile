#
# Makefile for honor2
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_honor2.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/honor2_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SettingsProvider Gallery2

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider SettingsProvider

local-miui-modified-apps := MiuiHome Settings Phone Mms ThemeManager

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= #local-put-to-phone

-include customize-make/include_customize.mk

#include_thirdpart_app := true

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-pre-zip-misc:
	rm -f $(ZIP_DIR)/system/framework/hwframework.jar
	cp out/framework2.jar $(ZIP_DIR)/system/framework/framework_ext.jar
	rm -f $(ZIP_DIR)/system/framework/framework2.jar
	cp other/build_b542.prop $(ZIP_DIR)/system/build.prop
	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp $(OUT_SYS_PATH)/bin/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	cp other/StockSettings.apk $(ZIP_DIR)/system/app/
	cp other/Settings_ex.apk $(ZIP_DIR)/system/app/
	cp other/boot_b542.img $(ZIP_DIR)/boot.img
	cp other/Generic.kl $(ZIP_DIR)/system/usr/keylayout/

#jar
%.phone : out/%.jar
	@echo push -- to --- phone
	adb push $< /system/framework
	adb shell su -c "chmod 644 /system/framework/$*.jar"
	adb shell stop
	adb shell start

out/framework2.jar : out/framework.jar
framework_ext.phone : framework2.phone
	adb push out/framework2.jar /system/framework/framework_ext.jar

#apk
%.sign-plat : out/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb push $<.signed /system/app/$*
	adb shell chmod 644 /system/app/$*

local-rom-zip := MIUI_honor2.zip
local-put-to-phone:
	adb shell rm /sdcard/$(local-rom-zip)
	adb push out/$(local-rom-zip) /sdcard/
	adb reboot recovery

