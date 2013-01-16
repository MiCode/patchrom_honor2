import common
import edify_generator
import copy

def AddFirmwareVersionAssertions(info):
    edify = info.script
    version_assert = """
################################################################################################################
unmount("/system");
mount("ext4", "EMMC", "/dev/block/mmcblk0p15", "/system");
if file_getprop("/system/build.prop","ro.build.display.id") != "U9508V100R001CHNC00B542"
then
    ui_print("");
    ui_print("");
    ui_print("");
    ui_print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    ui_print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    ui_print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    ui_print("");
    ui_print("The current firmware version is: " + file_getprop("/system/build.prop","ro.build.display.id"));
    ui_print("");
    ui_print("Please flash EMUI rom which version is CHNC00B542 firstly!!!");
    ui_print("");
    ui_print("You can down it from 'http://cn.ui.vmall.com/emotiondownload.php'");
    ui_print("");
    ui_print("Then you can flash MIUI rom");
    ui_print("");
    ui_print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    ui_print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    ui_print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    ui_print("");
    ui_print("");
    ui_print("");
    abort();
endif;
################################################################################################################
"""
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ");" + version_assert)
            return

def AddDeviceAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.build.product") == "k3v2oem1");')
            return

def PerpareData(info):
    input_zip = info.input_zip
    output_zip = info.output_zip
    for info in input_zip.infolist():
        if info.filename.startswith("DATA/cust"):
            basefilename = info.filename[5:]
            info2 = copy.copy(info)
            info2.filename = "data/" + basefilename
            if output_zip is not None:
                data = input_zip.read(info.filename)
                output_zip.writestr(info2, data)
    return

def RemoveCache(info):
    info.script.Mount("/data")
    info.script.AppendExtra('delete_recursive("/data/dalvik-cache");')
    info.script.Unmount("/data")
    return

def FullOTA_InstallEnd(info):
    AddDeviceAssertions(info)
    AddFirmwareVersionAssertions(info)
    PerpareData(info)
    RemoveCache(info)
    return

def IncrementalOTA_InstallEnd(info):
    AddDeviceAssertions(info)
    return

