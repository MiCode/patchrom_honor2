.class final Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 5880
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5880
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 5883
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-boolean v1, v1, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v1, :cond_0

    .line 5891
    :goto_0
    return-void

    .line 5887
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5888
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5889
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5890
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
