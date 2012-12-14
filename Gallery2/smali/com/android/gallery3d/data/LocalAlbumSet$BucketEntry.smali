.class Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BucketEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public bucketPath:Ljava/lang/String;

.field public isHidden:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "mIsHidden"
    .parameter "path"

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput p1, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    .line 382
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    .line 383
    iput-boolean p3, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->isHidden:Z

    .line 384
    iput-object p4, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketPath:Ljava/lang/String;

    .line 385
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 394
    instance-of v2, p1, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    if-nez v2, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 395
    check-cast v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;

    .line 396
    .local v0, entry:Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;
    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iget v3, v0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbumSet$BucketEntry;->bucketId:I

    return v0
.end method
