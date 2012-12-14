.class public Lcom/android/gallery3d/util/BlackList;
.super Ljava/lang/Object;
.source "BlackList.java"


# static fields
.field private static sInstance:Lcom/android/gallery3d/util/BlackList;


# instance fields
.field private equalsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startWithList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlackList;->startWithList:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/util/BlackList;->equalsList:Ljava/util/ArrayList;

    .line 26
    const-class v0, Lcom/android/gallery3d/util/BlackList;

    const-string v1, "/assets/black_list.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 32
    const/4 v0, 0x0

    .line 34
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 42
    iget-object v5, p0, Lcom/android/gallery3d/util/BlackList;->startWithList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v2, :cond_1

    .line 53
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 55
    :cond_1
    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    :cond_2
    :goto_1
    return-void

    .line 44
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/gallery3d/util/BlackList;->equalsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    if-eqz v2, :cond_4

    .line 53
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 55
    :cond_4
    if-eqz v1, :cond_5

    .line 56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 60
    :cond_5
    :goto_2
    throw v0

    .line 52
    :cond_6
    if-eqz v2, :cond_7

    .line 53
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 55
    :cond_7
    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 58
    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 58
    :catch_3
    move-exception v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private changeFilePathToDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/BlackList;->getSkipLengthFromPath(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, skipLen:I
    const-string v4, "/"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 103
    .local v3, start:I
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 105
    .local v0, end:I
    const-string v4, "BlackList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-ltz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 108
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, pathStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/gallery3d/util/BlackList;
    .locals 2

    .prologue
    .line 124
    const-class v1, Lcom/android/gallery3d/util/BlackList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/gallery3d/util/BlackList;->sInstance:Lcom/android/gallery3d/util/BlackList;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/gallery3d/util/BlackList;

    invoke-direct {v0}, Lcom/android/gallery3d/util/BlackList;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/BlackList;->sInstance:Lcom/android/gallery3d/util/BlackList;

    .line 127
    :cond_0
    sget-object v0, Lcom/android/gallery3d/util/BlackList;->sInstance:Lcom/android/gallery3d/util/BlackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSkipLengthFromPath(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 114
    const-string v0, "/storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/16 v0, 0x9

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    const-string v0, "/mnt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x5

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 6
    .parameter "filePath"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/gallery3d/util/BlackList;->changeFilePathToDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, dir:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 78
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/util/BlackList;->equalsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, path:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 80
    goto :goto_0

    .line 84
    .end local v2           #path:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/util/BlackList;->startWithList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .restart local v2       #path:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 86
    goto :goto_0
.end method
