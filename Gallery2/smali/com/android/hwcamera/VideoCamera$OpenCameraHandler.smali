.class Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenCameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 4142
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    .line 4143
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 4147
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 4166
    :goto_0
    return-void

    .line 4149
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->doSwitchCamera()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$2300(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 4152
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/VideoCamera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0

    .line 4156
    :pswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4157
    .local v0, msgMessage:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4158
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->getTotalRecordingTime()J
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$9100(Lcom/android/hwcamera/VideoCamera;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4159
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4160
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
