.class public Lcn/real/device/srtparser/SrtData;
.super Ljava/lang/Object;
.source "SrtData.java"


# instance fields
.field private SrtMaps:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/real/device/srtparser/SrtContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    .line 15
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    .line 16
    return-void
.end method


# virtual methods
.method public Insert(Lcn/real/device/srtparser/SrtContent;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 23
    if-nez p1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/real/device/srtparser/SrtContent;

    .line 26
    .local v2, temp:Lcn/real/device/srtparser/SrtContent;
    if-nez v2, :cond_2

    .line 27
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v2}, Lcn/real/device/srtparser/SrtContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, oldStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcn/real/device/srtparser/SrtContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, subTitle:Ljava/lang/StringBuffer;
    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcn/real/device/srtparser/SrtContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/real/device/srtparser/SrtContent;->SetSubTitle(Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public QueryNext(J)Lcn/real/device/srtparser/SrtContent;
    .locals 5
    .parameter "index"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, temp:Lcn/real/device/srtparser/SrtContent;
    const/4 v0, 0x0

    .line 46
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 48
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    .line 49
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    check-cast v1, Lcn/real/device/srtparser/SrtContent;

    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    move-object v2, v1

    .line 61
    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    .local v2, temp:Lcn/real/device/srtparser/SrtContent;
    :goto_0
    return-object v2

    .line 53
    .end local v2           #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    :cond_0
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    check-cast v1, Lcn/real/device/srtparser/SrtContent;

    .line 55
    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    invoke-virtual {v1}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-lez v3, :cond_2

    :cond_1
    :goto_1
    move-object v2, v1

    .line 61
    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v2       #temp:Lcn/real/device/srtparser/SrtContent;
    goto :goto_0

    .line 58
    .end local v2           #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    :cond_2
    const/4 v1, 0x0

    .line 52
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public QueryNextFromTemp(J)Lcn/real/device/srtparser/SrtContent;
    .locals 6
    .parameter "index"

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, temp:Lcn/real/device/srtparser/SrtContent;
    const/4 v0, 0x0

    .line 67
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    iget-object v3, p0, Lcn/real/device/srtparser/SrtData;->SrtMaps:Ljava/util/TreeMap;

    .line 69
    .local v3, tmpSrtMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/srtparser/SrtContent;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    check-cast v1, Lcn/real/device/srtparser/SrtContent;

    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    move-object v2, v1

    .line 83
    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    .end local v3           #tmpSrtMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/srtparser/SrtContent;>;"
    .local v2, temp:Lcn/real/device/srtparser/SrtContent;
    :goto_0
    return-object v2

    .line 75
    .end local v2           #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v3       #tmpSrtMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/srtparser/SrtContent;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    check-cast v1, Lcn/real/device/srtparser/SrtContent;

    .line 77
    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    invoke-virtual {v1}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    .end local v3           #tmpSrtMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/srtparser/SrtContent;>;"
    :cond_1
    :goto_1
    move-object v2, v1

    .line 83
    .end local v1           #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v2       #temp:Lcn/real/device/srtparser/SrtContent;
    goto :goto_0

    .line 80
    .end local v2           #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v1       #temp:Lcn/real/device/srtparser/SrtContent;
    .restart local v3       #tmpSrtMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/srtparser/SrtContent;>;"
    :cond_2
    const/4 v1, 0x0

    .line 74
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1
.end method
