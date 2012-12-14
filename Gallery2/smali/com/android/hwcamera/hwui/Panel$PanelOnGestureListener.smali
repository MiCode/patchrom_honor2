.class Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/android/hwcamera/hwui/Panel;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollX:F

    .line 470
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v0

    sget-object v3, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    if-eq v0, v3, :cond_0

    .line 482
    :goto_0
    return v2

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v3, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0, v3}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 475
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$100(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    #setter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v3, v0}, Lcom/android/hwcamera/hwui/Panel;->access$902(Lcom/android/hwcamera/hwui/Panel;Z)Z

    .line 477
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$100(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    move v2, v1

    .line 482
    goto :goto_0

    :cond_2
    move v0, v2

    .line 475
    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->FLYING:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 486
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mOrientation:I
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$200(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .end local p4
    :goto_0
    #setter for: Lcom/android/hwcamera/hwui/Panel;->mVelocity:F
    invoke-static {v0, p4}, Lcom/android/hwcamera/hwui/Panel;->access$1102(Lcom/android/hwcamera/hwui/Panel;F)F

    .line 487
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v1, v1, Lcom/android/hwcamera/hwui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/Panel;->post(Ljava/lang/Runnable;)Z

    .line 488
    return v2

    .restart local p4
    :cond_0
    move p4, p3

    .line 486
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 492
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 494
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v3, Lcom/android/hwcamera/hwui/Panel$State;->TRACKING:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v2, v3}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 495
    const/4 v1, 0x0

    .local v1, tmpY:F
    const/4 v0, 0x0

    .line 496
    .local v0, tmpX:F
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mOrientation:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/Panel;->access$200(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 497
    iget v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollY:F

    .line 498
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v2

    if-nez v2, :cond_2

    .line 499
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/Panel;->access$500(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/android/hwcamera/hwui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/android/hwcamera/hwui/Panel;->access$1900(Lcom/android/hwcamera/hwui/Panel;FII)F

    move-result v1

    .line 511
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/android/hwcamera/hwui/Panel;->access$1500(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v2}, Lcom/android/hwcamera/hwui/Panel;->access$1200(Lcom/android/hwcamera/hwui/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mTrackX:F
    invoke-static {v2, v0}, Lcom/android/hwcamera/hwui/Panel;->access$1502(Lcom/android/hwcamera/hwui/Panel;F)F

    .line 513
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mTrackY:F
    invoke-static {v2, v1}, Lcom/android/hwcamera/hwui/Panel;->access$1202(Lcom/android/hwcamera/hwui/Panel;F)F

    .line 514
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/Panel;->invalidate()V

    .line 516
    :cond_1
    return v6

    .line 501
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/Panel;->access$500(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v4

    #calls: Lcom/android/hwcamera/hwui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/android/hwcamera/hwui/Panel;->access$1900(Lcom/android/hwcamera/hwui/Panel;FII)F

    move-result v1

    goto :goto_0

    .line 504
    :cond_3
    iget v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollX:F

    .line 505
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 506
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/Panel;->access$400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v4

    neg-int v4, v4

    #calls: Lcom/android/hwcamera/hwui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/android/hwcamera/hwui/Panel;->access$1900(Lcom/android/hwcamera/hwui/Panel;FII)F

    move-result v0

    goto :goto_0

    .line 508
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/Panel;->access$400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v4

    #calls: Lcom/android/hwcamera/hwui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/android/hwcamera/hwui/Panel;->access$1900(Lcom/android/hwcamera/hwui/Panel;FII)F

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 520
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v0

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    if-eq v0, v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v2

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$1000(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    sget-object v1, Lcom/android/hwcamera/hwui/Panel$State;->READY:Lcom/android/hwcamera/hwui/Panel$State;

    #setter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/Panel;->access$802(Lcom/android/hwcamera/hwui/Panel;Lcom/android/hwcamera/hwui/Panel$State;)Lcom/android/hwcamera/hwui/Panel$State;

    .line 531
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/Panel;->access$1000(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/Panel$OnPanelListener;->onPanelStartClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v1, v1, Lcom/android/hwcamera/hwui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setScroll(II)V
    .locals 1
    .parameter "initScrollX"
    .parameter "initScrollY"

    .prologue
    .line 465
    int-to-float v0, p1

    iput v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollX:F

    .line 466
    int-to-float v0, p2

    iput v0, p0, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->scrollY:F

    .line 467
    return-void
.end method
