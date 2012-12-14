.class public Lcom/android/hwcamera/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mAfd:Landroid/content/res/AssetFileDescriptor;

.field private mAudioStreamType:I

.field private mExit:Z

.field private mPlayCount:I

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;Z)V
    .locals 1
    .parameter "afd"
    .parameter "enforceAudible"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayCount:I

    .line 80
    iput-object p1, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/hwcamera/SoundPlayer;->mAudioStreamType:I

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/SoundPlayer;->mAudioStreamType:I

    goto :goto_0
.end method


# virtual methods
.method public play()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mThread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayCount:I

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 101
    monitor-enter p0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/hwcamera/SoundPlayer;->mExit:Z

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :goto_0
    iput-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mThread:Ljava/lang/Thread;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :goto_1
    iput-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 120
    iput-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 122
    :cond_2
    return-void

    .line 104
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 43
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 44
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 45
    .local v0, player:Landroid/media/MediaPlayer;
    iget v1, p0, Lcom/android/hwcamera/SoundPlayer;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 46
    iget-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 49
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 50
    iput-object v0, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 51
    iget-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mAfd:Landroid/content/res/AssetFileDescriptor;

    .line 54
    .end local v0           #player:Landroid/media/MediaPlayer;
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/hwcamera/SoundPlayer;->mExit:Z

    if-eqz v1, :cond_1

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayCount:I

    if-gtz v1, :cond_2

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :catch_0
    move-exception v6

    .line 69
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "SoundPlayer"

    const-string v2, "Error playing sound"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayCount:I

    .line 65
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    iget-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 67
    iget-object v1, p0, Lcom/android/hwcamera/SoundPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
