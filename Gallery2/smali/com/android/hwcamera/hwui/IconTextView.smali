.class public Lcom/android/hwcamera/hwui/IconTextView;
.super Landroid/widget/LinearLayout;
.source "IconTextView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/IconText;)V
    .locals 9
    .parameter "context"
    .parameter "iconText"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, -0x2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/android/hwcamera/hwui/IconTextView;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/hwui/IconTextView;->setOrientation(I)V

    .line 27
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/IconTextView;->setGravity(I)V

    .line 28
    const/high16 v4, 0x40c0

    iget-object v5, p0, Lcom/android/hwcamera/hwui/IconTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 31
    .local v1, horizontalPix:F
    const/high16 v4, 0x4080

    iget-object v5, p0, Lcom/android/hwcamera/hwui/IconTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 34
    .local v3, verticalPix:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 35
    .local v0, horizontal:I
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 36
    .local v2, vertical:I
    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/android/hwcamera/hwui/IconTextView;->setPadding(IIII)V

    .line 38
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    .line 39
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/hwcamera/hwui/IconText;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    const v5, 0x7f020092

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 41
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 42
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/hwcamera/hwui/IconTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mText:Landroid/widget/TextView;

    .line 47
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/hwcamera/hwui/IconText;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v4, p0, Lcom/android/hwcamera/hwui/IconTextView;->mText:Landroid/widget/TextView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/hwcamera/hwui/IconTextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 2
    .parameter "isSelected"

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/IconTextView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
