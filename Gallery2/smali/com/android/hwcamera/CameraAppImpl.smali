.class public Lcom/android/hwcamera/CameraAppImpl;
.super Lcom/android/gallery3d/app/GalleryAppImpl;
.source "CameraAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;
    }
.end annotation


# instance fields
.field private mCameraActivity:Lcom/android/hwcamera/Camera;

.field private mFirstZoomHint:Z

.field private mOpenCameraHandler:Landroid/os/Handler;

.field private mOpenCameraThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraOpenThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraThread:Landroid/os/HandlerThread;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/CameraAppImpl;)Lcom/android/hwcamera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/hwcamera/CameraAppImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    return p1
.end method


# virtual methods
.method public getCameraActivity()Lcom/android/hwcamera/Camera;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;

    return-object v0
.end method

.method public getOpenCameraHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isCameraActivityInfoNull()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/gallery3d/app/GalleryAppImpl;->onCreate()V

    .line 42
    invoke-static {p0}, Lcom/android/hwcamera/Util;->initialize(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    .line 44
    iget-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getPackageInfo(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;

    iget-object v1, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/CameraAppImpl$OpenCameraHandler;-><init>(Lcom/android/hwcamera/CameraAppImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraAppImpl;->mOpenCameraHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public resetMakeZoomHint(Z)V
    .locals 0
    .parameter "bMake"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mFirstZoomHint:Z

    .line 73
    return-void
.end method

.method public setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/CameraAppImpl;->mCameraActivity:Lcom/android/hwcamera/Camera;

    .line 55
    return-void
.end method
