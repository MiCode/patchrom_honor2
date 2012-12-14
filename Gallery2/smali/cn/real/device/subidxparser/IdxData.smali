.class public Lcn/real/device/subidxparser/IdxData;
.super Ljava/lang/Object;
.source "IdxData.java"


# instance fields
.field private IdxMaps:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/real/device/subidxparser/IdxContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    .line 12
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    .line 13
    return-void
.end method


# virtual methods
.method public QueryNext(J)Lcn/real/device/subidxparser/IdxContent;
    .locals 5
    .parameter "index"

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, temp:Lcn/real/device/subidxparser/IdxContent;
    const/4 v0, 0x0

    .line 24
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 25
    iget-object v3, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 26
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    .line 27
    iget-object v3, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    check-cast v1, Lcn/real/device/subidxparser/IdxContent;

    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    move-object v2, v1

    .line 39
    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    .local v2, temp:Lcn/real/device/subidxparser/IdxContent;
    :goto_0
    return-object v2

    .line 31
    .end local v2           #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    :cond_0
    iget-object v3, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    check-cast v1, Lcn/real/device/subidxparser/IdxContent;

    .line 33
    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    invoke-virtual {v1}, Lcn/real/device/subidxparser/IdxContent;->GetIndex()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-lez v3, :cond_2

    :cond_1
    :goto_1
    move-object v2, v1

    .line 39
    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v2       #temp:Lcn/real/device/subidxparser/IdxContent;
    goto :goto_0

    .line 36
    .end local v2           #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    :cond_2
    const/4 v1, 0x0

    .line 30
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public QueryNextFromTemp(J)Lcn/real/device/subidxparser/IdxContent;
    .locals 6
    .parameter "index"

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, temp:Lcn/real/device/subidxparser/IdxContent;
    const/4 v0, 0x0

    .line 45
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 46
    iget-object v3, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    .line 47
    .local v3, tmpIdxMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/subidxparser/IdxContent;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    check-cast v1, Lcn/real/device/subidxparser/IdxContent;

    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    move-object v2, v1

    .line 61
    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    .end local v3           #tmpIdxMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/subidxparser/IdxContent;>;"
    .local v2, temp:Lcn/real/device/subidxparser/IdxContent;
    :goto_0
    return-object v2

    .line 53
    .end local v2           #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v3       #tmpIdxMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/subidxparser/IdxContent;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    check-cast v1, Lcn/real/device/subidxparser/IdxContent;

    .line 55
    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    invoke-virtual {v1}, Lcn/real/device/subidxparser/IdxContent;->GetIndex()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    .end local v3           #tmpIdxMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/subidxparser/IdxContent;>;"
    :cond_1
    :goto_1
    move-object v2, v1

    .line 61
    .end local v1           #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v2       #temp:Lcn/real/device/subidxparser/IdxContent;
    goto :goto_0

    .line 58
    .end local v2           #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v1       #temp:Lcn/real/device/subidxparser/IdxContent;
    .restart local v3       #tmpIdxMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/subidxparser/IdxContent;>;"
    :cond_2
    const/4 v1, 0x0

    .line 52
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1
.end method

.method public insert(Lcn/real/device/subidxparser/IdxContent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 18
    iget-object v0, p0, Lcn/real/device/subidxparser/IdxData;->IdxMaps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/real/device/subidxparser/IdxContent;->GetIndex()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
