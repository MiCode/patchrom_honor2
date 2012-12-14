.class Lcom/android/hwcamera/hwui/ZoomControl$2;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 136
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 146
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$100(Lcom/android/hwcamera/hwui/ZoomControl;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 147
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$200(Lcom/android/hwcamera/hwui/ZoomControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$300(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$000(Lcom/android/hwcamera/hwui/ZoomControl;)Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->clearAnimation()V

    .line 150
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingIn:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$400(Lcom/android/hwcamera/hwui/ZoomControl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsFadingOut:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$500(Lcom/android/hwcamera/hwui/ZoomControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsSwitchCameraId:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$600(Lcom/android/hwcamera/hwui/ZoomControl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimEndAuto:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$700(Lcom/android/hwcamera/hwui/ZoomControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$100(Lcom/android/hwcamera/hwui/ZoomControl;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 169
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v2, 0xfa

    .line 174
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/hwui/ZoomControl;->mIsAnimationEndByUser:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->access$202(Lcom/android/hwcamera/hwui/ZoomControl;Z)Z

    .line 175
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$100(Lcom/android/hwcamera/hwui/ZoomControl;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$800(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 177
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$900(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/ZoomControl;->access$800(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBarState:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$100(Lcom/android/hwcamera/hwui/ZoomControl;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$800(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->access$900(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mProgressThumbNormalToDissolve:Landroid/graphics/drawable/TransitionDrawable;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/ZoomControl;->access$800(Lcom/android/hwcamera/hwui/ZoomControl;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ZoomControl$2;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setState(I)V

    goto :goto_0
.end method
