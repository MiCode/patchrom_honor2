.class public Lcom/android/gallery3d/data/UriImage;
.super Lcom/android/gallery3d/data/MediaItem;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/UriImage$BitmapJob;,
        Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

.field private final mContentType:Ljava/lang/String;

.field private mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mRotation:I

.field private mState:I

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "application"
    .parameter "path"
    .parameter "uri"
    .parameter "contentType"

    .prologue
    .line 61
    invoke-static {}, Lcom/android/gallery3d/data/UriImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/gallery3d/data/MediaItem;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 62
    iput-object p3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    .line 63
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 64
    iput-object p4, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/gallery3d/data/UriImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    return p1
.end method

.method private isSharable()Z
    .locals 2

    .prologue
    .line 223
    const-string v0, "file"

    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V
    .locals 3
    .parameter "jc"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I

    move-result v0

    .line 79
    .local v0, state:I
    monitor-enter p0

    .line 80
    :try_start_0
    iput v0, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 81
    iget v1, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private openOrDownloadInner(Lcom/android/gallery3d/util/ThreadPool$JobContext;)I
    .locals 11
    .parameter "jc"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 92
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, scheme:Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.resource"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "file"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 97
    :cond_0
    :try_start_0
    const-string v8, "image/jpeg"

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 100
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v8

    iput v8, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 101
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 103
    .end local v1           #is:Ljava/io/InputStream;
    :cond_1
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 105
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    :cond_2
    :goto_0
    return v5

    :cond_3
    move v5, v7

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to open: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 109
    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/net/URI;

    iget-object v9, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    .line 114
    .local v4, url:Ljava/net/URL;
    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/android/gallery3d/data/DownloadCache;->download(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    .line 115
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    if-nez v5, :cond_5

    .line 117
    const-string v5, "UriImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 118
    goto :goto_0

    .line 120
    :cond_5
    const-string v5, "image/jpeg"

    iget-object v8, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 121
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 122
    .restart local v1       #is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/gallery3d/data/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v5

    iput v5, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    .line 123
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 125
    .end local v1           #is:Ljava/io/InputStream;
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mCacheEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;

    iget-object v5, v5, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    const/high16 v8, 0x1000

    invoke-static {v5, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v7

    .line 127
    goto/16 :goto_0

    .line 128
    .end local v4           #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 129
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "UriImage"

    const-string v7, "download error"

    invoke-static {v5, v7, v3}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 130
    goto/16 :goto_0
.end method

.method private prepareInputFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Z
    .locals 4
    .parameter "jc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    new-instance v2, Lcom/android/gallery3d/data/UriImage$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/data/UriImage$1;-><init>(Lcom/android/gallery3d/data/UriImage;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 145
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_0
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 153
    :goto_1
    return v0

    .line 147
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    if-nez v2, :cond_1

    .line 148
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/gallery3d/data/UriImage;->openFileOrDownloadTempFile(Lcom/android/gallery3d/util/ThreadPool$JobContext;)V

    goto :goto_0

    .line 150
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 151
    monitor-exit p0

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 152
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 153
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    .line 156
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 268
    return-void

    .line 266
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 4

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v0

    .line 239
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 241
    const/4 v2, 0x6

    iget v3, p0, Lcom/android/gallery3d/data/UriImage;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 244
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 246
    :cond_1
    const-string v2, "file"

    iget-object v3, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    iget-object v2, p0, Lcom/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, filePath:Ljava/lang/String;
    const/16 v2, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 249
    invoke-static {v0, v1}, Lcom/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    .line 251
    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/android/gallery3d/data/UriImage;->mRotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 2

    .prologue
    .line 210
    const/16 v0, 0x220

    .line 211
    .local v0, supported:I
    invoke-direct {p0}, Lcom/android/gallery3d/data/UriImage;->isSharable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/UriImage;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    or-int/lit8 v0, v0, 0x40

    .line 215
    :cond_1
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/android/gallery3d/data/UriImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/UriImage$BitmapJob;-><init>(Lcom/android/gallery3d/data/UriImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/UriImage$RegionDecoderJob;-><init>(Lcom/android/gallery3d/data/UriImage;Lcom/android/gallery3d/data/UriImage$1;)V

    return-object v0
.end method
