.class public Lcom/android/hwcamera/hwui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/RotateLayout;->setBackgroundResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    .line 47
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0
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

    .line 58
    sub-int v1, p4, p2

    .line 59
    .local v1, width:I
    sub-int v0, p5, p3

    .line 60
    .local v0, height:I
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 63
    :sswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 67
    :sswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 75
    .local v0, h:I
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 89
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/RotateLayout;->setMeasuredDimension(II)V

    .line 91
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    :goto_1
    return-void

    .line 78
    :sswitch_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/hwcamera/hwui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 79
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 81
    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/hwcamera/hwui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 85
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 95
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 113
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_1

    .line 97
    :sswitch_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 98
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 101
    :sswitch_3
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 102
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 105
    :sswitch_4
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 106
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 109
    :sswitch_5
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 110
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 95
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 118
    rem-int/lit16 p1, p1, 0x168

    .line 119
    iget v0, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iput p1, p0, Lcom/android/hwcamera/hwui/RotateLayout;->mOrientation:I

    .line 121
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateLayout;->requestLayout()V

    goto :goto_0
.end method
