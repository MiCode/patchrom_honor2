.class public Lcom/android/hwcamera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# instance fields
.field private mAspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    .line 40
    return-void
.end method


# virtual methods
.method public calPreviewFrameMargin()V
    .locals 7

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    .local v1, screenHeight:I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 118
    .local v2, screenWidth:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameMarginRight(I)V

    .line 131
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    .line 124
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameMarginBottom(I)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameHeight()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameMarginBottom(I)V

    goto :goto_0
.end method

.method public getAspectRatio()D
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    return-wide v0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const-wide/high16 v11, 0x3fe0

    const/high16 v10, 0x4000

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, previewWidth:I
    const/4 v1, 0x0

    .line 60
    .local v1, previewHeight:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 73
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 76
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 77
    sub-int/2addr v1, v3

    .line 78
    int-to-double v4, v2

    int-to-double v6, v1

    iget-wide v8, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 79
    int-to-double v4, v1

    iget-wide v6, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v11

    double-to-int v2, v4

    .line 85
    :goto_1
    add-int/2addr v2, v0

    .line 86
    add-int/2addr v1, v3

    .line 89
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    invoke-static {v1}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameWidth(I)V

    .line 91
    invoke-static {v2}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameHeight(I)V

    .line 96
    :goto_2
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->calPreviewFrameMargin()V

    .line 101
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 111
    :goto_3
    return-void

    .line 66
    .end local v0           #hPadding:I
    .end local v3           #vPadding:I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 67
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_0

    .line 81
    .restart local v0       #hPadding:I
    .restart local v3       #vPadding:I
    :cond_1
    int-to-double v4, v2

    iget-wide v6, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    div-double/2addr v4, v6

    add-double/2addr v4, v11

    double-to-int v1, v4

    goto :goto_1

    .line 93
    :cond_2
    invoke-static {v1}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameHeight(I)V

    .line 94
    invoke-static {v2}, Lcom/android/hwcamera/hwui/MenuCommon;->setFrameWidth(I)V

    goto :goto_2

    .line 107
    :cond_3
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_3
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iget-wide v0, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 45
    iput-wide p1, p0, Lcom/android/hwcamera/PreviewFrameLayout;->mAspectRatio:D

    .line 46
    invoke-virtual {p0}, Lcom/android/hwcamera/PreviewFrameLayout;->requestLayout()V

    .line 48
    :cond_1
    return-void
.end method
