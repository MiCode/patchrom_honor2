.class public Lcom/android/hwcamera/AutoFocusListener;
.super Ljava/lang/Object;
.source "AutoFocusListener.java"

# interfaces
.implements Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;
    }
.end annotation


# instance fields
.field private mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

.field private mFocusManager:Lcom/android/hwcamera/FocusManager;

.field private mOnAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/CameraAutoFocusController;)V
    .locals 1
    .parameter "focusManager"
    .parameter "AFController"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mOnAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;

    .line 8
    iput-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 9
    iput-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 17
    iput-object p1, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 18
    iput-object p2, p0, Lcom/android/hwcamera/AutoFocusListener;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 19
    return-void
.end method


# virtual methods
.method public onAutoFocus()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->setFocusStateCAFFace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mOnAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;

    invoke-interface {v0}, Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;->isNeedFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->canDoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "AutoFocusListener"

    const-string v1, "G-Sensor onAutoFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->setAfFocuingState()V

    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/hwcamera/AutoFocusListener;->mOnAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;

    .line 27
    return-void
.end method

.method public unsetFocusManager()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/AutoFocusListener;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 23
    return-void
.end method
