.class public Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
.super Ljava/lang/Object;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceManagerEntry"
.end annotation


# instance fields
.field private mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

.field mBackgroundImageZoom:F

.field mCachedBackgroundImage:Lcom/scalado/base/Image;

.field mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

.field mCachedMagnifierImage:Lcom/scalado/base/Image;

.field mCachedMagnifierPosition:Landroid/graphics/Point;

.field mCachedMagnifierRect:Lcom/scalado/base/Rect;

.field mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

.field mCachedMagnifierZoom:F

.field mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

.field private mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

.field mIsCompleted:Z

.field mSession:Lcom/scalado/caps/Session;

.field mSourceBuffer:Lcom/scalado/base/Buffer;

.field mSourceDimensions:Lcom/scalado/base/Size;

.field mSourceStream:Lcom/scalado/stream/BufferStream;

.field final synthetic this$0:Lcom/scalado/app/rewind/SourceManager;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;)V
    .locals 3
    .parameter
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 564
    iput-object p1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput-boolean v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mIsCompleted:Z

    .line 565
    iput-object p2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    .line 566
    new-instance v0, Lcom/scalado/stream/BufferStream;

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    .line 568
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierPosition:Landroid/graphics/Point;

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierZoom:F

    .line 571
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    .line 572
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mAllowedMagnifierPositionsRect:Lcom/scalado/base/Rect;

    .line 573
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;Lcom/scalado/app/rewind/SourceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;-><init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/base/Buffer;)V

    return-void
.end method

.method private calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SourceManager$Configuration;)V
    .locals 3
    .parameter "sourceDimensions"
    .parameter "backGroundImageConfig"

    .prologue
    .line 686
    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v0, v1, :cond_0

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v0

    sget-object v1, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v0, v1, :cond_1

    .line 688
    :cond_0
    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    .line 700
    :goto_0
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backGroundImageConfig.mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceDimensions.getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backGroundImageConfig.mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBackgroundImageZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void

    .line 694
    :cond_1
    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {p2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    goto/16 :goto_0
.end method

.method private calculateDisplayedBackgroundImageRect()V
    .locals 9

    .prologue
    .line 716
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    .line 717
    .local v2, srcWidth:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    .line 719
    .local v1, srcHeight:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source dimensions: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v6

    sget-object v7, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v6

    sget-object v7, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    if-ne v6, v7, :cond_1

    .line 728
    :cond_0
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 729
    .local v3, w:I
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 736
    .local v0, h:I
    :goto_0
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v4, v6, 0x2

    .line 737
    .local v4, x:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    .line 739
    .local v5, y:I
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v3}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 740
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 741
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v4}, Lcom/scalado/base/Rect;->setX(I)V

    .line 742
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v6, v5}, Lcom/scalado/base/Rect;->setY(I)V

    .line 744
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisplayedBackground Image (x, y):("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getY()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") (w, h):("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 732
    .end local v0           #h:I
    .end local v3           #w:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_1
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v1

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 733
    .restart local v3       #w:I
    iget v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    int-to-float v7, v2

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .restart local v0       #h:I
    goto/16 :goto_0
.end method

.method private createSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-nez v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceStream:Lcom/scalado/stream/BufferStream;

    invoke-static {v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 587
    .local v0, iterator:Lcom/scalado/base/Iterator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    .line 589
    invoke-virtual {v0}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 592
    new-instance v1, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v3}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    .line 595
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decoder created for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v3, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v0           #iterator:Lcom/scalado/base/Iterator;
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Create session"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v1, Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-direct {v1, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    .line 602
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session created for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v3, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SourceManager$Configuration;)V

    .line 607
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateDisplayedBackgroundImageRect()V

    .line 609
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$602(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I

    .line 612
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDisplayedBackgroundImageRect:Lcom/scalado/base/Rect;

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$702(Lcom/scalado/app/rewind/SourceManager$Configuration;I)I

    .line 616
    :cond_1
    return-void
.end method

.method private magnifiedImageDirty()Z
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1012
    :cond_0
    const/4 v0, 0x1

    .line 1014
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderBackground()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 655
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    if-nez v1, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->createSession()V

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    if-nez v1, :cond_1

    .line 659
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "mBackgroundImageConfig was null when creating background"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Render background"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v1, Lcom/scalado/base/Image;

    new-instance v2, Lcom/scalado/base/Size;

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v3

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    .line 668
    new-instance v0, Lcom/scalado/caps/screen/Screen;

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 671
    .local v0, screen:Lcom/scalado/caps/screen/Screen;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceDimensions:Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v2}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->calculateBackgroundImageZoom(Lcom/scalado/base/Size;Lcom/scalado/app/rewind/SourceManager$Configuration;)V

    .line 673
    iget v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 674
    iget v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setZoom(F)V

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mBackgroundImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$800(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v1

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 678
    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 679
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background rendered for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v3, p0}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , zoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mBackgroundImageZoom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method

