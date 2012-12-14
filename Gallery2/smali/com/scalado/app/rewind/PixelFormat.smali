.class public Lcom/scalado/app/rewind/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(Lcom/scalado/base/Image$Config;)I
    .locals 3
    .parameter "config"

    .prologue
    const/16 v0, 0x10

    const/16 v1, 0xc

    .line 43
    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    if-ne p0, v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    sget-object v2, Lcom/scalado/base/Image$Config;->YUV_420SP:Lcom/scalado/base/Image$Config;

    if-ne p0, v2, :cond_2

    move v0, v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v2, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    if-ne p0, v2, :cond_3

    move v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget-object v1, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    if-eq p0, v1, :cond_0

    .line 51
    sget-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    if-ne p0, v0, :cond_4

    .line 52
    const/16 v0, 0x20

    goto :goto_0

    .line 54
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported config"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static translateToScaladoImageConfig(I)Lcom/scalado/base/Image$Config;
    .locals 3
    .parameter "pixelformatId"

    .prologue
    .line 16
    sparse-switch p0, :sswitch_data_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pixelformat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :sswitch_0
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    .line 26
    :goto_0
    return-object v0

    .line 22
    :sswitch_1
    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 24
    :sswitch_2
    sget-object v0, Lcom/scalado/base/Image$Config;->YUV_422SP:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 26
    :sswitch_3
    sget-object v0, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    goto :goto_0

    .line 16
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
