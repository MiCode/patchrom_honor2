.class public Lcom/scalado/hwcamera/rewind/Topbar;
.super Landroid/widget/RelativeLayout;
.source "Topbar.java"

# interfaces
.implements Lcom/scalado/app/rewind/ExtWidget;
.implements Lcom/scalado/hwcamera/rewind/Timeoutable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/rewind/Topbar$1;,
        Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;,
        Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;,
        Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;,
        Lcom/scalado/hwcamera/rewind/Topbar$TopbarListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFadeOutRequest:Z

.field private mHandler:Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

.field private mListener:Lcom/scalado/hwcamera/rewind/Topbar$TopbarListener;

.field private mState:I

.field private mTimeout:J

.field private mXy:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v4, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    .line 39
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mTimeout:J

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mXy:[I

    .line 46
    new-instance v1, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

    invoke-direct {v1, p0, v3}, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;-><init>(Lcom/scalado/hwcamera/rewind/Topbar;Lcom/scalado/hwcamera/rewind/Topbar$1;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mHandler:Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

    .line 51
    iput v4, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    .line 62
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f040014

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v1, 0x7f050015

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    .line 68
    const v1, 0x7f050016

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    .line 70
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;

    invoke-direct {v2, p0, v3}, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeInListener;-><init>(Lcom/scalado/hwcamera/rewind/Topbar;Lcom/scalado/hwcamera/rewind/Topbar$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 71
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;

    invoke-direct {v2, p0, v3}, Lcom/scalado/hwcamera/rewind/Topbar$MyFadeOutListener;-><init>(Lcom/scalado/hwcamera/rewind/Topbar;Lcom/scalado/hwcamera/rewind/Topbar$1;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    return-void
.end method

.method static synthetic access$302(Lcom/scalado/hwcamera/rewind/Topbar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/scalado/hwcamera/rewind/Topbar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    return v0
.end method

.method static synthetic access$402(Lcom/scalado/hwcamera/rewind/Topbar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    return p1
.end method

.method static synthetic access$500(Lcom/scalado/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->fadeOut()V

    return-void
.end method

.method private delayedFadeOut(J)V
    .locals 3
    .parameter "t"

    .prologue
    const/16 v2, 0xa

    .line 125
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mHandler:Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v2}, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;->removeMessages(I)V

    .line 126
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mHandler:Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v2}, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mHandler:Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 128
    return-void
.end method

.method private doFadeOut()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    .line 121
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/rewind/Topbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 122
    return-void
.end method

.method private fadeIn()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    .line 115
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/rewind/Topbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    iget-wide v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mTimeout:J

    invoke-direct {p0, v0, v1}, Lcom/scalado/hwcamera/rewind/Topbar;->delayedFadeOut(J)V

    .line 117
    return-void
.end method

.method private fadeOut()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->doFadeOut()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    if-ne v0, v1, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mFadeOutRequest:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingTimeout()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mHandler:Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;->removeMessages(I)V

    .line 101
    return-void
.end method

.method public getRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "dst"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mXy:[I

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/rewind/Topbar;->getLocationOnScreen([I)V

    .line 140
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mXy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 141
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mXy:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 142
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 143
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 144
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->fadeOut()V

    .line 136
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 147
    const-string v0, "Topbar"

    const-string v1, "PreviewBarLayout: onVisibilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-ne p1, p0, :cond_0

    .line 149
    sparse-switch p2, :sswitch_data_0

    .line 160
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 161
    return-void

    .line 156
    :sswitch_1
    invoke-direct {p0}, Lcom/scalado/hwcamera/rewind/Topbar;->fadeIn()V

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public scheduleTimeout()V
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mTimeout:J

    invoke-direct {p0, v0, v1}, Lcom/scalado/hwcamera/rewind/Topbar;->delayedFadeOut(J)V

    .line 97
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mActivity:Landroid/app/Activity;

    .line 81
    return-void
.end method

.method public setListener(Lcom/scalado/hwcamera/rewind/Topbar$TopbarListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/Topbar;->mListener:Lcom/scalado/hwcamera/rewind/Topbar$TopbarListener;

    .line 85
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/rewind/Topbar;->setVisibility(I)V

    .line 132
    return-void
.end method
