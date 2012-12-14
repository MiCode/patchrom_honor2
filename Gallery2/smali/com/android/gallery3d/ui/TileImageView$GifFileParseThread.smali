.class public Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;
.super Ljava/lang/Thread;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GifFileParseThread"
.end annotation


# instance fields
.field private final MIN_FRAME_INTERVAL:I

.field private final WAIT_TO_ANIMATE:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mGifBmp:Landroid/graphics/Bitmap;

.field private mGifFilePath:Ljava/lang/String;

.field private mGifMovie:Landroid/graphics/Movie;

.field private mGifParseStop:Z

.field private mIsLocalGif:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/TileImageView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/TileImageView;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "path"
    .parameter "isLocal"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 479
    iput-object p1, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 469
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifFilePath:Ljava/lang/String;

    .line 470
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifParseStop:Z

    .line 471
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mIsLocalGif:Z

    .line 472
    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mContext:Landroid/content/Context;

    .line 473
    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    .line 474
    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifBmp:Landroid/graphics/Bitmap;

    .line 475
    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mCanvas:Landroid/graphics/Canvas;

    .line 476
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->WAIT_TO_ANIMATE:I

    .line 477
    const/16 v0, 0x21

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->MIN_FRAME_INTERVAL:I

    .line 480
    iput-object p2, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifFilePath:Ljava/lang/String;

    .line 481
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifParseStop:Z

    .line 482
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mIsLocalGif:Z

    .line 483
    iput-object p4, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mContext:Landroid/content/Context;

    .line 484
    return-void
.end method

.method private streamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "is"

    .prologue
    const/16 v4, 0x400

    .line 487
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 488
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    new-array v0, v4, [B

    .line 491
    .local v0, buffer:[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-ltz v2, :cond_0

    .line 492
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    .end local v2           #len:I
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifFilePath:Ljava/lang/String;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 567
    :cond_0
    return-void

    .line 507
    :cond_1
    const-wide/16 v15, 0x1f4

    :try_start_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 511
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifParseStop:Z

    if-nez v15, :cond_0

    .line 514
    const/4 v5, 0x0

    .line 515
    .local v5, gifFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 517
    .local v7, is:Ljava/io/InputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mIsLocalGif:Z

    if-eqz v15, :cond_5

    .line 518
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifFilePath:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 519
    .end local v5           #gifFile:Ljava/io/File;
    .local v6, gifFile:Ljava/io/File;
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .end local v7           #is:Ljava/io/InputStream;
    .local v8, is:Ljava/io/InputStream;
    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    move-object v5, v6

    .line 523
    .end local v6           #gifFile:Ljava/io/File;
    .restart local v5       #gifFile:Ljava/io/File;
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 524
    .local v3, byteArray:[B
    const/4 v15, 0x0

    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v15, v0}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 528
    if-eqz v7, :cond_2

    .line 530
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 534
    :goto_2
    const/4 v7, 0x0

    .line 538
    .end local v3           #byteArray:[B
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    if-eqz v15, :cond_0

    .line 542
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    invoke-virtual {v15}, Landroid/graphics/Movie;->duration()I

    move-result v9

    .line 543
    .local v9, movieDur:I
    if-lez v9, :cond_0

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 548
    .local v12, movieStart:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v15}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v15

    instance-of v15, v15, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v15, :cond_0

    .line 552
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    #getter for: Lcom/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;
    invoke-static {v15}, Lcom/android/gallery3d/ui/TileImageView;->access$300(Lcom/android/gallery3d/ui/TileImageView;)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 559
    .local v2, bsn:Lcom/android/gallery3d/ui/BitmapScreenNail;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifParseStop:Z

    if-nez v15, :cond_0

    .line 569
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 570
    .local v10, movieNow:J
    sub-long v15, v10, v12

    int-to-long v0, v9

    move-wide/from16 v17, v0

    rem-long v15, v15, v17

    long-to-int v14, v15

    .line 574
    .local v14, movieTime:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    invoke-virtual {v15, v14}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v15

    if-eqz v15, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 577
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    invoke-virtual {v15}, Landroid/graphics/Movie;->width()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Movie;->height()I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifBmp:Landroid/graphics/Bitmap;

    .line 578
    new-instance v15, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifBmp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mCanvas:Landroid/graphics/Canvas;

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifMovie:Landroid/graphics/Movie;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 582
    if-eqz v2, :cond_7

    .line 583
    monitor-enter v2

    .line 584
    :try_start_5
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifBmp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 585
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->GifRecycle()V

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v15}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 588
    :cond_3
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 594
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->this$0:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v15}, Lcom/android/gallery3d/ui/TileImageView;->invalidate()V

    .line 598
    :cond_4
    const-wide/16 v15, 0x21

    :try_start_6
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 599
    :catch_0
    move-exception v15

    goto/16 :goto_4

    .line 521
    .end local v2           #bsn:Lcom/android/gallery3d/ui/BitmapScreenNail;
    .end local v9           #movieDur:I
    .end local v10           #movieNow:J
    .end local v12           #movieStart:J
    .end local v14           #movieTime:I
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v7

    goto/16 :goto_1

    .line 531
    .restart local v3       #byteArray:[B
    :catch_1
    move-exception v4

    .line 532
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 525
    .end local v3           #byteArray:[B
    .end local v4           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 526
    .restart local v4       #e:Ljava/lang/Exception;
    :goto_6
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 528
    if-eqz v7, :cond_2

    .line 530
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 534
    :goto_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 531
    :catch_3
    move-exception v4

    .line 532
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 528
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_8
    if-eqz v7, :cond_6

    .line 530
    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 534
    :goto_9
    const/4 v7, 0x0

    :cond_6
    throw v15

    .line 531
    :catch_4
    move-exception v4

    .line 532
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 588
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #bsn:Lcom/android/gallery3d/ui/BitmapScreenNail;
    .restart local v9       #movieDur:I
    .restart local v10       #movieNow:J
    .restart local v12       #movieStart:J
    .restart local v14       #movieTime:I
    :catchall_1
    move-exception v15

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v15

    .line 591
    :cond_7
    const-string v15, "TileImageView"

    const-string v16, "test bsn is null"

    invoke-static/range {v15 .. v16}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 508
    .end local v2           #bsn:Lcom/android/gallery3d/ui/BitmapScreenNail;
    .end local v5           #gifFile:Ljava/io/File;
    .end local v7           #is:Ljava/io/InputStream;
    .end local v9           #movieDur:I
    .end local v10           #movieNow:J
    .end local v12           #movieStart:J
    .end local v14           #movieTime:I
    :catch_5
    move-exception v15

    goto/16 :goto_0

    .line 528
    .restart local v6       #gifFile:Ljava/io/File;
    .restart local v7       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v15

    move-object v5, v6

    .end local v6           #gifFile:Ljava/io/File;
    .restart local v5       #gifFile:Ljava/io/File;
    goto :goto_8

    .line 525
    .end local v5           #gifFile:Ljava/io/File;
    .restart local v6       #gifFile:Ljava/io/File;
    :catch_6
    move-exception v4

    move-object v5, v6

    .end local v6           #gifFile:Ljava/io/File;
    .restart local v5       #gifFile:Ljava/io/File;
    goto :goto_6
.end method

.method public setGifParseStop()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageView$GifFileParseThread;->mGifParseStop:Z

    .line 606
    return-void
.end method
