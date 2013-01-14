.class public Lcom/android/gallery3d/data/LocalAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "LocalAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final _DISPLAY_NAME:[Ljava/lang/String;

.field private hasDrmItem:Z

.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private final mBucketName:Ljava/lang/String;

.field private mCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierSettings:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZ)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"

    .prologue
    .line 106
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/gallery3d/data/LocalAlbumSet;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/data/LocalAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 3
    .parameter "path"
    .parameter "application"
    .parameter "bucketId"
    .parameter "isImage"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 67
    iput-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->hasDrmItem:Z

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->_DISPLAY_NAME:[Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 75
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    .line 76
    iput p3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    .line 77
    iput-object p5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketName:Ljava/lang/String;

    .line 78
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3, p5}, Lcom/android/gallery3d/util/MediaSetUtils;->getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    .line 79
    iput-boolean p4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    .line 81
    if-eqz p4, :cond_0

    .line 82
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 83
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 85
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 86
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 97
    :goto_0
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 98
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/android/gallery3d/app/Gallery;->SETTIGNS_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifierSettings:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 100
    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->queryHasContainDrm()Z

    .line 102
    return-void

    .line 89
    :cond_0
    const-string v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    .line 90
    const-string v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    .line 92
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    .line 93
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method private getHiddenFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 233
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/android/gallery3d/app/GalleryApp;ZLjava/util/ArrayList;)[Lcom/android/gallery3d/data/MediaItem;
    .locals 20
    .parameter "application"
    .parameter "isImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/android/gallery3d/data/MediaItem;

    move-object/from16 v18, v0

    .line 174
    .local v18, result:[Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    :goto_0
    return-object v18

    .line 175
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 176
    .local v14, idLow:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 182
    .local v13, idHigh:I
    if-eqz p1, :cond_1

    .line 183
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 184
    .local v3, baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 185
    .local v4, projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .line 192
    .local v16, itemPath:Lcom/android/gallery3d/data/Path;
    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 193
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p0 .. p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 194
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    const-string v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v7

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 197
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 198
    const-string v5, "LocalAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v16           #itemPath:Lcom/android/gallery3d/data/Path;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 188
    .restart local v3       #baseUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 189
    .restart local v4       #projection:[Ljava/lang/String;
    sget-object v16, Lcom/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    .restart local v16       #itemPath:Lcom/android/gallery3d/data/Path;
    goto :goto_1

    .line 202
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #dataManager:Lcom/android/gallery3d/data/DataManager;
    :cond_2
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 203
    .local v17, n:I
    const/4 v11, 0x0

    .line 205
    .local v11, i:I
    :cond_3
    :goto_2
    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 206
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 209
    .local v12, id:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v12, :cond_3

    .line 213
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ge v5, v12, :cond_5

    .line 214
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_4

    .line 227
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 219
    :cond_5
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 220
    .local v8, childPath:Lcom/android/gallery3d/data/Path;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v8, v9, v10, v0, v1}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v15

    .line 222
    .local v15, item:Lcom/android/gallery3d/data/MediaItem;
    aput-object v15, v18, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    add-int/lit8 v11, v11, 0x1

    .line 224
    goto :goto_2

    .line 227
    .end local v8           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v12           #id:I
    .end local v15           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #i:I
    .end local v17           #n:I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 156
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 157
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_1

    .line 158
    if-eqz p4, :cond_0

    .line 159
    new-instance v0, Lcom/android/gallery3d/data/LocalImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 166
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 161
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/LocalVideo;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/android/gallery3d/data/LocalVideo;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private queryHasContainDrm()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->hasDrmItem:Z

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->_DISPLAY_NAME:[Ljava/lang/String;

    const-string v3, "_display_name like \'%.dcf\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 301
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 302
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->hasDrmItem:Z

    .line 320
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 307
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 308
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, bucketDisplayName:Ljava/lang/String;
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->hasDrmItem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .end local v6           #bucketDisplayName:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 320
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->hasDrmItem:Z

    goto :goto_0

    .line 317
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 284
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 285
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalAlbum;->show()V

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 289
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "bucketId"

    iget v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v8

    .line 127
    .local v8, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 129
    .local v1, uri:Landroid/net/Uri;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 135
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 136
    const-string v0, "LocalAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-object v11

    .line 141
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 143
    .local v9, id:I
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v6

    .line 144
    .local v6, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    iget-boolean v2, p0, Lcom/android/gallery3d/data/LocalAlbum;->mIsImage:Z

    invoke-static {v6, v7, v8, v0, v2}, Lcom/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v10

    .line 146
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 149
    .end local v6           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v9           #id:I
    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 239
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/gallery3d/data/LocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/data/LocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 244
    const-string v0, "LocalAlbum"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 254
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 248
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 249
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 254
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    goto :goto_0

    .line 251
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->hasDrmItem:Z

    if-eqz v0, :cond_0

    .line 275
    const/16 v0, 0x401

    .line 277
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x405

    goto :goto_0
.end method

.method public hide()V
    .locals 8

    .prologue
    .line 326
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 328
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v6, ".hidden"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .local v1, hiddenFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 331
    :try_start_0
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketPath:Ljava/lang/String;

    const-string v6, "/mnt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketPath:Ljava/lang/String;

    const-string v6, "/storage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 332
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 333
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "_data"

    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getHiddenFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v5, "bucket_id"

    iget v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v5, "media_type"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 338
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 350
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/data/DataManager;->notifyChange(Landroid/net/Uri;)V

    .line 352
    :cond_1
    return-void

    .line 340
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "system_hidden_folder"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 342
    .local v2, hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketPath:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 345
    .end local v2           #hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalAlbum;->mNotifierSettings:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcom/android/gallery3d/data/LocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDataVersion:J

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mCachedCount:I

    .line 268
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/LocalAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 356
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 358
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 359
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "_data = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/gallery3d/data/LocalAlbum;->getHiddenFileName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 361
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mBucketPath:Ljava/lang/String;

    const-string v5, ".hidden"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .local v1, hiddenFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/DataManager;->notifyChange(Landroid/net/Uri;)V

    .line 375
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/data/DataManager;->broadcastLocalDeletion()V

    .line 376
    return-void

    .line 365
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketPath:Ljava/lang/String;

    const-string v5, "/mnt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketPath:Ljava/lang/String;

    const-string v5, "/storage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "system_hidden_folder"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 368
    .local v2, hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/gallery3d/data/LocalAlbum;->mBucketPath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 371
    .end local v2           #hiddenPreferences:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
