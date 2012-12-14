.class Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;
.super Landroid/os/Handler;
.source "CameraAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraAppImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraAppImpl;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/CameraAppImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    .line 103
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 108
    const-string v2, "CameraAppImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---handleMessage msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v2}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 111
    const-string v0, "CameraAppImpl"

    const-string v1, "Can\'t reach here!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v2}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/Camera;->isCameraReleased()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->openCameraDevice()V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->prepareQuitCamera()V

    .line 136
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->doCancelPanorama()V

    goto :goto_0

    .line 142
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/android/hwcamera/Util;->stopPanorama(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 145
    :pswitch_7
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->initializeZoom()V

    goto :goto_0

    .line 150
    :pswitch_8
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->doCapture()V

    goto :goto_0

    .line 153
    :pswitch_9
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_0

    .line 156
    :pswitch_a
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->setDisplayOrientation()V

    goto/16 :goto_0

    .line 159
    :pswitch_b
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/Camera;->doUpdateShootingMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :pswitch_c
    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v2}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 165
    :pswitch_d
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    goto/16 :goto_0

    .line 168
    :pswitch_e
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->doSetFaceOrientation(I)V

    goto/16 :goto_0

    .line 171
    :pswitch_f
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->doSwitchCamera()V

    goto/16 :goto_0

    .line 174
    :pswitch_10
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/Camera;->doSetCameraParameters(II)V

    goto/16 :goto_0

    .line 177
    :pswitch_11
    iget-object v2, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v2}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Lcom/android/hwcamera/Camera;->cancelSensorAutoFocus(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    .line 180
    :pswitch_12
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->doStartAutoFocus(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 183
    :pswitch_13
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->startContiniousAutoFocus()V

    goto/16 :goto_0

    .line 186
    :pswitch_14
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/Camera;->setFaceArea(Ljava/util/List;)V

    goto/16 :goto_0

    .line 189
    :pswitch_15
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    goto/16 :goto_0

    .line 192
    :pswitch_16
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #setter for: Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraAppImpl;->access$102(Lcom/android/hwcamera/CameraAppImpl;Z)Z

    .line 193
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera;->resetParametersCompensation()V

    goto/16 :goto_0

    .line 197
    :pswitch_17
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/Camera;->setFaceArea(Ljava/util/List;)V

    goto/16 :goto_0

    .line 201
    :pswitch_18
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;->this$0:Lcom/android/hwcamera/CameraAppImpl;

    #getter for: Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;
    invoke-static {v0}, Lcom/android/hwcamera/CameraAppImpl;->access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_15
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_5
        :pswitch_16
        :pswitch_6
        :pswitch_13
        :pswitch_e
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
