.class final Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "moving"
    .parameter "camera"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/FocusManager;->onAutoFocusMoving(Z)V

    .line 612
    :cond_0
    return-void
.end method
