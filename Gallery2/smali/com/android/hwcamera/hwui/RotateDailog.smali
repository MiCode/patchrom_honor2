.class public Lcom/android/hwcamera/hwui/RotateDailog;
.super Ljava/lang/Object;
.source "RotateDailog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;
    }
.end annotation


# instance fields
.field iHeightPX_H:I

.field iWidthPx:I

.field private mCancelButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;

.field private mOKButton:Landroid/widget/TextView;

.field private mParentView:Landroid/view/View;

.field private mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

.field private mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunnableCancel:Ljava/lang/Runnable;

.field private mSummary:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mpopupLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "Context"
    .parameter "title"
    .parameter "summary"
    .parameter "runable"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    .line 30
    iput v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    .line 31
    iput v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iHeightPX_H:I

    .line 37
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitle:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mSummary:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRunnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "Context"
    .parameter "title"
    .parameter "summary"
    .parameter "runableok"
    .parameter "runablecance"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    .line 30
    iput v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    .line 31
    iput v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iHeightPX_H:I

    .line 43
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitle:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mSummary:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p5, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRunnableCancel:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method private initdialogview()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 70
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, lay:Landroid/view/LayoutInflater;
    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mpopupLayout:Landroid/view/ViewGroup;

    .line 72
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mpopupLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 73
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v2, 0x7f0c00b4

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitleView:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mpopupLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0c00b5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v2, 0x7f0c00b6

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mSummaryView:Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mSummaryView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mpopupLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0c00b8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mOKButton:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mpopupLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mCancelButton:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mOKButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public createPopupWindowEx()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 54
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x43888000

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 56
    .local v0, fwidthPx:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    .line 57
    iget v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    iput v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iHeightPX_H:I

    .line 58
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/RotateDailog;->initdialogview()V

    .line 59
    new-instance v2, Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mpopupLayout:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    const/4 v5, -0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/hwcamera/hwui/PopupWindowEx;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    .line 61
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOutsideTouchable(Z)V

    .line 63
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setFocusable(Z)V

    .line 64
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mParentView:Landroid/view/View;

    const/16 v4, 0x11

    invoke-virtual {v2, v3, v4, v7, v7}, Lcom/android/hwcamera/hwui/PopupWindowEx;->showAtLocation(Landroid/view/View;III)V

    .line 65
    iget-object v2, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v2, p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOnDismissListener(Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;)V

    .line 66
    return-void
.end method

.method public dismissPoupWindowEx()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->dismiss()V

    .line 122
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 127
    .local v0, viewId:I
    const v1, 0x7f0c00b8

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRunnableCancel:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const v1, 0x7f0c00b7

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRunnableCancel:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 134
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "gpsstate"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mListener:Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mListener:Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;->cancelGpsStateByDailogDismiss()V

    .line 142
    :cond_0
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 94
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 96
    :sswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iHeightPX_H:I

    invoke-virtual {v0, v2, v2, v3, v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 100
    :sswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iWidthPx:I

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 104
    :sswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mPopupWindowEx:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget v1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->iHeightPX_H:I

    invoke-virtual {v0, v2, v2, v3, v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIII)V

    .line 105
    iget-object v0, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mRotateLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mParentView:Landroid/view/View;

    .line 51
    return-void
.end method

.method public setRotateDailogListener(Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/hwcamera/hwui/RotateDailog;->mListener:Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;

    .line 116
    return-void
.end method
