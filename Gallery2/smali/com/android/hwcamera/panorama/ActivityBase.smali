.class public abstract Lcom/android/hwcamera/panorama/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# static fields
.field private static LOGV:Z


# instance fields
.field protected mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mOnResumePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/panorama/ActivityBase;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 2

    .prologue
    .line 138
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/panorama/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 141
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract doOnResume()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/ActivityBase;->setVolumeControlStream(I)V

    .line 50
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/ActivityBase;->setRequestedOrientation(I)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/ActivityBase;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 104
    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/hwcamera/panorama/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mOnResumePending:Z

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-boolean v0, Lcom/android/hwcamera/panorama/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    const-string v1, "onRsume. mOnResumePending=true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mOnResumePending:Z

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_1
    sget-boolean v0, Lcom/android/hwcamera/panorama/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityBase"

    const-string v1, "onRsume. mOnResumePending=false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->doOnResume()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mOnResumePending:Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/hwcamera/panorama/ActivityBase;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged.hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mOnResumePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mOnResumePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mOnResumePending:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/ActivityBase;->doOnResume()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/ActivityBase;->mOnResumePending:Z

    .line 68
    :cond_1
    return-void
.end method
