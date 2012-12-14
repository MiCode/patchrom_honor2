.class final Lcom/android/hwcamera/VideoCamera$ZoomListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$ZoomListener;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 4
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 1687
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom changed: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/hwcamera/VideoCamera;->access$6502(Lcom/android/hwcamera/VideoCamera;I)I

    .line 1692
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 1696
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6600(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1697
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZooming:Z
    invoke-static {v0, v3}, Lcom/android/hwcamera/VideoCamera;->access$6702(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 1698
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1699
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6300(Lcom/android/hwcamera/VideoCamera;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6300(Lcom/android/hwcamera/VideoCamera;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 1700
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$5700(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$6300(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->startSmoothZoom(I)V

    .line 1701
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$6402(Lcom/android/hwcamera/VideoCamera;I)I

    .line 1707
    :cond_1
    :goto_0
    return-void

    .line 1703
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZoomState:I
    invoke-static {v0, v3}, Lcom/android/hwcamera/VideoCamera;->access$6402(Lcom/android/hwcamera/VideoCamera;I)I

    goto :goto_0
.end method
