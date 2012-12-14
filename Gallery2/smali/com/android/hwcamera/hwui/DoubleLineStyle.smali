.class public Lcom/android/hwcamera/hwui/DoubleLineStyle;
.super Landroid/widget/LinearLayout;
.source "DoubleLineStyle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextSummary:Landroid/widget/TextView;

.field private mTextTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->initStyle()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->initStyle()V

    .line 27
    return-void
.end method

.method private initStyle()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x2

    .line 36
    invoke-virtual {p0, v9}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOrientation(I)V

    .line 37
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setGravity(I)V

    .line 38
    const v5, 0x7f02012f

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setBackgroundResource(I)V

    .line 39
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 43
    .local v4, resources:Landroid/content/res/Resources;
    const/high16 v5, 0x4270

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v9, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 44
    .local v1, fMinHeightPx:F
    const/high16 v5, 0x4140

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v9, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 45
    .local v0, fLeftArginPx:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 46
    .local v3, iMinHeightPx:I
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 47
    .local v2, iLeftArginPx:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setMinimumHeight(I)V

    .line 49
    invoke-virtual {p0, v2, v7, v7, v7}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setPadding(IIII)V

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fa"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    :cond_0
    const/16 v5, 0x15

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setGravity(I)V

    .line 56
    :goto_0
    invoke-virtual {p0, v2, v7, v2, v7}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setPadding(IIII)V

    .line 58
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    .line 60
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    const v7, 0x1030044

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 61
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextSummary:Landroid/widget/TextView;

    .line 67
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextSummary:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    const v7, 0x1030046

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextSummary:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x106

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextSummary:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    iget-object v5, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextSummary:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void

    .line 54
    :cond_1
    const/16 v5, 0x13

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setGravity(I)V

    goto :goto_0
.end method


# virtual methods
.method public setEnableEx(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public setTextTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/DoubleLineStyle;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
