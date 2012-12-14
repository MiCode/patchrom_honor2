.class public Lcom/android/gallery3d/photoeditor/SaveCopyTask;
.super Landroid/os/AsyncTask;
.source "SaveCopyTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;,
        Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;

.field private final context:Landroid/content/Context;

.field private final saveFileName:Ljava/lang/String;

.field private saveFolderName:Ljava/lang/String;

.field private final sourceUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUri"
    .parameter "callback"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    .line 71
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFileName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private getSaveDirectory()Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 143
    new-array v0, v1, [Ljava/io/File;

    .line 144
    .local v0, dir:[Ljava/io/File;
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_data"

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/gallery3d/photoeditor/SaveCopyTask$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$1;-><init>(Lcom/android/gallery3d/photoeditor/SaveCopyTask;[Ljava/io/File;)V

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->querySource([Ljava/lang/String;Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 151
    aget-object v1, v0, v3

    return-object v1
.end method

.method private insertContent(Ljava/io/File;)Landroid/net/Uri;
    .locals 9
    .parameter "file"

    .prologue
    const/4 v8, 0x0

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 160
    .local v0, now:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 161
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "_display_name"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "mime_type"

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v4, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v4, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v4, "orientation"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v4, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "datetaken"

    aput-object v4, v2, v8

    const/4 v4, 0x1

    const-string v5, "latitude"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "longitude"

    aput-object v5, v2, v4

    .line 176
    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/photoeditor/SaveCopyTask$2;

    invoke-direct {v4, p0, v3}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$2;-><init>(Lcom/android/gallery3d/photoeditor/SaveCopyTask;Landroid/content/ContentValues;)V

    invoke-direct {p0, v2, v4}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->querySource([Ljava/lang/String;Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;)V

    .line 192
    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private querySource([Ljava/lang/String;Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;)V
    .locals 7
    .parameter "projection"
    .parameter "callback"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 129
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->sourceUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p2, v6}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 136
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 83
    aget-object v7, p1, v9

    if-nez v7, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v4

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->getSaveDirectory()Ljava/io/File;

    move-result-object v3

    .line 88
    .local v3, saveDirectory:Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_3

    .line 89
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3           #saveDirectory:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "download"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .restart local v3       #saveDirectory:Ljava/io/File;
    iget-object v7, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v8, 0x7f0e010f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    .line 96
    :goto_1
    aget-object v0, p1, v9

    .line 98
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-wide/32 v5, 0x7a120

    .line 99
    .local v5, validStorage:J
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    .line 100
    .local v2, imgStorage:I
    const-wide/32 v7, 0x7a120

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Lcom/android/gallery3d/util/GalleryUtils;->hasSpaceForSize(J)Z

    move-result v7

    if-nez v7, :cond_4

    .line 101
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 93
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imgStorage:I
    .end local v5           #validStorage:J
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    goto :goto_1

    .line 107
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #imgStorage:I
    .restart local v5       #validStorage:J
    :cond_4
    new-instance v7, Lcom/android/gallery3d/photoeditor/BitmapUtils;

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/gallery3d/photoeditor/BitmapUtils;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFileName:Ljava/lang/String;

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v0, v3, v8, v9}, Lcom/android/gallery3d/photoeditor/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->insertContent(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 110
    .local v4, uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 116
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, message:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 119
    .local v1, toast:Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1, v2, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 120
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;

    invoke-interface {v2, p1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;->onComplete(Landroid/net/Uri;)V

    .line 123
    return-void

    .line 116
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->context:Landroid/content/Context;

    const v3, 0x7f0e0003

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->saveFolderName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
