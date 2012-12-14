.class public Lcom/android/hwcamera/hwui/Review;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsVideo:Z

.field private mOrientation:I

.field private mPlayButton:Landroid/widget/Button;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

.field private mReviewRootView:Landroid/view/ViewGroup;

.field private mSetasButton:Landroid/widget/Button;

.field private mShareButton:Landroid/widget/Button;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "rootView"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    .line 37
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/Review;->mIsVideo:Z

    .line 46
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    .line 48
    iput-object p3, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    .line 49
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Review;->initReview()V

    .line 50
    return-void
.end method

.method private initReviewPopup(Ljava/lang/String;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    new-instance v0, Lcom/android/hwcamera/hwui/ReviewPopup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/hwui/ReviewPopup;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ReviewPopup;->initReviewPopup(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    iget v1, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setOrientationEx(I)V

    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setUri(Landroid/net/Uri;)V

    .line 140
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ReviewPopup;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 141
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ReviewPopup;->getPopupWindow()Lcom/android/hwcamera/hwui/PopupWindowEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setOnDismissListener(Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;)V

    .line 142
    return-void
.end method


# virtual methods
.method public dismissReview()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ReviewPopup;->getPopupWindow()Lcom/android/hwcamera/hwui/PopupWindowEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->dismiss()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewPopup:Lcom/android/hwcamera/hwui/ReviewPopup;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Review;->hideReviewButtons()V

    .line 253
    return-void
.end method

.method public hideReviewButtons()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public initReview()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0c00a1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mShareButton:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mSetasButton:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mDeleteButton:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewRootView:Landroid/view/ViewGroup;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mPlayButton:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mShareButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mSetasButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0xe

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const-string v0, "android.intent.action.SEND"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/Review;->initReviewPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/Review;->initReviewPopup(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 112
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/Review;->mIsVideo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00a2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/hwcamera/hwui/Review;->mUri:Landroid/net/Uri;

    .line 73
    return-void
.end method

.method public showReviewButtons()V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/Review;->switchVisible()V

    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    return-void
.end method

.method public switchVisible()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    .line 197
    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 198
    .local v1, durat:I
    add-int/lit8 v1, v1, -0x32

    .line 200
    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 202
    const/4 v2, 0x0

    .local v2, fromX:F
    const/4 v3, 0x0

    .line 204
    .local v3, fromY:F
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_0

    move v2, v6

    .line 206
    :goto_0
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 212
    :goto_1
    const-string v7, "Review"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switchVisible visible fromX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fromY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v6, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 214
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 215
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    iget-object v6, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v6, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 218
    iget-object v6, p0, Lcom/android/hwcamera/hwui/Review;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    .end local v2           #fromX:F
    .end local v3           #fromY:F
    :goto_2
    return-void

    .line 205
    .end local v0           #anim:Landroid/view/animation/Animation;
    .restart local v2       #fromX:F
    .restart local v3       #fromY:F
    :cond_0
    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getWidth()I

    move-result v7

    int-to-float v2, v7

    goto :goto_0

    :cond_1
    move v3, v6

    .line 206
    goto :goto_1

    .line 208
    :cond_2
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_3

    move v2, v6

    .line 209
    :goto_3
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v7

    int-to-float v3, v7

    :goto_4
    goto :goto_1

    .line 208
    :cond_3
    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v2, v7

    goto :goto_3

    :cond_4
    move v3, v6

    .line 209
    goto :goto_4

    .line 221
    .end local v2           #fromX:F
    .end local v3           #fromY:F
    :cond_5
    const/4 v4, 0x0

    .local v4, toX:F
    const/4 v5, 0x0

    .line 223
    .local v5, toY:F
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 224
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_6

    move v4, v6

    .line 225
    :goto_5
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v7

    int-to-float v5, v7

    .line 231
    :goto_6
    const-string v7, "Review"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "switchVisible gone toX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " toY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v6, v4, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 233
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v6, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v6, v10}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 234
    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 235
    iget-object v6, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v6, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 224
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_6
    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v7

    int-to-float v4, v7

    goto :goto_5

    :cond_7
    move v5, v6

    .line 225
    goto :goto_6

    .line 227
    :cond_8
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_9

    move v4, v6

    .line 228
    :goto_7
    iget v7, p0, Lcom/android/hwcamera/hwui/Review;->mOrientation:I

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getHeight()I

    move-result v7

    int-to-float v5, v7

    :goto_8
    goto :goto_6

    .line 227
    :cond_9
    iget-object v7, p0, Lcom/android/hwcamera/hwui/Review;->mReviewLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v7}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v4, v7

    goto :goto_7

    :cond_a
    move v5, v6

    .line 228
    goto :goto_8
.end method
