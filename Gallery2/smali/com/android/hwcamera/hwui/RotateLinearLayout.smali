.class public Lcom/android/hwcamera/hwui/RotateLinearLayout;
.super Landroid/view/ViewGroup;
.source "RotateLinearLayout.java"


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    .line 37
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x4000

    .line 49
    iget v3, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    if-nez v3, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 72
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 56
    .local v1, saveCount:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 57
    .local v2, width:F
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v3

    int-to-float v0, v3

    .line 59
    .local v0, height:F
    iget v3, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    packed-switch v3, :pswitch_data_0

    .line 70
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 61
    :pswitch_0
    const/high16 v3, 0x4334

    div-float v4, v2, v5

    div-float v5, v0, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 64
    :pswitch_1
    const/high16 v3, 0x4387

    div-float v4, v0, v5

    div-float v5, v0, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 67
    :pswitch_2
    const/high16 v3, 0x42b4

    div-float v4, v2, v5

    div-float v5, v2, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 77
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 78
    .local v4, y:F
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getWidth()I

    move-result v5

    int-to-float v2, v5

    .line 79
    .local v2, width:F
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 81
    .local v0, height:F
    iget v5, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 93
    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 94
    .local v1, result:Z
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 95
    return v1

    .line 83
    .end local v1           #result:Z
    :pswitch_0
    sub-float v5, v2, v3

    sub-float v6, v0, v4

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 86
    :pswitch_1
    sub-float v5, v0, v4

    invoke-virtual {p1, v5, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 89
    :pswitch_2
    sub-float v5, v2, v3

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 4
    .parameter "paramArrayOfInt"
    .parameter "paramRect"

    .prologue
    const/4 v3, 0x0

    .line 138
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getWidth()I

    move-result v1

    .line 144
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v0

    .line 145
    .local v0, height:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 146
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 147
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 148
    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 149
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 150
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 152
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v2

    return-object v2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    .line 45
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 101
    sub-int v1, p4, p2

    .line 102
    .local v1, width:I
    sub-int v0, p5, p3

    .line 104
    .local v0, height:I
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 118
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 119
    .local v0, h:I
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 133
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setMeasuredDimension(II)V

    .line 135
    return-void

    .line 122
    :pswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 123
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 125
    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 129
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setInOutAnimation(II)V
    .locals 2
    .parameter "animationIn"
    .parameter "animationOut"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    check-cast v0, Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    check-cast v0, Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 226
    :cond_0
    return-void
.end method

.method public setNewWithHeight(II)V
    .locals 3
    .parameter "with"
    .parameter "height"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mChild:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 164
    .local v1, rotateContent:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, contentLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 192
    iget v0, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/hwui/RotateLinearLayout;->mOrientation:I

    .line 197
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->requestLayout()V

    .line 198
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->invalidate()V

    goto :goto_0
.end method
