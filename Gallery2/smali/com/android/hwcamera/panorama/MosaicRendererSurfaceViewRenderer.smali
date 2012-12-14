.class public Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceViewRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;
    }
.end annotation


# instance fields
.field private mIsLandscapeOrientation:Z

.field private mSurfaceCreateListener:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "isLandscapeOrientation"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mIsLandscapeOrientation:Z

    .line 34
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 44
    invoke-static {}, Lcom/android/hwcamera/panorama/MosaicRenderer;->step()V

    .line 45
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mIsLandscapeOrientation:Z

    invoke-static {p2, p3, v0}, Lcom/android/hwcamera/panorama/MosaicRenderer;->reset(IIZ)V

    .line 50
    const-string v0, "MosaicRendererSurfaceViewRenderer"

    const-string v1, "Renderer: onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mSurfaceCreateListener:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mSurfaceCreateListener:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;

    invoke-interface {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;->onMosaicSurfaceChanged()V

    .line 54
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 58
    const-string v0, "MosaicRendererSurfaceViewRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mSurfaceCreateListener:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mSurfaceCreateListener:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;

    invoke-static {}, Lcom/android/hwcamera/panorama/MosaicRenderer;->init()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;->onMosaicSurfaceCreated(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public preprocess([F)V
    .locals 0
    .parameter "transformMatrix"

    .prologue
    .line 73
    invoke-static {p1}, Lcom/android/hwcamera/panorama/MosaicRenderer;->preprocess([F)V

    .line 74
    return-void
.end method

.method public setMosaicSurfaceCreateListener(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->mSurfaceCreateListener:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer$MosaicSurfaceCreateListener;

    .line 66
    return-void
.end method

.method public setReady()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/android/hwcamera/panorama/MosaicRenderer;->ready()V

    .line 70
    return-void
.end method

.method public setWarping(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/hwcamera/panorama/MosaicRenderer;->setWarping(Z)V

    .line 82
    return-void
.end method

.method public transferGPUtoCPU()V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/android/hwcamera/panorama/MosaicRenderer;->transferGPUtoCPU()V

    .line 78
    return-void
.end method
