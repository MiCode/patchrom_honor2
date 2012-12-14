.class Lcom/android/hwcamera/VideoCamera$14;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->initTwinkleAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4873
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$14;->this$0:Lcom/android/hwcamera/VideoCamera;

    iput-object p2, p0, Lcom/android/hwcamera/VideoCamera$14;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 4876
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 4877
    .local v0, rate:F
    const/high16 v1, 0x3f00

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 4878
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$14;->val$view:Landroid/view/View;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4882
    :goto_0
    return-void

    .line 4880
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$14;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
