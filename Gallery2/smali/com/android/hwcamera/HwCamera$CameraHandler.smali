.class Lcom/android/hwcamera/HwCamera$CameraHandler;
.super Landroid/os/Handler;
.source "HwCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/HwCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/HwCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/HwCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/hwcamera/HwCamera$CameraHandler;->this$0:Lcom/android/hwcamera/HwCamera;

    .line 522
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 523
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 527
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 530
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/HwCamera$CameraHandler;->this$0:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/HwCamera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 536
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/HwCamera$CameraHandler;->this$0:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->startPreview()V

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
