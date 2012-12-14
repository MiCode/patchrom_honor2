.class Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/VideoCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    .line 2064
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 2065
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 2072
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return-void

    .line 2073
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {p1}, Lcom/android/hwcamera/VideoCamera;->roundOrientation(I)I

    move-result v3

    #setter for: Lcom/android/hwcamera/VideoCamera;->mOrientation:I
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$7302(Lcom/android/hwcamera/VideoCamera;I)I

    .line 2076
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7300(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v3}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int v0, v2, v3

    .line 2078
    .local v0, orientationCompensation:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 2079
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2, v0}, Lcom/android/hwcamera/VideoCamera;->access$7402(Lcom/android/hwcamera/VideoCamera;I)I

    .line 2081
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2083
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v3

    #calls: Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$7600(Lcom/android/hwcamera/VideoCamera;I)V

    .line 2084
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$3500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2085
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v3

    #calls: Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V
    invoke-static {v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$7700(Lcom/android/hwcamera/VideoCamera;I)V

    .line 2088
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    .line 2089
    .local v1, shutterCenter:Lcom/android/hwcamera/RotateImageView;
    if-eqz v1, :cond_3

    .line 2090
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setOrientation(I)V

    .line 2092
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 2093
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    .line 2095
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Switcher;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2096
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Switcher;

    move-result-object v2

    const v3, 0x7f020048

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/Switcher;->setImageResource(I)V

    .line 2123
    .end local v1           #shutterCenter:Lcom/android/hwcamera/RotateImageView;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    invoke-static {v2}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    goto/16 :goto_0

    .line 2100
    .restart local v1       #shutterCenter:Lcom/android/hwcamera/RotateImageView;
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    .line 2102
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Switcher;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2103
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Switcher;

    move-result-object v2

    const v3, 0x7f020049

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/Switcher;->setImageResource(I)V

    goto :goto_1

    .line 2111
    .end local v1           #shutterCenter:Lcom/android/hwcamera/RotateImageView;
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2115
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/RotateImageView;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2116
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$7400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_7

    .line 2117
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 2119
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$1600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_1
.end method
