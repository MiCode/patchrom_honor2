.class Lcom/android/hwcamera/VideoCamera$11;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->getThumbnail()V
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
    .line 4769
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$11;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4772
    const/4 v1, 0x0

    .line 4773
    .local v1, priority:I
    monitor-enter p0

    .line 4774
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$11;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$9204(Lcom/android/hwcamera/VideoCamera;)I

    move-result v1

    .line 4775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4776
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$11;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$9300(Lcom/android/hwcamera/VideoCamera;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$11;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v4}, Lcom/android/hwcamera/VideoCamera;->access$9400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4777
    .local v2, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 4778
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4779
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4780
    const/16 v3, 0x8

    iput v3, v0, Landroid/os/Message;->what:I

    .line 4781
    new-instance v3, Lcom/android/hwcamera/Thumbnail;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera$11;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/hwcamera/VideoCamera;->access$4300(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/hwcamera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4782
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$11;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4784
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 4775
    .end local v2           #videoFrame:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
