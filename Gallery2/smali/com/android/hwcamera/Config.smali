.class public Lcom/android/hwcamera/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static ACTION_PIC_NUM:I

.field public static BURST_MAX_NUMBER:I

.field public static REWIND_PIC_NUM:I

.field public static backgroundSelectionEnabled:Z

.field public static burstSize:I

.field public static externalViewer:Ljava/lang/String;

.field public static previewCallbacksEnabled:Z

.field public static previewEnabled:Z

.field public static rewindMode:I

.field public static sampleNumn:I

.field public static saveEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v0, 0xa

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    sput v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 23
    sput v3, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 24
    sput v0, Lcom/android/hwcamera/Config;->ACTION_PIC_NUM:I

    .line 25
    sput v3, Lcom/android/hwcamera/Config;->burstSize:I

    .line 26
    sput v1, Lcom/android/hwcamera/Config;->sampleNumn:I

    .line 27
    sput-boolean v1, Lcom/android/hwcamera/Config;->previewEnabled:Z

    .line 28
    sput-boolean v2, Lcom/android/hwcamera/Config;->backgroundSelectionEnabled:Z

    .line 29
    sput-boolean v2, Lcom/android/hwcamera/Config;->saveEnabled:Z

    .line 31
    const-string v0, "com.scalado.applications.TestOpenGL"

    sput-object v0, Lcom/android/hwcamera/Config;->externalViewer:Ljava/lang/String;

    .line 32
    sput-boolean v2, Lcom/android/hwcamera/Config;->previewCallbacksEnabled:Z

    .line 33
    sput v1, Lcom/android/hwcamera/Config;->rewindMode:I

    .line 41
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Blaze generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Full Android on Blaze or SDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :cond_0
    sput v3, Lcom/android/hwcamera/Config;->burstSize:I

    .line 46
    :cond_1
    :goto_0
    const-string v0, "config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.MODEL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 43
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "myTouch_4G_Slide"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
