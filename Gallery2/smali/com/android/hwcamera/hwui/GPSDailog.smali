.class public Lcom/android/hwcamera/hwui/GPSDailog;
.super Ljava/lang/Object;
.source "GPSDailog.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mGpsAnimation:Landroid/view/animation/AlphaAnimation;

.field private mKey:Ljava/lang/String;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "preference"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "GPSDailog"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    .line 31
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/GPSDailog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/GPSDailog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method


# virtual methods
.method public cancelGpsStateByDailogDismiss()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setGPSstatus(Z)V

    .line 127
    return-void
.end method

.method public creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .parameter "rootView"
    .parameter "runnableOk"
    .parameter "cameraSettingKey"

    .prologue
    .line 87
    new-instance v5, Lcom/android/hwcamera/hwui/GPSDailog$3;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/hwui/GPSDailog$3;-><init>(Lcom/android/hwcamera/hwui/GPSDailog;)V

    .line 93
    .local v5, runnableCancel:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/hwcamera/hwui/RotateDailog;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0247

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    new-instance v1, Lcom/android/hwcamera/hwui/GPSDailog$4;

    invoke-direct {v1, p0, p3}, Lcom/android/hwcamera/hwui/GPSDailog$4;-><init>(Lcom/android/hwcamera/hwui/GPSDailog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setRotateDailogListener(Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;)V

    .line 112
    return-void
.end method

.method public creatGpsDialogBox(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "rootView"

    .prologue
    .line 52
    new-instance v4, Lcom/android/hwcamera/hwui/GPSDailog$1;

    invoke-direct {v4, p0}, Lcom/android/hwcamera/hwui/GPSDailog$1;-><init>(Lcom/android/hwcamera/hwui/GPSDailog;)V

    .line 64
    .local v4, runnableOk:Ljava/lang/Runnable;
    new-instance v5, Lcom/android/hwcamera/hwui/GPSDailog$2;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/hwui/GPSDailog$2;-><init>(Lcom/android/hwcamera/hwui/GPSDailog;)V

    .line 72
    .local v5, runableCancel:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/hwcamera/hwui/RotateDailog;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e01fe

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/RotateDailog;->setRotateDailogListener(Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;)V

    .line 80
    return-void
.end method

.method public dismissDialogBox()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 122
    :cond_0
    return-void
.end method

.method public getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mDialogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    return-object v0
.end method

.method public hideGpsAnimation()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 140
    :cond_0
    return-void
.end method

.method public initGpsAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 130
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    .line 131
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 132
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 133
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 134
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mKey:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V
    .locals 0
    .parameter "superPanel"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 42
    return-void
.end method

.method public showGpsAnimation()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 144
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mGpsAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 146
    :cond_0
    return-void
.end method

.method public unInitGPSDailog()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/GPSDailog;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 46
    return-void
.end method
