.class public abstract Lcom/scalado/app/rewind/RewindViewer;
.super Ljava/lang/Object;
.source "RewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;,
        Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

.field protected mCancelButtonState:Z

.field protected mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field protected mHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mRewind:Lcom/scalado/app/rewind/RewindSession;

.field protected mSurfaceView:Landroid/view/SurfaceView;

.field protected final mUiMgr:Lcom/scalado/app/ui/UiManager;


# direct methods
.method protected constructor <init>(Landroid/view/SurfaceView;)V
    .locals 2
    .parameter "surfaceView"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 21
    new-instance v0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;-><init>(Lcom/scalado/app/rewind/RewindViewer;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 22
    new-instance v0, Lcom/scalado/app/ui/UiManager;

    invoke-direct {v0}, Lcom/scalado/app/ui/UiManager;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mCancelButtonState:Z

    .line 39
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindViewer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 40
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 41
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindViewer;->mHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 42
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 43
    return-void
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 94
    return-void
.end method

.method public commit()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public abstract display()V
.end method

.method public getCancelState()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindViewer;->mCancelButtonState:Z

    return v0
.end method

.method public manualBackPressed()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method protected abstract onSurfaceChanged(II)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public abstract save(Ljava/lang/String;III)V
.end method

.method public selectBackground(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 72
    return-void
.end method

.method public setCallback(Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    .line 68
    return-void
.end method

.method public setConfig(Lcom/scalado/app/rewind/RewindViewerConfig;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    .line 64
    return-void
.end method

.method public abstract setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V
.end method

.method public showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V
    .locals 0
    .parameter "buffer"
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 101
    return-void
.end method

.method public startBenchmark()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
