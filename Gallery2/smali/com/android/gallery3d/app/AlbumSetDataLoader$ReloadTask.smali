.class Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;
.super Ljava/lang/Thread;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private volatile mIsLoading:Z

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 318
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 319
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;)V

    return-void
.end method

.method private updateLoading(Z)V
    .locals 2
    .parameter "loading"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    if-ne v0, p1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mIsLoading:Z

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1700(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v14, -0x1

    const/4 v9, 0x0

    .line 331
    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 333
    const/4 v5, 0x0

    .line 334
    .local v5, updateComplete:Z
    :cond_0
    :goto_0
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v10, :cond_8

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    if-nez v10, :cond_2

    if-eqz v5, :cond_2

    .line 337
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v10}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 338
    :cond_1
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 339
    monitor-exit p0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    iput-boolean v9, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mDirty:Z

    .line 343
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 346
    sget-object v10, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 347
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 348
    .local v3, start:J
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    .line 349
    .local v6, version:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v0, v11, v3

    .line 350
    .local v0, duration:J
    const-wide/16 v11, 0x14

    cmp-long v11, v0, v11

    if-lez v11, :cond_3

    .line 351
    const-string v11, "DebugLoadingTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "finish reload - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v11, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v11, v12, v6, v7}, Lcom/android/gallery3d/app/AlbumSetDataLoader$GetUpdateInfo;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;J)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;

    .line 355
    .local v2, info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    if-nez v2, :cond_5

    move v5, v8

    .line 356
    :goto_1
    if-nez v5, :cond_0

    .line 358
    sget-object v10, Lcom/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    .line 359
    :try_start_3
    iget-wide v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    cmp-long v11, v11, v6

    if-eqz v11, :cond_4

    .line 360
    iput-wide v6, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->version:J

    .line 361
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v11

    iput v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    .line 367
    iget v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    iget v12, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->size:I

    if-lt v11, v12, :cond_4

    .line 368
    const/4 v11, -0x1

    iput v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    .line 371
    :cond_4
    iget v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    if-eq v11, v14, :cond_7

    .line 372
    iget-object v11, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    #getter for: Lcom/android/gallery3d/app/AlbumSetDataLoader;->mSource:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1800(Lcom/android/gallery3d/app/AlbumSetDataLoader;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    iget v12, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->index:I

    invoke-virtual {v11, v12}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v11

    iput-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    .line 373
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    if-nez v11, :cond_6

    monitor-exit v10

    goto/16 :goto_0

    .line 377
    :catchall_1
    move-exception v8

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 353
    .end local v0           #duration:J
    .end local v2           #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v3           #start:J
    .end local v6           #version:J
    :catchall_2
    move-exception v8

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v8

    .restart local v0       #duration:J
    .restart local v2       #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .restart local v3       #start:J
    .restart local v6       #version:J
    :cond_5
    move v5, v9

    .line 355
    goto :goto_1

    .line 374
    :cond_6
    :try_start_5
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v11

    iput-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->cover:Lcom/android/gallery3d/data/MediaItem;

    .line 375
    iget-object v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->item:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v11

    iput v11, v2, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;->totalCount:I

    .line 377
    :cond_7
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 378
    iget-object v10, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    new-instance v11, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;

    iget-object v12, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->this$0:Lcom/android/gallery3d/app/AlbumSetDataLoader;

    invoke-direct {v11, v12, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateContent;-><init>(Lcom/android/gallery3d/app/AlbumSetDataLoader;Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;)V

    #calls: Lcom/android/gallery3d/app/AlbumSetDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    invoke-static {v10, v11}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->access$1900(Lcom/android/gallery3d/app/AlbumSetDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 380
    .end local v0           #duration:J
    .end local v2           #info:Lcom/android/gallery3d/app/AlbumSetDataLoader$UpdateInfo;
    .end local v3           #start:J
    .end local v6           #version:J
    :cond_8
    invoke-direct {p0, v9}, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->updateLoading(Z)V

    .line 381
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetDataLoader$ReloadTask;->mActive:Z

    .line 390
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
