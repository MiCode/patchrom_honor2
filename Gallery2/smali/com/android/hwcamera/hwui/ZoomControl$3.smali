.class Lcom/android/hwcamera/hwui/ZoomControl$3;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/ZoomControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/ZoomControl;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/ZoomControl;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/16 v3, 0x2001

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$500(Lcom/android/hwcamera/hwui/ZoomControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$000(Lcom/android/hwcamera/hwui/ZoomControl;)Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #setter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->access$502(Lcom/android/hwcamera/hwui/ZoomControl;Z)Z

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #setter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->access$402(Lcom/android/hwcamera/hwui/ZoomControl;Z)Z

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$100(Lcom/android/hwcamera/hwui/ZoomControl;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$300(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$3;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$300(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 193
    return-void
.end method
