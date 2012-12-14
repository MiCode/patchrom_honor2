.class Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$8;
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
    .line 360
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$8;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 363
    const-string v0, ""

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$8;->this$0:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    #getter for: Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->mFocusView:Lcom/android/hwcamera/hwui/FocusIndicatorView;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->access$000(Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;)Lcom/android/hwcamera/hwui/FocusIndicatorView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setAlpha(F)V

    .line 365
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 368
    const-string v0, ""

    const-string v1, "onAnimationend"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition$8;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 370
    return-void
.end method
