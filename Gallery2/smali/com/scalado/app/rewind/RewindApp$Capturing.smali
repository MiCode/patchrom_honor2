.class Lcom/scalado/app/rewind/RewindApp$Capturing;
.super Lcom/scalado/app/rewind/RewindApp$ReceivingImages;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Capturing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$ReceivingImages;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$Capturing;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected end()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$2702(Lcom/scalado/app/rewind/RewindApp;Z)Z

    .line 1027
    return-void
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1030
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1200(Lcom/scalado/app/rewind/RewindApp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 1033
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->release()V

    .line 1034
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$700(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$1100(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 1040
    :goto_0
    const/4 v0, 0x1

    .line 1043
    :goto_1
    return v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    goto :goto_0

    .line 1043
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected start()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1013
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mIsRunning:Z
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RewindApp;->access$2602(Lcom/scalado/app/rewind/RewindApp;Z)Z

    .line 1014
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v2, 0x1

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mCapturing:Z
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RewindApp;->access$2702(Lcom/scalado/app/rewind/RewindApp;Z)Z

    .line 1015
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mSourcesLoaded:Z
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/RewindApp;->access$2302(Lcom/scalado/app/rewind/RewindApp;Z)Z

    .line 1016
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const-string v2, ""

    #calls: Lcom/scalado/app/rewind/RewindApp;->showLtw(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RewindApp;->access$2800(Lcom/scalado/app/rewind/RewindApp;Ljava/lang/String;)V

    .line 1017
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->getPostview()[B

    move-result-object v0

    .line 1018
    .local v0, postview:[B
    if-eqz v0, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$3200(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v1

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindApp;->access$2900(Lcom/scalado/app/rewind/RewindApp;)I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindApp;->access$3000(Lcom/scalado/app/rewind/RewindApp;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindApp;->access$3100(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/scalado/app/rewind/RewindViewer;->showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->takeBurst()V

    .line 1023
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$1100(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCameraInterface:Lcom/scalado/app/rewind/RewindApp$CameraInterface;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$1900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$CameraInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/app/rewind/RewindApp$CameraInterface;->getPostview()[B

    move-result-object v0

    .line 1049
    .local v0, postview:[B
    if-eqz v0, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$3200(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v1

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewWidth:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindApp;->access$2900(Lcom/scalado/app/rewind/RewindApp;)I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindApp;->access$3000(Lcom/scalado/app/rewind/RewindApp;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindApp$Capturing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindApp;->access$3100(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/scalado/app/rewind/RewindViewer;->showPostview([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 1054
    .end local v0           #postview:[B
    :cond_0
    return-void
.end method
