.class public final Landroid/content/res/ZipFileCache;
.super Ljava/lang/Object;
.source "ZipFileCache.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATUS_NO_NEED_UPDATE:I = 0x1

.field public static final STATUS_UPDATED:I = 0x0

.field public static final STATUS_UPDATE_FAILED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZipFileCache"

.field private static final sZipFileCacheMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/ZipFileCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLastModifyTime:J

.field private mPath:Ljava/lang/String;

.field private mZip:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    .line 51
    iput-object p1, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->openZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "ZipFileCache"

    const-string v1, "init failed when open zip file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    return-void
.end method

.method private static closeInputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeZipFile()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;
    .locals 7
    .parameter "path"
    .parameter "zip"

    .prologue
    const/4 v5, 0x0

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, key:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v5

    .line 90
    :goto_0
    return-object v3

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 68
    .local v2, zipFileCache:Landroid/content/res/ZipFileCache;
    sget-object v6, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    monitor-enter v6

    .line 69
    :try_start_0
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    new-instance v3, Landroid/content/res/ZipFileCache;

    invoke-direct {v3, p0, p1}, Landroid/content/res/ZipFileCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .end local v2           #zipFileCache:Landroid/content/res/ZipFileCache;
    .local v3, zipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_1
    iget-object v4, v3, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 73
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 75
    :cond_1
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v3           #zipFileCache:Landroid/content/res/ZipFileCache;
    .restart local v2       #zipFileCache:Landroid/content/res/ZipFileCache;
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 80
    :cond_2
    :try_start_3
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/res/ZipFileCache;

    move-object v2, v0

    .line 82
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    if-eqz v2, :cond_3

    .line 85
    const/4 v4, -0x1

    invoke-virtual {v2}, Landroid/content/res/ZipFileCache;->checkUpdate()I

    move-result v6

    if-ne v4, v6, :cond_3

    move-object v3, v5

    .line 86
    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 90
    goto :goto_0

    .line 82
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public static getCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, key:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 110
    :goto_0
    return-object v1

    .line 98
    :cond_0
    sget-object v3, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    monitor-enter v3

    .line 99
    :try_start_0
    sget-object v4, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    new-instance v1, Landroid/content/res/ZipFileCache;

    invoke-direct {v1, p0, p1}, Landroid/content/res/ZipFileCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v1, zipFileCache:Landroid/content/res/ZipFileCache;
    iget-object v4, v1, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    .line 103
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 105
    :cond_1
    sget-object v2, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v3

    goto :goto_0

    .line 112
    .end local v1           #zipFileCache:Landroid/content/res/ZipFileCache;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 110
    :cond_2
    :try_start_1
    sget-object v2, Landroid/content/res/ZipFileCache;->sZipFileCacheMaps:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ZipFileCache;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method private openZipFile()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 160
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v2

    .line 153
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    new-instance v4, Ljava/util/zip/ZipFile;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iput-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 159
    .local v1, io:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->setEmpty()V

    move v2, v3

    .line 160
    goto :goto_0
.end method

.method private setEmpty()V
    .locals 2

    .prologue
    .line 186
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    .line 189
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    .line 190
    return-void
.end method


# virtual methods
.method public checkUpdate()I
    .locals 5

    .prologue
    .line 120
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 121
    .local v0, l:J
    iget-wide v2, p0, Landroid/content/res/ZipFileCache;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 125
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->closeZipFile()V

    .line 127
    invoke-direct {p0}, Landroid/content/res/ZipFileCache;->openZipFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const-string v2, "ZipFileCache"

    const-string v3, "checkUpdate failed when open zip file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, -0x1

    .line 138
    :goto_0
    return v2

    .line 131
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "fileName"

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    move-object v0, v4

    .line 219
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    .line 206
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 208
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 209
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 210
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 211
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :cond_1
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 214
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    move-object v0, v4

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v4
.end method

.method public getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "filePattern"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v2, bmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget-object v8, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v8, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v2

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 238
    .local v1, bmp:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 239
    .local v7, zipEntry:Ljava/util/zip/ZipEntry;
    const/4 v6, 0x0

    .line 240
    .local v6, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 242
    .local v5, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 244
    .local v3, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :try_start_0
    iget-object v8, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 245
    if-eqz v3, :cond_0

    .line 248
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 249
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v7, v0

    .line 250
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    const-string v8, ".png"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 253
    iget-object v8, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v8, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 254
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    invoke-static {v5}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 256
    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 261
    :catch_0
    move-exception v4

    .line 262
    .local v4, ex:Ljava/lang/Exception;
    invoke-static {v5}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    .line 263
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "res"
    .parameter "value"
    .parameter "fileName"

    .prologue
    const/4 v4, 0x0

    .line 281
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v5, :cond_0

    move-object v0, v4

    .line 303
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    .line 287
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 289
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, p3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 290
    .local v2, entry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_1

    .line 291
    iget-object v5, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 293
    const/4 v5, 0x0

    invoke-static {p1, p2, v3, p3, v5}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :cond_1
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    .line 298
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    move-object v0, v4

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v3}, Landroid/content/res/ZipFileCache;->closeInputStream(Ljava/io/InputStream;)V

    throw v4
.end method

.method public getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "fileName"

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 327
    :cond_0
    :goto_0
    return-object v2

    .line 316
    :cond_1
    const/4 v2, 0x0

    .line 319
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 320
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 321
    iget-object v4, p0, Landroid/content/res/ZipFileCache;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 324
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 325
    goto :goto_0
.end method
