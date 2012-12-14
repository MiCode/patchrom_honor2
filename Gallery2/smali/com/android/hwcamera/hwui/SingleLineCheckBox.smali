.class public Lcom/android/hwcamera/hwui/SingleLineCheckBox;
.super Landroid/widget/LinearLayout;
.source "SingleLineCheckBox.java"


# instance fields
.field private mCheckBox:Landroid/widget/ImageView;

.field private mCheckBoxState:Z

.field private mContext:Landroid/content/Context;

.field private mTextContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBoxState:Z

    .line 26
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->initStyle()V

    .line 28
    return-void
.end method

.method private initStyle()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setGravity(I)V

    .line 32
    const v0, 0x7f02012f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setBackgroundResource(I)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->layoutStyle(Z)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->layoutStyle(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCheckBoxState()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBoxState:Z

    return v0
.end method

.method public layoutStyle(Z)V
    .locals 12
    .parameter "leftStyle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 52
    .local v6, resources:Landroid/content/res/Resources;
    const/high16 v7, 0x4270

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v11, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 55
    .local v1, fMinHeightPx:F
    const/high16 v7, 0x4140

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v11, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 58
    .local v0, fLeftArginPx:F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 59
    .local v3, iMinHeightPx:I
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 60
    .local v2, iLeftArginPx:I
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setMinimumHeight(I)V

    .line 62
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    invoke-direct {v4, v10, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 64
    .local v4, lpTextContent:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v5, lpcheckBox:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {v4, v2, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    invoke-virtual {v5, v9, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v4}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {v4, v9, v9, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    invoke-virtual {v5, v2, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v7, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {p0, v7, v4}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCheckBoxState(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBoxState:Z

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setEnableEx(Z)V
    .locals 3
    .parameter "isEnable"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBoxState:Z

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    return-void

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBoxState:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->mTextContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method
