.class Lcom/android/hwcamera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
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
    .line 2949
    iput-object p1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2952
    iget-object v1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$10600(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 2954
    iget-object v1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->galleryExClose()V
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$10700(Lcom/android/hwcamera/Camera;)V

    .line 2962
    :cond_0
    :goto_0
    return-void

    .line 2955
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$9200(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2957
    iget-object v1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v1

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setBackgroundResource(I)V

    .line 2958
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 2959
    .local v0, thumbPadding:I
    iget-object v1, p0, Lcom/android/hwcamera/Camera$5;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/android/hwcamera/RotateImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2964
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 2967
    return-void
.end method
