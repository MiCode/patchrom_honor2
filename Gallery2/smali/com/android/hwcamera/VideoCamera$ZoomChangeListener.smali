.class Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 1611
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-boolean v0, v0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomWithoutMDP:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6100(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom picker state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    if-nez p1, :cond_2

    .line 1622
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$6200(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    #calls: Lcom/android/hwcamera/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$6000(Lcom/android/hwcamera/VideoCamera;I)V

    goto :goto_0

    .line 1623
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1624
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$6000(Lcom/android/hwcamera/VideoCamera;I)V

    goto :goto_0

    .line 1626
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v1, -0x1

    #setter for: Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$6302(Lcom/android/hwcamera/VideoCamera;I)I

    .line 1627
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomState:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$6400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v1, 0x2

    #setter for: Lcom/android/hwcamera/VideoCamera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$6402(Lcom/android/hwcamera/VideoCamera;I)I

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/VideoCamera;->access$6000(Lcom/android/hwcamera/VideoCamera;I)V

    .line 1606
    return-void
.end method
