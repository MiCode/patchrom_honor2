.class Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$6;
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
    .line 338
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$6;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$6;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mAlphaDownAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$400(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 342
    return-void
.end method
