.class Lcom/android/hwcamera/VideoCamera$10;
.super Landroid/os/HandlerThread;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 4128
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$10;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 4

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$10;->this$0:Lcom/android/hwcamera/VideoCamera;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$10;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$10;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v3, v3, Lcom/android/hwcamera/VideoCamera;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;-><init>(Lcom/android/hwcamera/VideoCamera;Landroid/os/Looper;)V

    #setter for: Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$9002(Lcom/android/hwcamera/VideoCamera;Landroid/os/Handler;)Landroid/os/Handler;

    .line 4132
    return-void
.end method
