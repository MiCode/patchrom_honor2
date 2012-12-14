.class Lcom/android/hwcamera/VideoCamera$15;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->restorePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 5349
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5351
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$6600(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 5353
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restoreParameterToDefault()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$9600(Lcom/android/hwcamera/VideoCamera;)V

    .line 5355
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mIsMute:Z
    invoke-static {v0, v3}, Lcom/android/hwcamera/VideoCamera;->access$9702(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 5358
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6600(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5359
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZoomValue:I
    invoke-static {v0, v3}, Lcom/android/hwcamera/VideoCamera;->access$6502(Lcom/android/hwcamera/VideoCamera;I)I

    .line 5360
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5361
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$6500(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 5366
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$9800(Lcom/android/hwcamera/VideoCamera;)V

    .line 5367
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5368
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$15;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$10000(Lcom/android/hwcamera/VideoCamera;)V

    .line 5370
    :cond_1
    return-void
.end method
