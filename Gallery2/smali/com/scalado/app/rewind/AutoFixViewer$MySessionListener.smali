.class Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;
.super Ljava/lang/Object;
.source "AutoFixViewer.java"

# interfaces
.implements Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoFixViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/AutoFixViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoFixViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoFixViewer;Lcom/scalado/app/rewind/AutoFixViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;-><init>(Lcom/scalado/app/rewind/AutoFixViewer;)V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onAllImagesAdded()V

    .line 265
    :cond_0
    return-void
.end method

.method public onOutputted(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onSaved(Ljava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onRects(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, replacedRects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p2, notReplacedRects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$602(Lcom/scalado/app/rewind/AutoFixViewer;Ljava/util/List;)Ljava/util/List;

    .line 299
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/AutoFixViewer;->access$702(Lcom/scalado/app/rewind/AutoFixViewer;Ljava/util/List;)Ljava/util/List;

    .line 300
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoFixViewer;->access$800(Lcom/scalado/app/rewind/AutoFixViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #calls: Lcom/scalado/app/rewind/AutoFixViewer;->draw()V
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoFixViewer;->access$400(Lcom/scalado/app/rewind/AutoFixViewer;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onScreenRendered(Lcom/scalado/base/Image;)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$100(Lcom/scalado/app/rewind/AutoFixViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoFixViewer;->access$200(Lcom/scalado/app/rewind/AutoFixViewer;)Lcom/scalado/base/Size;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$102(Lcom/scalado/app/rewind/AutoFixViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 270
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoFixViewer;->access$100(Lcom/scalado/app/rewind/AutoFixViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 271
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    const/4 v1, 0x1

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$302(Lcom/scalado/app/rewind/AutoFixViewer;Z)Z

    .line 272
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #calls: Lcom/scalado/app/rewind/AutoFixViewer;->draw()V
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoFixViewer;->access$400(Lcom/scalado/app/rewind/AutoFixViewer;)V

    .line 273
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->saveButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoFixViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0, v4}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onFaceDetecionComplete(I)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I
    invoke-static {v0, v4}, Lcom/scalado/app/rewind/AutoFixViewer;->access$502(Lcom/scalado/app/rewind/AutoFixViewer;I)I

    .line 280
    return-void
.end method

.method public onSourceImage(Lcom/scalado/base/Image;)V
    .locals 4
    .parameter "screen"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    iget-object v1, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$100(Lcom/scalado/app/rewind/AutoFixViewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;
    invoke-static {v2}, Lcom/scalado/app/rewind/AutoFixViewer;->access$200(Lcom/scalado/app/rewind/AutoFixViewer;)Lcom/scalado/base/Size;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$102(Lcom/scalado/app/rewind/AutoFixViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 285
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #getter for: Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoFixViewer;->access$100(Lcom/scalado/app/rewind/AutoFixViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 286
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/AutoFixViewer;->access$302(Lcom/scalado/app/rewind/AutoFixViewer;Z)Z

    .line 287
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;->this$0:Lcom/scalado/app/rewind/AutoFixViewer;

    #calls: Lcom/scalado/app/rewind/AutoFixViewer;->draw()V
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoFixViewer;->access$400(Lcom/scalado/app/rewind/AutoFixViewer;)V

    .line 288
    return-void
.end method
