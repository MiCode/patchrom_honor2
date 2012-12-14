.class Lcom/android/hwcamera/hwui/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/android/hwcamera/hwui/Panel;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 283
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #calls: Lcom/android/hwcamera/hwui/Panel;->isCouldFly()Z
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$000(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v5

    .line 286
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 287
    .local v0, action:I
    if-nez v0, :cond_7

    .line 288
    iput v5, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    .line 289
    iput v5, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    .line 290
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContent:Landroid/view/View;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$100(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 292
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mOrientation:I
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$200(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 293
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    iput v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    .line 298
    :cond_2
    :goto_2
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/Panel$1;->setInitialPosition:Z

    .line 314
    :goto_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$700(Lcom/android/hwcamera/hwui/Panel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    if-ne v0, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mState:Lcom/android/hwcamera/hwui/Panel$State;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$800(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$State;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/hwui/Panel$State;->ABOUT_TO_ANIMATE:Lcom/android/hwcamera/hwui/Panel$State;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mIsShrinking:Z
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$900(Lcom/android/hwcamera/hwui/Panel;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$1000(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPanelListener:Lcom/android/hwcamera/hwui/Panel$OnPanelListener;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$1000(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$OnPanelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/hwcamera/hwui/Panel$OnPanelListener;->onPanelStartClose()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    iget-object v2, v2, Lcom/android/hwcamera/hwui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 293
    goto :goto_1

    .line 295
    :cond_5
    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mPosition:I
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$300(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    :goto_4
    iput v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_4

    .line 300
    :cond_7
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->setInitialPosition:Z

    if-eqz v1, :cond_8

    .line 302
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentWidth:I
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$400(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    .line 303
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mContentHeight:I
    invoke-static {v3}, Lcom/android/hwcamera/hwui/Panel;->access$500(Lcom/android/hwcamera/hwui/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    .line 305
    iget-object v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->this$0:Lcom/android/hwcamera/hwui/Panel;

    #getter for: Lcom/android/hwcamera/hwui/Panel;->mGestureListener:Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/Panel;->access$600(Lcom/android/hwcamera/hwui/Panel;)Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;

    move-result-object v1

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    iget v4, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    invoke-virtual {v1, v3, v4}, Lcom/android/hwcamera/hwui/Panel$PanelOnGestureListener;->setScroll(II)V

    .line 306
    iput-boolean v5, p0, Lcom/android/hwcamera/hwui/Panel$1;->setInitialPosition:Z

    .line 308
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    .line 309
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    .line 312
    :cond_8
    iget v1, p0, Lcom/android/hwcamera/hwui/Panel$1;->initX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/hwcamera/hwui/Panel$1;->initY:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto/16 :goto_3
.end method
