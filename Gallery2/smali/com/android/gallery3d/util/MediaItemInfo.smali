.class public Lcom/android/gallery3d/util/MediaItemInfo;
.super Ljava/lang/Object;
.source "MediaItemInfo.java"


# instance fields
.field public bucketID:I

.field public mediaItemUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/MediaItemInfo;->bucketID:I

    .line 10
    return-void
.end method
