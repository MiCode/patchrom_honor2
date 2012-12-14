.class Lcom/android/hwcamera/VideoCamera$6;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;

.field final synthetic val$isDoAfter:Z

.field final synthetic val$valid:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2413
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    iput-boolean p2, p0, Lcom/android/hwcamera/VideoCamera$6;->val$valid:Z

    iput-boolean p3, p0, Lcom/android/hwcamera/VideoCamera$6;->val$isDoAfter:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2417
    const-string v1, "videocamera"

    const-string v2, "stopVideoRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$8100(Lcom/android/hwcamera/VideoCamera;)Landroid/media/CamcorderProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2420
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$8100(Lcom/android/hwcamera/VideoCamera;)Landroid/media/CamcorderProfile;

    move-result-object v2

    #calls: Lcom/android/hwcamera/VideoCamera;->isNeedStereo(Landroid/media/CamcorderProfile;)Z
    invoke-static {v1, v2}, Lcom/android/hwcamera/VideoCamera;->access$8200(Lcom/android/hwcamera/VideoCamera;Landroid/media/CamcorderProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2421
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setAudioParamForStero(Z)V
    invoke-static {v1, v3}, Lcom/android/hwcamera/VideoCamera;->access$8300(Lcom/android/hwcamera/VideoCamera;Z)V

    .line 2425
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->doStopVideoRecording()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$8400(Lcom/android/hwcamera/VideoCamera;)V

    .line 2427
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->effectsActive()Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$8500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2428
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$8600(Lcom/android/hwcamera/VideoCamera;)V

    .line 2430
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2431
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2432
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera$6;->val$valid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2433
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera$6;->val$isDoAfter:Z

    if-eqz v1, :cond_2

    .line 2434
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2438
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$6;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2439
    return-void

    .line 2436
    :cond_2
    iput v3, v0, Landroid/os/Message;->arg1:I

    goto :goto_0
.end method
