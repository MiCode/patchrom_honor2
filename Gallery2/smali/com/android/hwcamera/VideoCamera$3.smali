.class Lcom/android/hwcamera/VideoCamera$3;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
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
    .line 1710
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1713
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$6800(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1714
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->galleryExClose()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$6900(Lcom/android/hwcamera/VideoCamera;)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$3000(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1717
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBackgroundResource(I)V

    .line 1718
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1719
    .local v0, thumbPadding:I
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$3;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/android/hwcamera/RotateImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1726
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1729
    return-void
.end method
