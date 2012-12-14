.class Lcom/android/hwcamera/VideoCamera$12;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton(Z)V
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
    .line 4818
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 4822
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4823
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/hwcamera/Thumbnail;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->access$2802(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 4824
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4825
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$3600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    #setter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$2802(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 4828
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4830
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$2800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4834
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoCamera;->access$3602(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 4837
    :cond_2
    return-void

    .line 4832
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$12;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
