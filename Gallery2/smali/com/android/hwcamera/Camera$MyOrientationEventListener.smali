.class Lcom/android/hwcamera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field bFirstRun:Z

.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/Camera;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 4069
    iput-object p1, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    .line 4070
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 4067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->bFirstRun:Z

    .line 4071
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/16 v4, 0x17

    .line 4078
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 4109
    :cond_0
    :goto_0
    return-void

    .line 4080
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$12400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/PanoramaBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4082
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$12400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/PanoramaBar;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setOrientationEx(I)V

    .line 4084
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {p1}, Lcom/android/hwcamera/Util;->roundOrientation(I)I

    move-result v3

    #setter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$10802(Lcom/android/hwcamera/Camera;I)I

    .line 4087
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientation:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$10800(Lcom/android/hwcamera/Camera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v3}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int v1, v2, v3

    .line 4089
    .local v1, orientationCompensation:I
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->bFirstRun:Z

    if-eqz v2, :cond_3

    .line 4090
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->bFirstRun:Z

    .line 4096
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 4097
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v2, v1}, Lcom/android/hwcamera/Camera;->access$4702(Lcom/android/hwcamera/Camera;I)I

    .line 4098
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v3, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;)I

    move-result v3

    #calls: Lcom/android/hwcamera/Camera;->setOrientationIndicator(I)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/Camera;->access$12500(Lcom/android/hwcamera/Camera;I)V

    .line 4099
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4100
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v3, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/Camera;->setOrientationInvokeAfterCaptureEx(I)V

    .line 4102
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$5600(Lcom/android/hwcamera/Camera;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$8000(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4104
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 4105
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4106
    iget-object v2, p0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$8000(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
