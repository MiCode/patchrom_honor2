.class public Lcom/android/hwcamera/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Switcher$OnSwitchListener;
    }
.end annotation


# instance fields
.field private mAnimationStartPosition:I

.field private mAnimationStartTime:J

.field private mDownX:F

.field private mDownY:F

.field private mIsClick:Z

.field private mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mSwitch:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, -0x4080

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    .line 48
    iput v0, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    .line 58
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/hwcamera/Switcher;->mTouchSlop:I

    .line 60
    iput v2, p0, Lcom/android/hwcamera/Switcher;->mDownX:F

    .line 61
    iput v2, p0, Lcom/android/hwcamera/Switcher;->mDownY:F

    .line 66
    return-void
.end method

.method private handleMove(FFLandroid/view/MotionEvent;)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 310
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/Switcher;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 313
    iput-boolean v2, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/hwcamera/Switcher;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 317
    iput-boolean v2, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 208
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 209
    .local v0, available:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 213
    .local v2, drawableHeight:I
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v2

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 223
    .end local v2           #drawableHeight:I
    :goto_0
    iget v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-gez v4, :cond_0

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 224
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-le v4, v0, :cond_1

    iput v0, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->invalidate()V

    .line 226
    return-void

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 219
    .local v3, drawableWidth:I
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v3

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    goto :goto_0
.end method

.method private tryToSetSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Switcher;->mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/Switcher;->mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/hwcamera/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :cond_2
    iput-boolean p1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    goto :goto_0
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 295
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 232
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 233
    .local v5, drawableHeight:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 235
    .local v6, drawableWidth:I
    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/4 v1, 0x0

    .line 241
    .local v1, available:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v5

    .line 251
    :goto_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    const-wide/16 v14, -0x1

    cmp-long v12, v12, v14

    if-eqz v12, :cond_a

    .line 252
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .line 253
    .local v10, time:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    sub-long v12, v10, v12

    long-to-int v2, v12

    .line 254
    .local v2, deltaTime:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v13, :cond_6

    .end local v2           #deltaTime:I
    :goto_2
    mul-int/lit16 v13, v2, 0xc8

    div-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 256
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-gez v12, :cond_2

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    if-le v12, v1, :cond_3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    .line 258
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v13, :cond_7

    .end local v1           #available:I
    :goto_3
    if-ne v12, v1, :cond_8

    const/4 v3, 0x1

    .line 259
    .local v3, done:Z
    :goto_4
    if-nez v3, :cond_9

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->invalidate()V

    .line 276
    .end local v3           #done:Z
    .end local v10           #time:J
    :cond_4
    :goto_5
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    add-int v8, v12, v13

    .line 279
    .local v8, offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v7, v12, 0x2

    .line 286
    .local v7, offsetLeft:I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v9

    .line 287
    .local v9, saveCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    int-to-float v12, v7

    int-to-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 289
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 248
    .end local v7           #offsetLeft:I
    .end local v8           #offsetTop:I
    .end local v9           #saveCount:I
    .restart local v1       #available:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v1, v12, v6

    goto/16 :goto_1

    .line 254
    .restart local v2       #deltaTime:I
    .restart local v10       #time:J
    :cond_6
    neg-int v2, v2

    goto :goto_2

    .line 258
    .end local v2           #deltaTime:I
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .end local v1           #available:I
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 262
    .restart local v3       #done:Z
    :cond_9
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    goto :goto_5

    .line 264
    .end local v3           #done:Z
    .end local v10           #time:J
    .restart local v1       #available:I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->isPressed()Z

    move-result v12

    if-nez v12, :cond_4

    .line 266
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 268
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v12, :cond_b

    const/4 v1, 0x0

    .end local v1           #available:I
    :cond_b
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    goto :goto_5

    .line 271
    .restart local v1       #available:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-eqz v12, :cond_d

    .end local v1           #available:I
    :goto_7
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    goto :goto_5

    .restart local v1       #available:I
    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    .line 282
    .end local v1           #available:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v8, v12, 0x2

    .line 283
    .restart local v8       #offsetTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/hwcamera/Switcher;->mPosition:I

    add-int v7, v12, v13

    .restart local v7       #offsetLeft:I
    goto :goto_6
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 301
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/high16 v5, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return v3

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, available:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v0, v1, v4

    .line 108
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    move v3, v2

    .line 194
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v0, v1, v4

    goto :goto_1

    .line 110
    :pswitch_0
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/hwcamera/Switcher;->mAnimationStartTime:J

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Switcher;->setPressed(Z)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/Switcher;->mDownX:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/Switcher;->mDownY:F

    goto :goto_2

    .line 128
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    if-eqz v1, :cond_2

    .line 129
    iget v1, p0, Lcom/android/hwcamera/Switcher;->mDownX:F

    iget v3, p0, Lcom/android/hwcamera/Switcher;->mDownY:F

    invoke-direct {p0, v1, v3, p1}, Lcom/android/hwcamera/Switcher;->handleMove(FFLandroid/view/MotionEvent;)V

    goto :goto_2

    .line 131
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 138
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 143
    iget-boolean v1, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    if-eqz v1, :cond_4

    .line 144
    iget-boolean v1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    .line 173
    :goto_4
    iput-boolean v2, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    .line 174
    iput v5, p0, Lcom/android/hwcamera/Switcher;->mDownX:F

    .line 175
    iput v5, p0, Lcom/android/hwcamera/Switcher;->mDownY:F

    .line 178
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Switcher;->setPressed(Z)V

    goto :goto_2

    :cond_3
    move v1, v3

    .line 144
    goto :goto_3

    .line 150
    :cond_4
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    iget v1, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-ge v1, v4, :cond_5

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    .line 163
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/Switcher;->mPosition:I

    div-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_7

    move v1, v2

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    goto :goto_4

    :cond_7
    move v1, v3

    goto :goto_6

    .line 182
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Switcher;->tryToSetSwitch(Z)V

    .line 183
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Switcher;->setPressed(Z)V

    .line 187
    iput-boolean v2, p0, Lcom/android/hwcamera/Switcher;->mIsClick:Z

    .line 188
    iput v5, p0, Lcom/android/hwcamera/Switcher;->mDownX:F

    .line 189
    iput v5, p0, Lcom/android/hwcamera/Switcher;->mDownY:F

    goto/16 :goto_2

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/hwcamera/Switcher;->mListener:Lcom/android/hwcamera/Switcher$OnSwitchListener;

    .line 90
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iput-boolean p1, p0, Lcom/android/hwcamera/Switcher;->mSwitch:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/hwcamera/Switcher;->invalidate()V

    goto :goto_0
.end method
