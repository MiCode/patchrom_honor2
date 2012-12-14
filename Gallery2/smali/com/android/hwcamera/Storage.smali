.class public Lcom/android/hwcamera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Storage$InternalSdcard;,
        Lcom/android/hwcamera/Storage$ExternalSdcard;,
        Lcom/android/hwcamera/Storage$SaveLocation;
    }
.end annotation


# static fields
.field public static final DCIM:Ljava/lang/String;

.field public static final DIRECTORY:Ljava/lang/String;

.field private static mExternalSdcard:Lcom/android/hwcamera/Storage$ExternalSdcard;

.field private static mInternalSdcard:Lcom/android/hwcamera/Storage$InternalSdcard;

.field private static mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

.field private static mStoragePath:Lcom/android/hwcamera/StoragePath;

.field protected static mStrongeHint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/Storage;->DCIM:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/hwcamera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/hwcamera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 41
    sput-object v2, Lcom/android/hwcamera/Storage;->mStrongeHint:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/hwcamera/Storage$ExternalSdcard;

    invoke-direct {v0}, Lcom/android/hwcamera/Storage$ExternalSdcard;-><init>()V

    sput-object v0, Lcom/android/hwcamera/Storage;->mExternalSdcard:Lcom/android/hwcamera/Storage$ExternalSdcard;

    .line 77
    new-instance v0, Lcom/android/hwcamera/Storage$InternalSdcard;

    invoke-direct {v0}, Lcom/android/hwcamera/Storage$InternalSdcard;-><init>()V

    sput-object v0, Lcom/android/hwcamera/Storage;->mInternalSdcard:Lcom/android/hwcamera/Storage$InternalSdcard;

    .line 78
    sget-object v0, Lcom/android/hwcamera/Storage;->mInternalSdcard:Lcom/android/hwcamera/Storage$InternalSdcard;

    sput-object v0, Lcom/android/hwcamera/Storage;->mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

    .line 79
    sput-object v2, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$000()Lcom/android/hwcamera/StoragePath;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    return-object v0
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;I[BZII)Landroid/net/Uri;
    .locals 12
    .parameter "resolver"
    .parameter "dirPath"
    .parameter "title"
    .parameter "date"
    .parameter "location"
    .parameter "orientation"
    .parameter "jpeg"
    .parameter "isneedrecord"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 121
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 125
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, p1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 133
    :try_start_2
    invoke-static {v5}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 138
    :goto_0
    if-nez p8, :cond_1

    .line 139
    const/4 v7, 0x0

    move-object v4, v5

    .line 175
    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :goto_1
    return-object v7

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v9, "CameraStorage"

    const-string v10, "Failed to write image"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    const/4 v7, 0x0

    .line 133
    :try_start_4
    invoke-static {v4}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v9

    goto :goto_1

    .line 132
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 133
    :goto_3
    :try_start_5
    invoke-static {v4}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 135
    :goto_4
    throw v9

    .line 142
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v8, 0x0

    .line 143
    .local v8, values:Landroid/content/ContentValues;
    if-eqz p5, :cond_5

    .line 144
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .restart local v8       #values:Landroid/content/ContentValues;
    :goto_5
    const-string v9, "title"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v9, "_display_name"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v9, "datetaken"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v9, "orientation"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v9, "_data"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v9, "_size"

    move-object/from16 v0, p7

    array-length v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    if-lez p9, :cond_2

    .line 156
    const-string v9, "width"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    :cond_2
    if-lez p10, :cond_3

    .line 159
    const-string v9, "height"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    :cond_3
    if-eqz p5, :cond_4

    .line 165
    const-string v9, "latitude"

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 166
    const-string v9, "longitude"

    invoke-virtual/range {p5 .. p5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 169
    :cond_4
    const/4 v7, 0x0

    .line 171
    .local v7, uri:Landroid/net/Uri;
    :try_start_6
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v7

    :goto_6
    move-object v4, v5

    .line 175
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 146
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v7           #uri:Landroid/net/Uri;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_5
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v8       #values:Landroid/content/ContentValues;
    goto/16 :goto_5

    .line 172
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_2
    move-exception v2

    .line 173
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "CameraStorage"

    const-string v10, "Failed to write MediaStore"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 134
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .end local v1           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    goto/16 :goto_4

    .line 132
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 128
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static delAllFile(Ljava/lang/String;)V
    .locals 8
    .parameter "path"

    .prologue
    .line 420
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 446
    :cond_0
    return-void

    .line 424
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, tempList:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 429
    .local v3, temp:Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 430
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 431
    const-string v5, "CameraStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tempList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v3, Ljava/io/File;

    .end local v3           #temp:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .restart local v3       #temp:Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 438
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 439
    .local v2, isdelete:Z
    const-string v5, "CameraStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succes is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v2           #isdelete:Z
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/hwcamera/Storage;->delAllFile(Ljava/lang/String;)V

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/hwcamera/Storage;->delFolder(Ljava/lang/String;)Z

    .line 429
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 434
    :cond_4
    new-instance v3, Ljava/io/File;

    .end local v3           #temp:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3       #temp:Ljava/io/File;
    goto/16 :goto_1
.end method

.method public static delFolder(Ljava/lang/String;)Z
    .locals 7
    .parameter "folderPath"

    .prologue
    .line 398
    const/4 v2, 0x0

    .line 400
    .local v2, isdelete:Z
    :try_start_0
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->delAllFile(Ljava/lang/String;)V

    .line 401
    move-object v1, p0

    .line 402
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v3, myFilePath:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 405
    const-string v4, "CameraStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete succes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v1           #filePath:Ljava/lang/String;
    .end local v3           #myFilePath:Ljava/io/File;
    :goto_0
    return v2

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 259
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/hwcamera/Storage;->getDcimPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    return-void
.end method

.method public static getActionPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Action"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableSpace()J
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 182
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getDcimPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDcimPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/hwcamera/Storage;->mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

    invoke-interface {v1}, Lcom/android/hwcamera/Storage$SaveLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneAvailableSpace()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x4

    .line 211
    :try_start_0
    sget-object v6, Lcom/android/hwcamera/Storage;->mInternalSdcard:Lcom/android/hwcamera/Storage$InternalSdcard;

    invoke-virtual {v6}, Lcom/android/hwcamera/Storage$InternalSdcard;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, interStoragePath:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 213
    const-wide/16 v4, -0x3

    .line 227
    :cond_0
    :goto_0
    return-wide v4

    .line 216
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 223
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 224
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    goto :goto_0

    .line 225
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CameraStorage"

    const-string v7, "Fail to access external storage"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getRewindPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Rewind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardAvailableSpace()J
    .locals 10

    .prologue
    const-wide/16 v5, -0x2

    .line 188
    :try_start_0
    sget-object v7, Lcom/android/hwcamera/Storage;->mExternalSdcard:Lcom/android/hwcamera/Storage$ExternalSdcard;

    invoke-virtual {v7}, Lcom/android/hwcamera/Storage$ExternalSdcard;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, externalStoragePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/hwcamera/Storage;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, state:Ljava/lang/String;
    const-string v7, "CameraStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External storage state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 192
    const-wide/16 v5, -0x1

    .line 206
    .end local v4           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v5

    .line 195
    .restart local v4       #state:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v7

    goto :goto_0

    .line 203
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #state:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "CameraStorage"

    const-string v8, "Fail to access external storage"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/hwcamera/Storage;->mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

    invoke-interface {v0}, Lcom/android/hwcamera/Storage$SaveLocation;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 232
    sget-object v0, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/StoragePath;->getStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getmStrongeHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/hwcamera/Storage;->mStrongeHint:Ljava/lang/String;

    return-object v0
.end method

.method public static isDirectoryAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 453
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageExist()Z
    .locals 2

    .prologue
    .line 247
    sget-object v1, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    invoke-virtual {v1}, Lcom/android/hwcamera/StoragePath;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "/mnt/usb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 251
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInternalStorageExist()Z
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    invoke-virtual {v0}, Lcom/android/hwcamera/StoragePath;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    const-string v0, "CameraStorage"

    const-string v1, "internal storage is not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSaveToSDCard()Z
    .locals 4

    .prologue
    .line 383
    sget-object v1, Lcom/android/hwcamera/Storage;->mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

    sget-object v2, Lcom/android/hwcamera/Storage;->mExternalSdcard:Lcom/android/hwcamera/Storage$ExternalSdcard;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 384
    .local v0, retVal:Z
    :goto_0
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSaveToSDCard :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v0

    .line 383
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveLocationInit(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    new-instance v0, Lcom/android/hwcamera/StoragePath;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/StoragePath;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    .line 101
    return-void
.end method

.method public static saveLocationUnInit()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public static setSaveLocation(Lcom/android/hwcamera/Storage$SaveLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 111
    sput-object p0, Lcom/android/hwcamera/Storage;->mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

    .line 112
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage path current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/hwcamera/Storage;->mLocation:Lcom/android/hwcamera/Storage$SaveLocation;

    invoke-interface {v2}, Lcom/android/hwcamera/Storage$SaveLocation;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public static setmStrongeHint(Ljava/lang/String;)V
    .locals 0
    .parameter "mSendStrongeHint"

    .prologue
    .line 50
    sput-object p0, Lcom/android/hwcamera/Storage;->mStrongeHint:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static switchToExternalSdCard()V
    .locals 2

    .prologue
    .line 361
    sget-object v1, Lcom/android/hwcamera/Storage;->mExternalSdcard:Lcom/android/hwcamera/Storage$ExternalSdcard;

    invoke-static {v1}, Lcom/android/hwcamera/Storage;->setSaveLocation(Lcom/android/hwcamera/Storage$SaveLocation;)V

    .line 362
    sget-object v1, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    if-nez v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-object v1, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    invoke-virtual {v1}, Lcom/android/hwcamera/StoragePath;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 366
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/hwcamera/ActivityBase;

    if-eqz v1, :cond_0

    .line 367
    check-cast v0, Lcom/android/hwcamera/ActivityBase;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->notifyStorageInfoChanged()V

    goto :goto_0
.end method

.method public static switchToInternalSdCard()V
    .locals 2

    .prologue
    .line 372
    sget-object v1, Lcom/android/hwcamera/Storage;->mInternalSdcard:Lcom/android/hwcamera/Storage$InternalSdcard;

    invoke-static {v1}, Lcom/android/hwcamera/Storage;->setSaveLocation(Lcom/android/hwcamera/Storage$SaveLocation;)V

    .line 373
    sget-object v1, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    sget-object v1, Lcom/android/hwcamera/Storage;->mStoragePath:Lcom/android/hwcamera/StoragePath;

    invoke-virtual {v1}, Lcom/android/hwcamera/StoragePath;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 377
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/hwcamera/ActivityBase;

    if-eqz v1, :cond_0

    .line 378
    check-cast v0, Lcom/android/hwcamera/ActivityBase;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->notifyStorageInfoChanged()V

    goto :goto_0
.end method
