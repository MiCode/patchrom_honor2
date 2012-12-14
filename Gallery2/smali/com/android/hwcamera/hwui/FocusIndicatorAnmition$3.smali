.class Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusIndicatorView.java"


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
    .line 311
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$000(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Lcom/android/hwcamera/hwui/FocusIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetX:F
    invoke-static {v1}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$100(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setX(F)V

    .line 314
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$000(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Lcom/android/hwcamera/hwui/FocusIndicatorView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mTargetY:F
    invoke-static {v1}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$200(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setY(F)V

    .line 315
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$3;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaUpAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$300(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 316
    return-void
.end method
