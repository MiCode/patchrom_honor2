.class Lcom/android/hwcamera/Camera$8;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera;->restorePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 7596
    iput-object p1, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7598
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$12902(Lcom/android/hwcamera/Camera;Z)Z

    .line 7599
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In restore, mRestartPreviewNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$12900(Lcom/android/hwcamera/Camera;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7600
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$13000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 7601
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->restoreParameterToDefault()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$13100(Lcom/android/hwcamera/Camera;)V

    .line 7602
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateSuperPanel()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$13200(Lcom/android/hwcamera/Camera;)V

    .line 7604
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mIsMute:Z
    invoke-static {v0, v3}, Lcom/android/hwcamera/Camera;->access$6902(Lcom/android/hwcamera/Camera;Z)Z

    .line 7605
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsMute:Z
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->setSoundState(Z)V

    .line 7607
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7608
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mZoomValue:I
    invoke-static {v0, v3}, Lcom/android/hwcamera/Camera;->access$9502(Lcom/android/hwcamera/Camera;I)I

    .line 7611
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$5900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7612
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$5900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$9500(Lcom/android/hwcamera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 7615
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x2

    #calls: Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$13300(Lcom/android/hwcamera/Camera;I)V

    .line 7617
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera$8;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$13400(Lcom/android/hwcamera/Camera;)V

    .line 7618
    return-void
.end method
