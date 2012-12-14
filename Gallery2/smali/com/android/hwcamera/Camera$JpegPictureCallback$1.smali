.class Lcom/android/hwcamera/Camera$JpegPictureCallback$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera$JpegPictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/Camera$JpegPictureCallback;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera$JpegPictureCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 2328
    iput-object p1, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback$1;->this$1:Lcom/android/hwcamera/Camera$JpegPictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2331
    iget-object v0, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback$1;->this$1:Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$3900(Lcom/android/hwcamera/Camera;Z)V

    .line 2332
    iget-object v0, p0, Lcom/android/hwcamera/Camera$JpegPictureCallback$1;->this$1:Lcom/android/hwcamera/Camera$JpegPictureCallback;

    iget-object v0, v0, Lcom/android/hwcamera/Camera$JpegPictureCallback;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/android/hwcamera/Camera;->access$4100(Lcom/android/hwcamera/Camera;ZZ)V

    .line 2333
    return-void
.end method