.method private renderMagnifiedImage(Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0, p1}, Lcom/scalado/caps/screen/Screen;->setZoomRect(Lcom/scalado/base/Rect;)V

    .line 651
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    invoke-virtual {v0}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 652
    return-void
.end method

.method private updateMagnifiedImage()V
    .locals 8

    .prologue
    .line 1019
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v3

    invoke-static {v3}, Lcom/scalado/app/rewind/PixelFormat;->getBitsPerPixel(Lcom/scalado/base/Image$Config;)I

    move-result v0

    .line 1021
    .local v0, bpp:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v3

    mul-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x8

    .line 1022
    .local v2, scanline:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v3

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v3}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v3

    mul-int v1, v2, v3

    .line 1024
    .local v1, necessarySize:I
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {v3}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v3

    if-ge v3, v1, :cond_1

    .line 1028
    :cond_0
    new-instance v3, Lcom/scalado/base/Buffer;

    int-to-float v4, v1

    const v5, 0x3f8ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/scalado/base/Buffer;-><init>(I)V

    iput-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    .line 1031
    :cond_1
    new-instance v3, Lcom/scalado/base/Image;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierBuffer:Lcom/scalado/base/Buffer;

    new-instance v5, Lcom/scalado/base/Size;

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mWidth:I
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$600(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v6

    iget-object v7, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v7

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mHeight:I
    invoke-static {v7}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$700(Lcom/scalado/app/rewind/SourceManager$Configuration;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v6

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mConfig:Lcom/scalado/base/Image$Config;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1100(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/base/Image$Config;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Buffer;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    .line 1036
    new-instance v3, Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSession:Lcom/scalado/caps/Session;

    iget-object v5, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    invoke-direct {v3, v4, v5}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    iput-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    .line 1041
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRotation:Lcom/scalado/caps/Rotation;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$1300(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/Rotation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setRotation(Lcom/scalado/caps/Rotation;)V

    .line 1042
    iget-object v3, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierScreen:Lcom/scalado/caps/screen/Screen;

    iget-object v4, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mMagnifiedImageConfig:Lcom/scalado/app/rewind/SourceManager$Configuration;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager;->access$900(Lcom/scalado/app/rewind/SourceManager;)Lcom/scalado/app/rewind/SourceManager$Configuration;

    move-result-object v4

    #getter for: Lcom/scalado/app/rewind/SourceManager$Configuration;->mRenderMode:Lcom/scalado/caps/screen/Screen$RenderMode;
    invoke-static {v4}, Lcom/scalado/app/rewind/SourceManager$Configuration;->access$400(Lcom/scalado/app/rewind/SourceManager$Configuration;)Lcom/scalado/caps/screen/Screen$RenderMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/scalado/caps/screen/Screen;->setRenderMode(Lcom/scalado/caps/screen/Screen$RenderMode;)V

    .line 1044
    return-void
.end method


# virtual methods
.method public getBackgroundImage()Lcom/scalado/base/Image;
    .locals 3

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    if-nez v1, :cond_0

    .line 1049
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->renderBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedBackgroundImage:Lcom/scalado/base/Image;

    return-object v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDecoder()Lcom/scalado/caps/Decoder;
    .locals 3

    .prologue
    .line 920
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    if-nez v1, :cond_0

    .line 922
    :try_start_0
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->createSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    return-object v1

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMagnifiedImage(Lcom/scalado/base/Rect;)Lcom/scalado/base/Image;
    .locals 6
    .parameter "rect"

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, render:Z
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->magnifiedImageDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    invoke-direct {p0}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->updateMagnifiedImage()V

    .line 994
    const/4 v0, 0x1

    .line 996
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    invoke-virtual {v1, p1}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 998
    :cond_1
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/scalado/base/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    .line 1000
    const/4 v0, 0x1

    .line 1002
    :cond_2
    if-eqz v0, :cond_3

    .line 1003
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierRect:Lcom/scalado/base/Rect;

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->renderMagnifiedImage(Lcom/scalado/base/Rect;)V

    .line 1005
    :cond_3
    iget-object v1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mCachedMagnifierImage:Lcom/scalado/base/Image;

    return-object v1
.end method

.method public getSourceBuffer()Lcom/scalado/base/Buffer;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mSourceBuffer:Lcom/scalado/base/Buffer;

    return-object v0
.end method
