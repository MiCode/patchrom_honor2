.class Lcom/android/hwcamera/Camera$ZoomChangeListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2670
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$ZoomChangeListener;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 2681
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    iget-boolean v0, v0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 2695
    :cond_0
    :goto_0
    return-void

    .line 2683
    :cond_1
    const-string v0, "Camera"

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

    .line 2684
    if-nez p1, :cond_2

    .line 2685
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$9900(Lcom/android/hwcamera/Camera;)I

    move-result v1

    #calls: Lcom/android/hwcamera/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$9800(Lcom/android/hwcamera/Camera;I)V

    goto :goto_0

    .line 2686
    :cond_2
    if-ne p1, v3, :cond_3

    .line 2687
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/android/hwcamera/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$9800(Lcom/android/hwcamera/Camera;I)V

    goto :goto_0

    .line 2689
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, -0x1

    #setter for: Lcom/android/hwcamera/Camera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$9702(Lcom/android/hwcamera/Camera;I)I

    .line 2690
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$9600(Lcom/android/hwcamera/Camera;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v1, 0x2

    #setter for: Lcom/android/hwcamera/Camera;->mZoomState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$9602(Lcom/android/hwcamera/Camera;I)I

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ZoomChangeListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->onZoomValueChanged(I)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$9800(Lcom/android/hwcamera/Camera;I)V

    .line 2676
    return-void
.end method
