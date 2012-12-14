.class Lcom/scalado/app/rewind/RewindApp$JpegLoader;
.super Landroid/os/AsyncTask;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JpegLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1126
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method

.method private loadFromAssets([Ljava/lang/String;[I)V
    .locals 12
    .parameter "images"
    .parameter "sizes"

    .prologue
    .line 1261
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1262
    const/4 v1, 0x0

    .line 1263
    .local v1, bytes:[B
    iget-object v9, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/scalado/app/rewind/RewindApp;->access$3700(Lcom/scalado/app/rewind/RewindApp;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 1264
    .local v6, mgr:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_0

    .line 1265
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1299
    :cond_0
    return-void

    .line 1268
    :cond_1
    aget-object v7, p1, v3

    .line 1269
    .local v7, name:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1272
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 1273
    .local v4, in:Ljava/io/InputStream;
    const-string v9, "RewindApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1276
    aget v8, p2, v3

    .line 1278
    .local v8, size:I
    if-eqz v1, :cond_2

    array-length v9, v1

    if-ge v9, v8, :cond_3

    .line 1279
    :cond_2
    const v9, 0x3f99999a

    int-to-float v10, v8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    new-array v1, v9, [B

    .line 1281
    :cond_3
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 1285
    new-instance v0, Lcom/scalado/base/Buffer;

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>([B)V

    .line 1286
    .local v0, bb:Lcom/scalado/base/Buffer;
    iget-object v9, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->addJpeg(Lcom/scalado/base/Buffer;)V
    invoke-static {v9, v0}, Lcom/scalado/app/rewind/RewindApp;->access$3600(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/base/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1289
    if-eqz v4, :cond_4

    .line 1291
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1264
    .end local v0           #bb:Lcom/scalado/base/Buffer;
    .end local v8           #size:I
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1292
    .restart local v0       #bb:Lcom/scalado/base/Buffer;
    .restart local v8       #size:I
    :catch_0
    move-exception v5

    .line 1293
    .local v5, ioe:Ljava/io/IOException;
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1287
    .end local v0           #bb:Lcom/scalado/base/Buffer;
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v8           #size:I
    :catch_1
    move-exception v9

    .line 1289
    if-eqz v4, :cond_4

    .line 1291
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1292
    :catch_2
    move-exception v5

    .line 1293
    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v9, "RewindApp"

    const-string v10, "Exception when closing input stream!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v9, "RewindApp"

    const-string v10, "Ex:"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1289
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_5

    .line 1291
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1295
    :cond_5
    :goto_2
    throw v9

    .line 1292
    :catch_3
    move-exception v5

    .line 1293
    .restart local v5       #ioe:Ljava/io/IOException;
    const-string v10, "RewindApp"

    const-string v11, "Exception when closing input stream!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-string v10, "RewindApp"

    const-string v11, "Ex:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadFromSD([Ljava/lang/String;)V
    .locals 13
    .parameter "images"

    .prologue
    .line 1197
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1198
    const/4 v2, 0x0

    .line 1199
    .local v2, bytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, p1

    if-ge v4, v10, :cond_4

    .line 1200
    aget-object v8, p1, v4

    .line 1201
    .local v8, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    .line 1204
    .local v9, size:I
    const/4 v5, 0x0

    .line 1205
    .local v5, in:Ljava/io/FileInputStream;
    const-string v10, "RewindApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1216
    .end local v5           #in:Ljava/io/FileInputStream;
    .local v6, in:Ljava/io/FileInputStream;
    if-eqz v2, :cond_0

    :try_start_1
    array-length v10, v2

    if-ge v10, v9, :cond_1

    .line 1217
    :cond_0
    const v10, 0x3f99999a

    int-to-float v11, v9

    mul-float/2addr v10, v11

    float-to-int v10, v10

    new-array v2, v10, [B

    .line 1219
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v6, v2, v10, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 1220
    const/4 v10, 0x0

    invoke-static {v2, v10, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1221
    .local v0, bb:Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/scalado/base/Buffer;

    invoke-direct {v1, v0}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1223
    .local v1, buf:Lcom/scalado/base/Buffer;
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->addJpeg(Lcom/scalado/base/Buffer;)V
    invoke-static {v10, v1}, Lcom/scalado/app/rewind/RewindApp;->access$3600(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/base/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1230
    if-eqz v6, :cond_5

    .line 1232
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 1239
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #buf:Lcom/scalado/base/Buffer;
    .end local v6           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1199
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1233
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v0       #bb:Ljava/nio/ByteBuffer;
    .restart local v1       #buf:Lcom/scalado/base/Buffer;
    .restart local v6       #in:Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 1234
    .local v7, ioe:Ljava/io/IOException;
    const-string v10, "RewindApp"

    const-string v11, "Exception when closing input stream!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v10, "RewindApp"

    const-string v11, "Ex:"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 1236
    .end local v6           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1224
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v1           #buf:Lcom/scalado/base/Buffer;
    .end local v7           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 1225
    .restart local v7       #ioe:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v10, "RewindApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception loading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    iget-object v10, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mActivityHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/scalado/app/rewind/RewindApp;->access$3500(Lcom/scalado/app/rewind/RewindApp;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1230
    if-eqz v5, :cond_2

    .line 1232
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1233
    :catch_2
    move-exception v7

    .line 1234
    const-string v10, "RewindApp"

    const-string v11, "Exception when closing input stream!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v10, "RewindApp"

    const-string v11, "Ex:"

    invoke-static {v10, v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1230
    .end local v7           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v5, :cond_3

    .line 1232
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1236
    :cond_3
    :goto_4
    throw v10

    .line 1233
    :catch_3
    move-exception v7

    .line 1234
    .restart local v7       #ioe:Ljava/io/IOException;
    const-string v11, "RewindApp"

    const-string v12, "Exception when closing input stream!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v11, "RewindApp"

    const-string v12, "Ex:"

    invoke-static {v11, v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1241
    .end local v3           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #size:I
    :cond_4
    return-void

    .line 1230
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #in:Ljava/io/FileInputStream;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #size:I
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1224
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v6       #in:Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v0       #bb:Ljava/nio/ByteBuffer;
    .restart local v1       #buf:Lcom/scalado/base/Buffer;
    .restart local v6       #in:Ljava/io/FileInputStream;
    :cond_5
    move-object v5, v6

    .end local v6           #in:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "ints"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedSizes:[I

    invoke-direct {p0, v0, v1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->loadFromAssets([Ljava/lang/String;[I)V

    .line 1135
    :goto_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->predefinedImages:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->loadFromSD([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1126
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1305
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1126
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1302
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1126
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
