.class Lcom/android/hwcamera/ActivityBase$MyAppBridge;
.super Lcom/android/gallery3d/app/AppBridge;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAppBridge"
.end annotation


# instance fields
.field private mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field private mServer:Lcom/android/gallery3d/app/AppBridge$Server;

.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Lcom/android/gallery3d/app/AppBridge;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithOutCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/ActivityBase$MyAppBridge;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->switchWithCaptureAnimation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setSwipingEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/ActivityBase$MyAppBridge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->notifyScreenNailChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->changeMediaSetPath(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/ActivityBase$MyAppBridge;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private changeMediaSetPath(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "path"
    .parameter "data"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/app/AppBridge$Server;->changeMediaSetPath(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 350
    :cond_0
    return-void
.end method

.method private notifyScreenNailChanged()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0}, Lcom/android/gallery3d/app/AppBridge$Server;->notifyScreenNailChanged()V

    .line 336
    :cond_0
    return-void
.end method

.method private setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 322
    :cond_0
    return-void
.end method

.method private setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->setSwipingEnabled(Z)V

    .line 332
    :cond_0
    return-void
.end method

.method private switchWithCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->switchWithCaptureAnimation(I)Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchWithOutCaptureAnimation(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/app/AppBridge$Server;->switchWithOutCaptureAnimation(I)Z

    move-result v0

    .line 342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$Listener;)V

    iput-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public detachScreenNail()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public isPanorama()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    #calls: Lcom/android/hwcamera/ActivityBase;->isPanoramaActivity()Z
    invoke-static {v0}, Lcom/android/hwcamera/ActivityBase;->access$300(Lcom/android/hwcamera/ActivityBase;)Z

    move-result v0

    return v0
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ActivityBase;->onFullScreenChanged(Z)V

    .line 298
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->onPreviewTextureCopied()V

    .line 308
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 303
    return-void
.end method

.method public setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$MyAppBridge;->mServer:Lcom/android/gallery3d/app/AppBridge$Server;

    .line 313
    return-void
.end method
