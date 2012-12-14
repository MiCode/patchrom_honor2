.class Lcom/android/hwcamera/hwui/Panel$3;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/Panel;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Panel$3;->this$0:Lcom/android/hwcamera/hwui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$3;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 430
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$3;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$3;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$100(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$3;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #calls: Lcom/android/hwcamera/hwui/Panel;->postProcess()V
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$1600(Lcom/android/hwcamera/hwui/Panel;)V

    .line 434
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 436
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$3;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->ANIMATING:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 439
    return-void
.end method
