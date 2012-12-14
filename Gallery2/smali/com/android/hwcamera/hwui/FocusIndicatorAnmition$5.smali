.class Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$5;
.super Ljava/lang/Object;
.source "FocusIndicatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 334
    .local v0, rate:F
    iget-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$000(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Lcom/android/hwcamera/hwui/FocusIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setScaleX(F)V

    .line 335
    iget-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$5;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$000(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Lcom/android/hwcamera/hwui/FocusIndicatorView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setScaleY(F)V

    .line 336
    return-void
.end method
