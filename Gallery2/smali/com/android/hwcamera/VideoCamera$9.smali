.class Lcom/android/hwcamera/VideoCamera$9;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->doSwitchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 4023
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$9;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$9;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restartPreview()Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2000(Lcom/android/hwcamera/VideoCamera;)Z

    .line 4029
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$9;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->switchCameraUI()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2400(Lcom/android/hwcamera/VideoCamera;)V

    .line 4030
    return-void
.end method
