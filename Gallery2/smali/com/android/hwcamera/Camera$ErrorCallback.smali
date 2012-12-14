.class final Lcom/android/hwcamera/Camera$ErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2598
    iput-object p1, p0, Lcom/android/hwcamera/Camera$ErrorCallback;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2598
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$ErrorCallback;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 2601
    sparse-switch p1, :sswitch_data_0

    .line 2612
    :goto_0
    return-void

    .line 2603
    :sswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/hwcamera/Camera;->mMediaServerDied:Z

    .line 2604
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ErrorCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showCameraStoppedAndFinish()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$9400(Lcom/android/hwcamera/Camera;)V

    .line 2605
    const-string v0, "Camera"

    const-string v1, "media server died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2608
    :sswitch_1
    const-string v0, "Camera"

    const-string v1, "Camera Driver Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v0, p0, Lcom/android/hwcamera/Camera$ErrorCallback;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showCameraStoppedAndFinish()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$9400(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 2601
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
