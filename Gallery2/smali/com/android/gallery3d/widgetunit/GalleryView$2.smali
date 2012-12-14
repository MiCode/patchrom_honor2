.class Lcom/android/gallery3d/widgetunit/GalleryView$2;
.super Landroid/os/Handler;
.source "GalleryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/widgetunit/GalleryView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/widgetunit/GalleryView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/widgetunit/GalleryView;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 356
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$900(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1300(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$400(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mMimetype:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$500(Lcom/android/gallery3d/widgetunit/GalleryView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mNoPhotos:Z
    invoke-static {v4}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$200(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mIsDrm:Z
    invoke-static {v5}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1400(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/widgetunit/GalleryView;->onBitmapChange(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$2;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #calls: Lcom/android/gallery3d/widgetunit/GalleryView;->destroy()V
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1500(Lcom/android/gallery3d/widgetunit/GalleryView;)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
