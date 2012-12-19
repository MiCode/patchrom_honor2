.class abstract Lcom/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field public mDrmBitmap:Z

.field public mDrmRightValid:Z

.field private mPath:Lcom/android/gallery3d/data/Path;

.field private mTargetSize:I

.field private mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V
    .locals 1
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "targetSize"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDrmBitmap:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDrmRightValid:Z

    .line 41
    iput-object p1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 42
    iput-object p2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    .line 43
    iput p3, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    .line 44
    iput p4, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    .line 45
    return-void
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "jc"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v3, :cond_0

    const-string v0, "THUMB"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, debugTag:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getImageCacheService()Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v9

    .line 54
    .local v9, cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDrmBitmap:Z

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDrmRightValid:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v3, :cond_2

    move-object v7, v1

    .line 108
    :goto_1
    return-object v7

    .line 49
    .end local v9           #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .end local v10           #debugTag:Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v4, :cond_1

    const-string v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string v0, "?"

    goto :goto_0

    .line 60
    .restart local v9       #cacheService:Lcom/android/gallery3d/data/ImageCacheService;
    .restart local v10       #debugTag:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BytesBufferPool;->get()Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v8

    .line 62
    .local v8, buffer:Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    iget v2, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {v9, v0, v2, v8}, Lcom/android/gallery3d/data/ImageCacheService;->getImageData(Lcom/android/gallery3d/data/Path;ILcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v11

    .line 63
    .local v11, found:Z
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    move-object v7, v1

    goto :goto_1

    .line 65
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDrmBitmap:Z

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mDrmRightValid:Z

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v3, :cond_4

    .line 67
    const/4 v11, 0x0

    .line 70
    :cond_4
    if-eqz v11, :cond_7

    .line 71
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 74
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v4, :cond_6

    .line 75
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v2, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v3, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v4, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/BitmapPool;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 81
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-nez v7, :cond_5

    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    const-string v0, "ImageCacheRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode cached failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_5
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_1

    .line 78
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v2, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v3, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v4, v8, Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/data/BitmapPool;->decode(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 87
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    .line 89
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 90
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v7, v1

    goto/16 :goto_1

    .line 87
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #found:Z
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v0

    .line 92
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v11       #found:Z
    :cond_8
    if-nez v7, :cond_9

    .line 93
    const-string v0, "ImageCacheRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode orig failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v1

    .line 94
    goto/16 :goto_1

    .line 97
    :cond_9
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v4, :cond_a

    .line 98
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v7, v0, v3}, Lcom/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 102
    :goto_3
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v7, v1

    goto/16 :goto_1

    .line 100
    :cond_a
    iget v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    invoke-static {v7, v0, v3}, Lcom/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 104
    :cond_b
    invoke-static {v7}, Lcom/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 105
    .local v6, array:[B
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v7, v1

    goto/16 :goto_1

    .line 107
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/android/gallery3d/data/Path;

    iget v1, p0, Lcom/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual {v9, v0, v1, v6}, Lcom/android/gallery3d/data/ImageCacheService;->putImageData(Lcom/android/gallery3d/data/Path;I[B)V

    goto/16 :goto_1
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
