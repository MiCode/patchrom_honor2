.class Lcom/android/hwcamera/panorama/PanoramaActivity$8;
.super Ljava/lang/Thread;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCapture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 753
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->generateFinalMosaic(Z)Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;

    move-result-object v1

    .line 755
    .local v1, jpeg:Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->isValid:Z

    if-eqz v2, :cond_0

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, v1, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    iget-object v3, v1, Lcom/android/hwcamera/panorama/PanoramaActivity$MosaicJpeg;->data:[B

    array-length v3, v3

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$8;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
