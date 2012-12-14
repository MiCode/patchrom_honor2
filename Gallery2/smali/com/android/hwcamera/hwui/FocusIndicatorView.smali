.class public Lcom/android/hwcamera/hwui/FocusIndicatorView;
.super Landroid/widget/RelativeLayout;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/FocusIndicator;


# instance fields
.field private mButtomLeftItemView:Landroid/view/View;

.field private mButtomRightItemView:Landroid/view/View;

.field private mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

.field private mTopLeftItemView:Landroid/view/View;

.field private mTopRightItemView:Landroid/view/View;

.field private scaleX:F

.field private scaleY:F

.field private state:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    .line 144
    iput v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->x:F

    .line 145
    iput v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->y:F

    .line 146
    iput v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleX:F

    .line 147
    iput v3, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleY:F

    .line 55
    new-instance v1, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;-><init>(Lcom/android/hwcamera/hwui/FocusIndicatorView;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    .line 56
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->initChildView()V

    .line 57
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 58
    .local v0, dm:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->clear(Z)V

    .line 120
    return-void
.end method

.method public clear(Z)V
    .locals 2
    .parameter "isForce"

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->cancelAnimiton()V

    .line 130
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    if-nez v0, :cond_2

    .line 131
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    .line 133
    :cond_2
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->y:F

    return v0
.end method

.method public initChildView()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    .line 72
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 75
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->addView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->addView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 193
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 194
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 195
    return-void
.end method

.method public setDrawable(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public setLocation(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->setLocation(II)V

    .line 138
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "scaleX"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleX:F

    .line 180
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setX(F)V

    .line 181
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "scaleY"

    .prologue
    .line 185
    iput p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleY:F

    .line 186
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setY(F)V

    .line 187
    return-void
.end method

.method public setX(F)V
    .locals 5
    .parameter "x"

    .prologue
    const/high16 v4, 0x4282

    const/high16 v3, 0x4000

    .line 151
    iput p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->x:F

    .line 152
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleX:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 153
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleX:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 154
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleX:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 155
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleX:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 156
    return-void
.end method

.method public setY(F)V
    .locals 5
    .parameter "y"

    .prologue
    const/high16 v4, 0x4282

    const/high16 v3, 0x4000

    .line 160
    iput p1, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->y:F

    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleY:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mTopRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleY:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomLeftItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleY:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mButtomRightItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->scaleY:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 165
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->showFail()V

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    .line 115
    return-void
.end method

.method public showFocuing()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->showStart()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->showFocuing()V

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    .line 103
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->showStart()V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    .line 94
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->mFocusViewAnmition:Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorAnmition;->showSuccess()V

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/hwui/FocusIndicatorView;->state:I

    .line 109
    return-void
.end method
