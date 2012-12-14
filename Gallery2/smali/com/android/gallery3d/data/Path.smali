.class public Lcom/android/gallery3d/data/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static sRoot:Lcom/android/gallery3d/data/Path;


# instance fields
.field private mChildren:Lcom/android/gallery3d/util/IdentityCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/IdentityCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Lcom/android/gallery3d/data/Path;

.field private final mSegment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/android/gallery3d/data/Path;

    const/4 v1, 0x0

    const-string v2, "ROOT"

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "segment"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    .line 36
    iput-object p2, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 5
    .parameter

    .prologue
    .line 105
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/android/gallery3d/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    .line 108
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 109
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    monitor-exit v2

    return-object v1

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 132
    .local v4, n:I
    if-nez v4, :cond_0

    new-array v5, v7, [Ljava/lang/String;

    .line 155
    :goto_0
    return-object v5

    .line 133
    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_1

    .line 134
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "malformed path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 138
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_7

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 142
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 143
    .local v1, c:C
    const/16 v7, 0x7b

    if-ne v1, v7, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 141
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_3
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 145
    :cond_4
    if-nez v0, :cond_2

    if-ne v1, v8, :cond_2

    .line 147
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 148
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v2, v3, 0x1

    .line 152
    goto :goto_1

    .line 153
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 154
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public static splitSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    const/16 v9, 0x7d

    const/16 v8, 0x7b

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 162
    .local v4, n:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_1

    .line 163
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad sequence: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 167
    .local v2, i:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_7

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, brace:I
    move v3, v2

    .local v3, j:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_5

    .line 171
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 172
    .local v1, c:C
    if-ne v1, v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 173
    :cond_3
    if-ne v1, v9, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 174
    :cond_4
    if-nez v0, :cond_2

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_2

    .line 176
    .end local v1           #c:C
    :cond_5
    if-eqz v0, :cond_6

    .line 177
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unbalanced brace in path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    :cond_6
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v2, v3, 0x1

    .line 181
    goto :goto_0

    .line 182
    .end local v0           #brace:I
    .end local v3           #j:I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 183
    .local v5, result:[Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 184
    return-object v5
.end method


# virtual methods
.method public getChild(I)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 61
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(J)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "segment"

    .prologue
    .line 65
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter

    .prologue
    .line 40
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 48
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, p1, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v1

    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IdentityCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/Path;

    .line 45
    if-eqz v0, :cond_0

    monitor-exit v1

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNewChild(J)Lcom/android/gallery3d/data/Path;
    .locals 3
    .parameter "segment"

    .prologue
    .line 69
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, temp:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Lcom/android/gallery3d/util/IdentityCache;

    invoke-direct {v2}, Lcom/android/gallery3d/util/IdentityCache;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    .line 73
    :cond_0
    new-instance v0, Lcom/android/gallery3d/data/Path;

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/data/Path;-><init>(Lcom/android/gallery3d/data/Path;Ljava/lang/String;)V

    .line 74
    .local v0, p:Lcom/android/gallery3d/data/Path;
    iget-object v2, p0, Lcom/android/gallery3d/data/Path;->mChildren:Lcom/android/gallery3d/util/IdentityCache;

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/util/IdentityCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v0
.end method

.method public getObject()Lcom/android/gallery3d/data/MediaObject;
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaObject;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParent()Lcom/android/gallery3d/data/Path;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    const-string v0, ""

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->getPrefixPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrefixPath()Lcom/android/gallery3d/data/Path;
    .locals 3

    .prologue
    .line 193
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-ne p0, v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 198
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    sget-object v2, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v0, v2, :cond_1

    .line 199
    iget-object p0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 201
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    return-object v0
.end method

.method public setObject(Lcom/android/gallery3d/data/MediaObject;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/gallery3d/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public split()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    const-class v2, Lcom/android/gallery3d/data/Path;

    monitor-enter v2

    .line 117
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    .line 118
    :goto_0
    :try_start_0
    sget-object v3, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq v0, v3, :cond_0

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 118
    iget-object v0, v0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    goto :goto_0

    .line 121
    :cond_0
    new-array v3, v1, [Ljava/lang/String;

    .line 122
    add-int/lit8 v0, v1, -0x1

    .line 123
    :goto_1
    sget-object v1, Lcom/android/gallery3d/data/Path;->sRoot:Lcom/android/gallery3d/data/Path;

    if-eq p0, v1, :cond_1

    .line 124
    add-int/lit8 v1, v0, -0x1

    iget-object v4, p0, Lcom/android/gallery3d/data/Path;->mSegment:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 123
    iget-object p0, p0, Lcom/android/gallery3d/data/Path;->mParent:Lcom/android/gallery3d/data/Path;

    move v0, v1

    goto :goto_1

    .line 126
    :cond_1
    monitor-exit v2

    return-object v3

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 93
    const-class v1, Lcom/android/gallery3d/data/Path;

    monitor-enter v1

    .line 94
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v3

    .line 96
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 97
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
