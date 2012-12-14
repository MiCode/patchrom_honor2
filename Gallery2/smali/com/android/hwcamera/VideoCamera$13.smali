.class Lcom/android/hwcamera/VideoCamera$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoCamera.java"


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
    .line 4862
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$13;->this$0:Lcom/android/hwcamera/VideoCamera;

    iput-object p2, p0, Lcom/android/hwcamera/VideoCamera$13;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 4869
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$13;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4870
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4865
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/VideoCamera$13;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 4866
    return-void
.end method
