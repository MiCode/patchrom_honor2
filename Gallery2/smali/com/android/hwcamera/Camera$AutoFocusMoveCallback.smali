.class final Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusMoveCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "moving"
    .parameter "camera"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1100(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/FocusManager;->onAutoFocusMoving(Z)V

    .line 666
    :cond_0
    return-void
.end method
