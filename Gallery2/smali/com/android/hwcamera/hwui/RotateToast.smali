.class public Lcom/android/hwcamera/hwui/RotateToast;
.super Ljava/lang/Object;
.source "RotateToast.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mOrigenToast:Landroid/widget/Toast;

.field private mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mContext:Landroid/content/Context;

    .line 30
    const-string v1, " "

    invoke-static {p1, v1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    .line 31
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    .local v0, lay:Landroid/view/LayoutInflater;
    const v1, 0x7f040039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 33
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v2, 0x7f0c0054

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 38
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 41
    return-void
.end method

.method public static makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 43
    new-instance v0, Lcom/android/hwcamera/hwui/RotateToast;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 44
    .local v0, result:Lcom/android/hwcamera/hwui/RotateToast;
    iget-object v1, v0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 105
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    .line 114
    return-void
.end method

.method public setOrientationEx(II)V
    .locals 7
    .parameter "orientation"
    .parameter "controlbarhigh"

    .prologue
    const/16 v6, 0x10e

    const/16 v5, 0xb4

    const/16 v2, 0x5a

    const/16 v3, 0x11

    const/4 v4, 0x0

    .line 59
    move v0, p1

    .line 62
    .local v0, degree:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    if-eq p1, v6, :cond_0

    if-ne p1, v2, :cond_2

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    const/4 v2, 0x5

    mul-int/lit8 v3, p2, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 81
    :cond_1
    :goto_0
    div-int/lit8 v0, v0, 0x5a

    .line 82
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    .line 83
    return-void

    .line 65
    :cond_2
    if-nez p1, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v3, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 67
    :cond_3
    if-ne p1, v5, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    neg-int v2, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 71
    :cond_4
    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_6

    .line 72
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    const/16 v2, 0x50

    mul-int/lit8 v3, p2, 0x2

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 73
    :cond_6
    if-ne p1, v6, :cond_7

    .line 74
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    neg-int v2, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 75
    :cond_7
    if-ne p1, v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    mul-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateToast;->mOrigenToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method
