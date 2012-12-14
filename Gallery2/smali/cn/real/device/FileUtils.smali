.class public Lcn/real/device/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static mDefaultSTViewHight:I

.field public static mFileFormat:I

.field public static mScaleX:F

.field public static mSurfaceHeight:I

.field public static mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x4

    sput v0, Lcn/real/device/FileUtils;->mFileFormat:I

    .line 19
    sput v1, Lcn/real/device/FileUtils;->mSurfaceWidth:I

    .line 20
    sput v1, Lcn/real/device/FileUtils;->mSurfaceHeight:I

    .line 21
    const/16 v0, 0x1e

    sput v0, Lcn/real/device/FileUtils;->mDefaultSTViewHight:I

    .line 22
    const/high16 v0, 0x3f80

    sput v0, Lcn/real/device/FileUtils;->mScaleX:F

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFileFormat(Ljava/lang/String;)I
    .locals 13
    .parameter "mFilePath"

    .prologue
    const/16 v12, 0xff

    const/16 v11, 0xfe

    .line 38
    const/16 v0, 0xa

    .line 39
    .local v0, MAX:I
    const/4 v7, 0x0

    .line 40
    .local v7, ret:I
    new-array v2, v0, [B

    .line 42
    .local v2, barray:[B
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 43
    .local v5, input:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v1, bInput:Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    .line 45
    .local v6, nRead:I
    if-ge v6, v0, :cond_0

    .line 46
    const/4 v7, -0x2

    .line 48
    :cond_0
    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v4, v10, 0xff

    .line 49
    .local v4, firstBit:I
    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v8, v10, 0xff

    .line 50
    .local v8, secondBit:I
    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v9, v10, 0xff

    .line 52
    .local v9, thirdBit:I
    if-ne v4, v12, :cond_1

    if-ne v8, v11, :cond_1

    .line 53
    const/4 v10, 0x2

    sput v10, Lcn/real/device/FileUtils;->mFileFormat:I

    .line 61
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 66
    .end local v1           #bInput:Ljava/io/BufferedInputStream;
    .end local v4           #firstBit:I
    .end local v5           #input:Ljava/io/InputStream;
    .end local v6           #nRead:I
    .end local v8           #secondBit:I
    .end local v9           #thirdBit:I
    :goto_1
    return v7

    .line 54
    .restart local v1       #bInput:Ljava/io/BufferedInputStream;
    .restart local v4       #firstBit:I
    .restart local v5       #input:Ljava/io/InputStream;
    .restart local v6       #nRead:I
    .restart local v8       #secondBit:I
    .restart local v9       #thirdBit:I
    :cond_1
    if-ne v4, v11, :cond_2

    if-ne v8, v12, :cond_2

    .line 55
    const/4 v10, 0x3

    sput v10, Lcn/real/device/FileUtils;->mFileFormat:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1           #bInput:Ljava/io/BufferedInputStream;
    .end local v4           #firstBit:I
    .end local v5           #input:Ljava/io/InputStream;
    .end local v6           #nRead:I
    .end local v8           #secondBit:I
    .end local v9           #thirdBit:I
    :catch_0
    move-exception v3

    .line 63
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v7, -0x2

    goto :goto_1

    .line 56
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #bInput:Ljava/io/BufferedInputStream;
    .restart local v4       #firstBit:I
    .restart local v5       #input:Ljava/io/InputStream;
    .restart local v6       #nRead:I
    .restart local v8       #secondBit:I
    .restart local v9       #thirdBit:I
    :cond_2
    const/16 v10, 0xef

    if-ne v4, v10, :cond_3

    const/16 v10, 0xbb

    if-ne v8, v10, :cond_3

    const/16 v10, 0xbf

    if-ne v9, v10, :cond_3

    .line 57
    const/4 v10, 0x1

    :try_start_1
    sput v10, Lcn/real/device/FileUtils;->mFileFormat:I

    goto :goto_0

    .line 60
    :cond_3
    const/4 v10, 0x5

    sput v10, Lcn/real/device/FileUtils;->mFileFormat:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static GetSurfaceHeight()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcn/real/device/FileUtils;->mSurfaceHeight:I

    return v0
.end method
