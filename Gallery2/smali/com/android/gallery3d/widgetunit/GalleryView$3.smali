.class Lcom/android/gallery3d/widgetunit/GalleryView$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/gallery3d/widgetunit/GalleryView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$3;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v4, 0x2

    .line 371
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$3;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$3;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mOnchangeCount:J
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1600(Lcom/android/gallery3d/widgetunit/GalleryView;)J

    move-result-wide v0

    const-wide/16 v2, 0x32

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$3;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->sendEmptyMessage(I)Z

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$3;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1608(Lcom/android/gallery3d/widgetunit/GalleryView;)J

    .line 382
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryView$3;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    invoke-static {v0}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
