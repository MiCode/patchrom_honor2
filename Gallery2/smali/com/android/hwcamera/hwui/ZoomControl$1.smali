.class Lcom/android/hwcamera/hwui/ZoomControl$1;
.super Ljava/lang/Object;
.source "ZoomControl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 97
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ZoomControl$1;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 102
    .local v0, alpha:F
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ZoomControl$1;->this$0:Lcom/android/hwcamera/hwui/ZoomControl;

    #getter for: Lcom/android/hwcamera/hwui/ZoomControl;->mZoomControlLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/ZoomControl;->access$000(Lcom/android/hwcamera/hwui/ZoomControl;)Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAlpha(F)V

    .line 103
    return-void
.end method
