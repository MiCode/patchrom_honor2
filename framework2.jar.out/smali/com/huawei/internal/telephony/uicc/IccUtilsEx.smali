.class public Lcom/huawei/internal/telephony/uicc/IccUtilsEx;
.super Ljava/lang/Object;
.source "IccUtilsEx.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 158
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v0

    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    return v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 169
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "length"

    .prologue
    .line 179
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccUtils;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    .line 192
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->parseToRGB([BIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
