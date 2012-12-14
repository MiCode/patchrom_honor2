.class public Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;
.super Lcom/android/gallery3d/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;ILjava/lang/String;)V
    .locals 6
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 175
    invoke-static {p3}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/Path;II)V

    .line 176
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->hasHuaweiDrm()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p4}, Lcom/android/gallery3d/util/GalleryUtils;->isDrmFileName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->access$000()Lcom/android/gallery3d/util/DrmClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 183
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/gallery3d/util/DrmClient;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/util/DrmClient;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/gallery3d/data/LocalImage;->access$002(Lcom/android/gallery3d/util/DrmClient;)Lcom/android/gallery3d/util/DrmClient;

    .line 185
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/data/LocalImage;->access$000()Lcom/android/gallery3d/util/DrmClient;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, p4, v3, v5}, Lcom/android/gallery3d/util/DrmClient;->getDrmRight(Ljava/lang/String;IZ)I

    move-result v1

    .line 186
    .local v1, filestat:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 188
    iput-boolean v5, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmBitmap:Z

    .line 189
    sput-boolean v4, Lcom/android/gallery3d/data/LocalImage;->mIsdrmOrNormal:Z

    .line 190
    if-nez v1, :cond_1

    .line 192
    iput-boolean v5, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmRightValid:Z

    .line 210
    .end local v1           #filestat:I
    :goto_0
    return-void

    .line 196
    .restart local v1       #filestat:I
    :cond_1
    iput-boolean v4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmRightValid:Z

    goto :goto_0

    .line 201
    :cond_2
    iput-boolean v4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmBitmap:Z

    goto :goto_0

    .line 206
    .end local v1           #filestat:I
    :cond_3
    iput-boolean v4, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmBitmap:Z

    .line 207
    sput-boolean v5, Lcom/android/gallery3d/data/LocalImage;->mIsdrmOrNormal:Z

    goto :goto_0
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "jc"
    .parameter "type"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 214
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 215
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 216
    invoke-static {p2}, Lcom/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 219
    .local v5, targetSize:I
    const/4 v7, 0x2

    if-ne p2, v7, :cond_1

    .line 220
    const/4 v1, 0x0

    .line 221
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v6, 0x0

    .line 223
    .local v6, thumbData:[B
    const-string v7, "inThumbnailMode"

    invoke-static {v3, v7, v10}, Lcom/android/gallery3d/util/GalleryUtils;->setFiledValue(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 224
    const-string v7, "inShowDialogMode"

    invoke-static {v3, v7, v9}, Lcom/android/gallery3d/util/GalleryUtils;->setFiledValue(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 227
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_0

    .line 229
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_0
    move-object v1, v2

    .line 234
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v6, :cond_2

    .line 235
    invoke-static {p1, v6, v3, v5}, Lcom/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 248
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v6           #thumbData:[B
    :goto_1
    return-object v0

    .line 231
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_0
    move-exception v4

    .line 232
    .local v4, t:Ljava/lang/Throwable;
    :goto_2
    const-string v7, "LocalImage"

    const-string v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 240
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v4           #t:Ljava/lang/Throwable;
    .end local v6           #thumbData:[B
    :cond_1
    if-ne p2, v10, :cond_2

    .line 242
    const-string v7, "inThumbnailMode"

    invoke-static {v3, v7, v9}, Lcom/android/gallery3d/util/GalleryUtils;->setFiledValue(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 244
    :cond_2
    const-string v7, "inThumbnailMode"

    invoke-static {v3, v7, v9}, Lcom/android/gallery3d/util/GalleryUtils;->getFiledValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v7

    if-ne v7, v10, :cond_3

    iget-boolean v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmBitmap:Z

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mDrmRightValid:Z

    if-nez v7, :cond_3

    .line 245
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a1

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 248
    :cond_3
    iget-object v7, p0, Lcom/android/gallery3d/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3, v5, p2}, Lcom/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 231
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/gallery3d/data/ImageCacheRequest;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
