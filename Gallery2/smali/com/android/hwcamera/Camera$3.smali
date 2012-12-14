.class Lcom/android/hwcamera/Camera$3;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera;->updateThumbnailButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 1349
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$5300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/hwcamera/Thumbnail;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1, v0}, Lcom/android/hwcamera/Camera;->access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1351
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$5100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$5300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$5100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$5100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1359
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$5302(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1362
    :cond_2
    return-void

    .line 1357
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$3;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
