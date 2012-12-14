.class public Lcom/android/hwcamera/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Thumbnail$Media;,
        Lcom/android/hwcamera/Thumbnail$ThumbnailThread;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Thumbnail;->mFromFile:Z

    .line 65
    iput-object p1, p0, Lcom/android/hwcamera/Thumbnail;->mUri:Landroid/net/Uri;

    .line 66
    invoke-static {p2, p3}, Lcom/android/hwcamera/Thumbnail;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method private static createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;
    .locals 4
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    const-string v2, "Thumbnail"

    const-string v3, "Failed to create thumbnail from null bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-object v1

    .line 375
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/hwcamera/Thumbnail;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/hwcamera/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Thumbnail"

    const-string v3, "Failed to construct thumbnail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static createThumbnail([BIILandroid/net/Uri;)Lcom/android/hwcamera/Thumbnail;
    .locals 4
    .parameter "jpeg"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 320
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 321
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 322
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p3, v0, p1}, Lcom/android/hwcamera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "targetWidth"

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filePath"
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 338
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 339
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 343
    :goto_0
    const-wide/16 v7, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 350
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 355
    :goto_1
    if-nez v0, :cond_1

    const/4 v7, 0x0

    .line 366
    :goto_2
    return-object v7

    .line 341
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 344
    :catch_0
    move-exception v7

    .line 350
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 351
    :catch_1
    move-exception v7

    goto :goto_1

    .line 346
    :catch_2
    move-exception v7

    .line 350
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 351
    :catch_3
    move-exception v7

    goto :goto_1

    .line 349
    :catchall_0
    move-exception v7

    .line 350
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 353
    :goto_3
    throw v7

    .line 358
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 359
    .local v6, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 360
    .local v2, height:I
    if-le v6, p2, :cond_2

    .line 361
    int-to-float v7, p2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 362
    .local v4, scale:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 363
    .local v5, w:I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 364
    .local v1, h:I
    const/4 v7, 0x1

    invoke-static {v0, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #h:I
    .end local v4           #scale:F
    .end local v5           #w:I
    :cond_2
    move-object v7, v0

    .line 366
    goto :goto_2

    .line 351
    .end local v2           #height:I
    .end local v6           #width:I
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public static getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;
    .locals 16
    .parameter "resolver"

    .prologue
    .line 266
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 268
    .local v14, baseUri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 269
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "orientation"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 271
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 275
    .local v5, order:Ljava/lang/String;
    const/4 v15, 0x0

    .line 277
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 278
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 280
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/android/hwcamera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    if-eqz v15, :cond_0

    .line 285
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 288
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 284
    :cond_1
    if-eqz v15, :cond_2

    .line 285
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    if-eqz v15, :cond_3

    .line 285
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail;
    .locals 10
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 226
    invoke-static {p0}, Lcom/android/hwcamera/Thumbnail;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;

    move-result-object v1

    .line 227
    .local v1, image:Lcom/android/hwcamera/Thumbnail$Media;
    invoke-static {p0}, Lcom/android/hwcamera/Thumbnail;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;

    move-result-object v3

    .line 228
    .local v3, video:Lcom/android/hwcamera/Thumbnail$Media;
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-object v4

    .line 230
    :cond_1
    const/4 v0, 0x0

    .line 234
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    iget-wide v5, v1, Lcom/android/hwcamera/Thumbnail$Media;->dateTaken:J

    iget-wide v7, v3, Lcom/android/hwcamera/Thumbnail$Media;->dateTaken:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    .line 235
    :cond_2
    iget-object v5, v1, Lcom/android/hwcamera/Thumbnail$Media;->path:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    move-object v2, v1

    .line 243
    .local v2, lastMedia:Lcom/android/hwcamera/Thumbnail$Media;
    :goto_1
    iget-object v5, v2, Lcom/android/hwcamera/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v5, p0}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    iget-object v4, v2, Lcom/android/hwcamera/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v5, v2, Lcom/android/hwcamera/Thumbnail$Media;->orientation:I

    invoke-static {v4, v0, v5}, Lcom/android/hwcamera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/hwcamera/Thumbnail;

    move-result-object v4

    goto :goto_0

    .line 238
    .end local v2           #lastMedia:Lcom/android/hwcamera/Thumbnail$Media;
    :cond_3
    iget-object v5, v3, Lcom/android/hwcamera/Thumbnail$Media;->path:Ljava/lang/String;

    invoke-static {v5, v9}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    move-object v2, v3

    .restart local v2       #lastMedia:Lcom/android/hwcamera/Thumbnail$Media;
    goto :goto_1
.end method

.method private static getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail$Media;
    .locals 16
    .parameter "resolver"

    .prologue
    .line 292
    sget-object v14, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 294
    .local v14, baseUri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 295
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 297
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraBucketId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 300
    .local v5, order:Ljava/lang/String;
    const/4 v15, 0x0

    .line 302
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 303
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastVideoThumbnail: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v0, 0x0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 306
    .local v7, id:J
    new-instance v6, Lcom/android/hwcamera/Thumbnail$Media;

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v14, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const/4 v0, 0x3

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v6 .. v13}, Lcom/android/hwcamera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-eqz v15, :cond_0

    .line 311
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 314
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 310
    :cond_1
    if-eqz v15, :cond_2

    .line 311
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    if-eqz v15, :cond_3

    .line 311
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x3f00

    .line 87
    if-eqz p1, :cond_2

    .line 89
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 98
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_1

    .line 99
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    const/4 p0, 0x0

    .line 109
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v7

    .line 105
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 106
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_2
    move-object v7, p0

    .line 109
    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method
