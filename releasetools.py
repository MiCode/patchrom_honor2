import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' || getprop("ro.build.product") == "k3v2oem1");')
            return

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    return 

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
    return
