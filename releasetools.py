import common
import edify_generator
import copy

def AddAssertions(info):
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

def FullOTA_InstallEnd(info):
    AddAssertions(info)
    PerpareData(info)
    return 

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
    PerpareData(info)
    return
