.class public interface abstract Lcom/android/hwcamera/HWExtCameraHandler$Listener;
.super Ljava/lang/Object;
.source "HWExtCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/HWExtCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract canDoFocus()Z
.end method

.method public abstract displayFace([Lcom/android/hwcamera/hwui/FaceInfo;)V
.end method

.method public abstract doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V
.end method

.method public abstract hideFace()V
.end method

.method public abstract panoramaDirection(Landroid/os/Message;)V
.end method

.method public abstract panoramaTracker(Landroid/os/Message;)V
.end method

.method public abstract panormaIntermediateCaptureStart()V
.end method

.method public abstract showProgress()V
.end method

.method public abstract smileCapture(I)V
.end method
