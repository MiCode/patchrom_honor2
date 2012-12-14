#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out
GIT_APPLY=$PORT_ROOT/tools/git.apply

SEP_FRAME="framework2.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
	mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
    rm -rf $BUILD_OUT/$SEP_FRAME/smali/miui
	mv "$BUILD_OUT/framework/smali/android" "$BUILD_OUT/$SEP_FRAME/smali"
	mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/$SEP_FRAME/smali"
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done

	cp -r $BUILD_OUT/$SEP_FRAME/smali/android/* $BUILD_OUT/framework2/smali/android
	cp -r $BUILD_OUT/$SEP_FRAME/smali/miui/*  $BUILD_OUT/framework2/smali/miui
	rm -rf $BUILD_OUT/$SEP_FRAME
fi

if [ "$2" = "out/services" ];then
	echo "apply compile patch services"
	cp framework-patch/services/*.patch out/services
	cd out/services
	for f in `ls *.patch`;do
		$GIT_APPLY "$f"
	done
	rm *.patch
	for rej in `find -name "*.rej"`;do
		echo "apply services patch fail"
		exit 1
	done
fi

