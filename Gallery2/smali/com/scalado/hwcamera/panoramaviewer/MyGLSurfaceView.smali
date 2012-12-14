.class Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "PanoramaViewer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private baseX:F

.field private baseY:F

.field private corrX:F

.field private corrY:F

.field private gestureStartZoomAmount:F

.field private gliderRotX:F

.field private gliderRotY:F

.field private isSupportLimit:Z

.field private mHandler:Landroid/os/Handler;

.field private moveDisabled:Z

.field private prevTouchTime:J

.field private primaryPointerId:I

.field private renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

.field private zoomIn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 364
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    .line 366
    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    .line 368
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->isSupportLimit:Z

    .line 372
    iput v2, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    .line 373
    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    .line 415
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, metrics:Landroid/util/DisplayMetrics;
    move-object v1, p1

    .line 416
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 418
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->corrX:F

    .line 419
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->corrY:F

    .line 423
    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->corrX:F

    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 424
    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->corrY:F

    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 426
    const-string v1, "MyGLSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metrics w = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 429
    return-void
.end method

.method private setupRenderer()V
    .locals 2

    .prologue
    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->setDebugFlags(I)V

    .line 435
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    invoke-direct {v0, v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;-><init>(Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    .line 436
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 437
    return-void
.end method


# virtual methods
.method public getCartesianX()F
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->corrX:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCartesianY()F
    .locals 2

    .prologue
    .line 390
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->corrY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public initWall()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->setInit()V

    .line 410
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 442
    packed-switch p1, :pswitch_data_0

    .line 465
    const/4 v0, 0x0

    :pswitch_0
    return v0

    .line 442
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 472
    const/4 v0, 0x0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v7, 0x1

    const v6, 0x3dcccccd

    const/high16 v5, 0x3f80

    .line 627
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    .line 628
    .local v2, prevSpan:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 630
    .local v0, currSpan:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 638
    .local v3, scaleFactor:F
    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    .line 640
    .local v1, newZoom:F
    cmpl-float v4, v3, v5

    if-lez v4, :cond_1

    .line 642
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    sub-float v5, v3, v5

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 643
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v4, v1, v7}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->setAbsoluteZoom(FZ)V

    .line 660
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 645
    :cond_1
    cmpg-float v4, v3, v5

    if-gez v4, :cond_0

    .line 647
    div-float v3, v5, v3

    .line 648
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    sub-float v5, v3, v5

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 649
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v4, v1, v7}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->setAbsoluteZoom(FZ)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->getZoomAmount()F

    move-result v0

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gestureStartZoomAmount:F

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 669
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "event"

    .prologue
    .line 478
    const/4 v8, 0x0

    .line 479
    .local v8, xSum:F
    const/4 v10, 0x0

    .line 485
    .local v10, ySum:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v11}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->isSmoothZoomOngoing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 488
    const/4 v11, 0x1

    .line 620
    :goto_0
    return v11

    .line 491
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 492
    .local v1, action:I
    shr-int/lit8 v3, v1, 0x8

    .line 496
    .local v3, pid:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 500
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    .line 501
    const/4 v11, 0x1

    goto :goto_0

    .line 503
    :cond_1
    if-nez v1, :cond_6

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 506
    move-object/from16 v0, p0

    iput v3, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 509
    .local v5, thisTime:J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    sub-long v11, v5, v11

    const-wide/16 v13, 0x12c

    cmp-long v11, v11, v13

    if-gez v11, :cond_5

    .line 512
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    .line 513
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->zoomIn:Z

    if-eqz v11, :cond_4

    .line 515
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->isSupportLimit:Z

    .line 518
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual/range {p0 .. p0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->getCartesianX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->getCartesianY()F

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->zoomSmoothIn(FF)V

    .line 527
    :goto_2
    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    .line 620
    .end local v5           #thisTime:J
    :cond_2
    :goto_3
    const/4 v11, 0x1

    goto :goto_0

    .line 512
    .restart local v5       #thisTime:J
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 522
    :cond_4
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->isSupportLimit:Z

    .line 525
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    invoke-virtual {v11}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->zoomSmoothOut()V

    goto :goto_2

    .line 533
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v11, v11, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gliderRotX:F

    .line 534
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v11, v11, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gliderRotY:F

    .line 535
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    .line 538
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 543
    .end local v5           #thisTime:J
    :cond_6
    const/4 v11, 0x2

    if-ne v1, v11, :cond_b

    if-nez v3, :cond_b

    .line 545
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    if-eqz v11, :cond_7

    .line 546
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 548
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    .line 549
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 551
    :cond_8
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 553
    .local v4, pointerId:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    if-eq v4, v11, :cond_9

    .line 557
    move-object/from16 v0, p0

    iput v4, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->primaryPointerId:I

    .line 558
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 559
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 560
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 566
    :cond_9
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    if-ge v2, v11, :cond_a

    .line 568
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v7

    .line 569
    .local v7, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 574
    .local v9, y:F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    sub-float v11, v7, v11

    add-float/2addr v8, v11

    .line 575
    move-object/from16 v0, p0

    iget v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    sub-float v11, v9, v11

    add-float/2addr v10, v11

    .line 578
    move-object/from16 v0, p0

    iput v7, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 579
    move-object/from16 v0, p0

    iput v9, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 583
    .end local v7           #x:F
    .end local v9           #y:F
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    .line 584
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    sub-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseX:F

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->baseY:F

    .line 591
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v12, v12, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    const/high16 v13, 0x3e80

    mul-float/2addr v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v14, v14, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 597
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v12, v12, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    const/high16 v13, 0x3e80

    mul-float/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v14, v14, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    iput v12, v11, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 601
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->isSupportLimit:Z

    if-eqz v11, :cond_2

    .line 602
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    invoke-virtual {v11}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->ensureAnglesWithinLimits()V

    goto/16 :goto_3

    .line 607
    .end local v2           #i:I
    .end local v4           #pointerId:I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 609
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->moveDisabled:Z

    .line 610
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->renderer:Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->gliderRotY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->prevTouchTime:J

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    div-long/2addr v13, v15

    invoke-virtual {v11, v12, v13, v14}, Lcom/scalado/hwcamera/panoramaviewer/OGLRenderer;->enableGliderEffect(FJ)V

    goto/16 :goto_3
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->mHandler:Landroid/os/Handler;

    .line 397
    return-void
.end method

.method public setWorld(Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;)V
    .locals 0
    .parameter "theWorld"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    .line 400
    invoke-direct {p0}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->setupRenderer()V

    .line 401
    return-void
.end method
