.class public Lcom/android/hwcamera/Thumbnail$ThumbnailThread;
.super Ljava/lang/Thread;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private isCameraState:Z

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .locals 2
    .parameter "resolver"
    .parameter "isCameraState"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 170
    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->isCameraState:Z

    .line 172
    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->handler:Landroid/os/Handler;

    .line 173
    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 176
    iput-object p1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    .line 177
    iput-boolean p2, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->isCameraState:Z

    .line 178
    iput-object p3, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->handler:Landroid/os/Handler;

    .line 179
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/hwcamera/Thumbnail;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 186
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->resolver:Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 185
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
