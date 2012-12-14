.class Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "PopupWindowEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/PopupWindowEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/hwui/PopupWindowEx;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    .line 1311
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1312
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1329
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1340
    :goto_0
    return v0

    .line 1333
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->dismiss()V

    goto :goto_0

    .line 1338
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1340
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 1346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1347
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1348
    .local v1, y:I
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update()V

    .line 1349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1351
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1352
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->setFocusable(Z)V

    .line 1354
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1355
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOutsideTouchable(Z)V

    .line 1357
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update()V

    .line 1358
    const-string v2, "popupnew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent the state outside"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1373
    :goto_0
    return v2

    .line 1360
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_6

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 1362
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1363
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->setFocusable(Z)V

    .line 1365
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1366
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOutsideTouchable(Z)V

    .line 1368
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update()V

    .line 1369
    const-string v2, "popupnew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent the state inside"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1372
    :cond_6
    const-string v2, "popupnew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent the state 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isTouchable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchor:Z
    invoke-static {v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$600(Lcom/android/hwcamera/hwui/PopupWindowEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1318
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1319
    .local v0, drawableState:[I
    invoke-static {}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$700()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1322
    .end local v0           #drawableState:[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1380
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1381
    .local v1, y:I
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update()V

    .line 1382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 1384
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1385
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->setFocusable(Z)V

    .line 1387
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1388
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOutsideTouchable(Z)V

    .line 1390
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update()V

    .line 1391
    const-string v2, "popupnew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the state outside"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1406
    :goto_0
    return v2

    .line 1393
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_8

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_5

    :cond_4
    if-lez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_8

    .line 1395
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1396
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->setFocusable(Z)V

    .line 1398
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1399
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOutsideTouchable(Z)V

    .line 1401
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update()V

    .line 1402
    const-string v2, "popupnew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the state inside"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isOutsideTouchable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1405
    :cond_8
    const-string v2, "popupnew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the state 3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->isFocusable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isTouchable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$800(Lcom/android/hwcamera/hwui/PopupWindowEx;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$800(Lcom/android/hwcamera/hwui/PopupWindowEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1418
    :goto_0
    return-void

    .line 1416
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
