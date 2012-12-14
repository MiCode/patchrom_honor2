#!/bin/bash

OUT_DIR=$1/out
ZIP_DIR=$OUT_DIR/ZIP
TARGET_FILES_DIR=$OUT_DIR/target_files

echo "prepare customized data"
mkdir -p $TARGET_FILES_DIR/DATA/cust/
cp -r $ZIP_DIR/data/cust/* $TARGET_FILES_DIR/DATA/cust/

