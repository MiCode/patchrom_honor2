.class public Landroid/content/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static add(Ljava/lang/String;Landroid/content/IconCache$CacheEntry;)V
    .locals 2
    .parameter "idAndPackageName"
    .parameter "entry"

    .prologue
    .line 37
    sget-object v1, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    monitor-exit v1

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "idAndPackageName"

    .prologue
    .line 45
    sget-object v1, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get(Ljava/lang/String;)Landroid/content/IconCache$CacheEntry;
    .locals 2
    .parameter "idAndPackageName"

    .prologue
    .line 51
    sget-object v1, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Landroid/content/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IconCache$CacheEntry;

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
