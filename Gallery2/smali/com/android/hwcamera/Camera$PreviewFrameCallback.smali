.class final Lcom/android/hwcamera/Camera$PreviewFrameCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewFrameCallback"
.end annotation


# instance fields
.field bFirstRun:Z

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 1
    .parameter

    .prologue
    .line 2564
    iput-object p1, p0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;->bFirstRun:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2564
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$PreviewFrameCallback;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 2572
    const-string v0, "Camera"

    const-string v1, "setOneShotPreviewCallback onPreviewFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v0, p0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2590
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;->bFirstRun:Z

    if-eqz v0, :cond_0

    .line 2591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;->bFirstRun:Z

    .line 2592
    iget-object v0, p0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2594
    :cond_0
    return-void
.end method
