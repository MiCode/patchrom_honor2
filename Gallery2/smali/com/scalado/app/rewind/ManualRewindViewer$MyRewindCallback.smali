.class Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/scalado/app/rewind/RewindSession$RewindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public onBackgroundReady(ILcom/scalado/base/Image;)V
    .locals 1
    .parameter "index"
    .parameter "background"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->drawSrcMgrBg(I)V
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$4100(Lcom/scalado/app/rewind/ManualRewindViewer;I)V

    goto :goto_0
.end method

.method public onEntryReady(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3500(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->startAsyncDetectFaces()V
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3600(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    .line 1345
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mAsyncTracker:Lcom/scalado/app/rewind/AsyncTracker;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/AsyncTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/AsyncTracker;->addImage(I)V

    .line 1346
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3508(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    .line 1347
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mEntriesReady:I
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3500(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mNumImages:I
    invoke-static {v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3800(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onAllImagesAdded()V

    goto :goto_0
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onSaved(Ljava/lang/String;)V

    .line 1409
    :cond_0
    return-void
.end method

.method public onScreen(Landroid/graphics/Bitmap;Lcom/scalado/caps/screen/Screen;I)V
    .locals 7
    .parameter "bitmap"
    .parameter "screen"
    .parameter "user"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1355
    if-eqz p1, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/scalado/app/rewind/BitmapManager;->release(Landroid/graphics/Bitmap;)V

    .line 1358
    :cond_0
    if-ne p3, v6, :cond_3

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-eqz v2, :cond_3

    .line 1359
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    new-instance v3, Lcom/scalado/app/rewind/ScreenAnimation;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v4, v4, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getCoordTransform()Lcom/scalado/app/rewind/CoordTransform;

    move-result-object v4

    invoke-direct {v3, p2, v4, v6}, Lcom/scalado/app/rewind/ScreenAnimation;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/app/rewind/CoordTransform;I)V

    #setter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1002(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ScreenAnimation;)Lcom/scalado/app/rewind/ScreenAnimation;

    .line 1361
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3900(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->ZOOM_TIME:J
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$4000(Lcom/scalado/app/rewind/ManualRewindViewer;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;->zoomIn(Landroid/graphics/Rect;J)V

    .line 1368
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v2, :cond_4

    .line 1390
    :cond_2
    :goto_1
    return-void

    .line 1362
    :cond_3
    if-ne p3, v5, :cond_1

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-eqz v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    new-instance v3, Lcom/scalado/app/rewind/ScreenAnimation;

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v4, v4, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v4}, Lcom/scalado/app/rewind/RewindSession;->getCoordTransform()Lcom/scalado/app/rewind/CoordTransform;

    move-result-object v4

    invoke-direct {v3, p2, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;-><init>(Lcom/scalado/caps/screen/Screen;Lcom/scalado/app/rewind/CoordTransform;I)V

    #setter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1002(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ScreenAnimation;)Lcom/scalado/app/rewind/ScreenAnimation;

    .line 1365
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mCurZoomRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3900(Lcom/scalado/app/rewind/ManualRewindViewer;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->ZOOM_TIME:J
    invoke-static {v4}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$4000(Lcom/scalado/app/rewind/ManualRewindViewer;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/scalado/app/rewind/ScreenAnimation;->zoomOut(Landroid/graphics/Rect;J)V

    goto :goto_0

    .line 1372
    :cond_4
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 1373
    .local v1, dims:Lcom/scalado/base/Size;
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4, v5}, Lcom/scalado/app/rewind/BitmapManager;->createBitmaps(IILandroid/graphics/Bitmap$Config;)V

    .line 1375
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1376
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1379
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scalado/app/rewind/BitmapManager;->displayAndLock(Landroid/graphics/Bitmap;)V

    .line 1380
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1381
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mZoomer:Lcom/scalado/app/rewind/ScreenAnimation;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1000(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/ScreenAnimation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scalado/app/rewind/ScreenAnimation;->render(Landroid/graphics/Bitmap;)V

    .line 1382
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1100(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Background;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/scalado/app/ui/Background;->setMoving(Z)V

    .line 1387
    :goto_2
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/app/rewind/BitmapManager;->unlockDisplayed()V

    .line 1388
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBgLayer:Lcom/scalado/app/ui/Background;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1100(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Background;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/app/ui/Background;->show()V

    .line 1389
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v2, v2, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v2}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    goto/16 :goto_1

    .line 1384
    :cond_5
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 1385
    invoke-virtual {p2}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_2
.end method

.method public onScreenChanged(Lcom/scalado/caps/screen/Screen;)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 1335
    return-void
.end method

.method public onUpdateComplete(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 1312
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    if-eqz v0, :cond_0

    .line 1313
    const-string v0, "ManualRewindViewer"

    const-string v2, "onUpdateComplete"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mCallback:Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;

    invoke-interface {v0}, Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;->onNewFaceUpdated()V

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #setter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBlockedUntilUpdated:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3002(Lcom/scalado/app/rewind/ManualRewindViewer;Z)Z

    .line 1317
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    if-nez v0, :cond_1

    .line 1327
    :goto_0
    return-void

    .line 1320
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3100(Lcom/scalado/app/rewind/ManualRewindViewer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1322
    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mStartIndex:I
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3200(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v3

    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mIsAnimationStarted:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3300(Lcom/scalado/app/rewind/ManualRewindViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->setFaceRects(IZ)V
    invoke-static {v2, v3, v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3400(Lcom/scalado/app/rewind/ManualRewindViewer;IZ)V

    .line 1323
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #setter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$3102(Lcom/scalado/app/rewind/ManualRewindViewer;Z)Z

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mBmps:Lcom/scalado/app/rewind/BitmapManager;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$900(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/rewind/BitmapManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scalado/app/rewind/BitmapManager;->display(Landroid/graphics/Bitmap;)V

    .line 1326
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1322
    goto :goto_1
.end method

.method public onUpdateMagnifiedComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mWheel:Lcom/scalado/app/ui/Wheel;
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$1700(Lcom/scalado/app/rewind/ManualRewindViewer;)Lcom/scalado/app/ui/Wheel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scalado/app/ui/Wheel;->setImage(Landroid/graphics/Bitmap;)V

    .line 1331
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRewindCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->requestDraw()V

    .line 1332
    return-void
.end method
