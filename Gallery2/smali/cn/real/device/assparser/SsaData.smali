.class public Lcn/real/device/assparser/SsaData;
.super Ljava/lang/Object;
.source "SsaData.java"


# instance fields
.field private SsaDataMaps:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcn/real/device/assparser/SsaContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    .line 16
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    .line 17
    return-void
.end method


# virtual methods
.method public Insert(Lcn/real/device/assparser/SsaContent;)V
    .locals 6
    .parameter "dat"

    .prologue
    .line 24
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/real/device/assparser/SsaContent;->GetIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/real/device/assparser/SsaContent;

    .line 27
    .local v2, temp:Lcn/real/device/assparser/SsaContent;
    if-nez v2, :cond_2

    .line 28
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/real/device/assparser/SsaContent;->GetIndex()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcn/real/device/assparser/SsaContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, oldStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcn/real/device/assparser/SsaContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, subTitle:Ljava/lang/StringBuffer;
    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Lcn/real/device/assparser/SsaContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/real/device/assparser/SsaContent;->SetSubTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public QueryNext(J)Lcn/real/device/assparser/SsaContent;
    .locals 5
    .parameter "index"

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, temp:Lcn/real/device/assparser/SsaContent;
    const/4 v0, 0x0

    .line 45
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 47
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    .line 48
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    check-cast v1, Lcn/real/device/assparser/SsaContent;

    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    move-object v2, v1

    .line 60
    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    .local v2, temp:Lcn/real/device/assparser/SsaContent;
    :goto_0
    return-object v2

    .line 52
    .end local v2           #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    :cond_0
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    check-cast v1, Lcn/real/device/assparser/SsaContent;

    .line 54
    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    invoke-virtual {v1}, Lcn/real/device/assparser/SsaContent;->GetIndex()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-lez v3, :cond_2

    :cond_1
    :goto_1
    move-object v2, v1

    .line 60
    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v2       #temp:Lcn/real/device/assparser/SsaContent;
    goto :goto_0

    .line 57
    .end local v2           #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    :cond_2
    const/4 v1, 0x0

    .line 51
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public QueryNextFromTemp(J)Lcn/real/device/assparser/SsaContent;
    .locals 6
    .parameter "index"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, temp:Lcn/real/device/assparser/SsaContent;
    const/4 v0, 0x0

    .line 66
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    iget-object v3, p0, Lcn/real/device/assparser/SsaData;->SsaDataMaps:Ljava/util/TreeMap;

    .line 68
    .local v3, tmpSsaDataMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/assparser/SsaContent;>;"
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    check-cast v1, Lcn/real/device/assparser/SsaContent;

    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    move-object v2, v1

    .line 82
    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    .end local v3           #tmpSsaDataMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/assparser/SsaContent;>;"
    .local v2, temp:Lcn/real/device/assparser/SsaContent;
    :goto_0
    return-object v2

    .line 74
    .end local v2           #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v3       #tmpSsaDataMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/assparser/SsaContent;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    check-cast v1, Lcn/real/device/assparser/SsaContent;

    .line 76
    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    invoke-virtual {v1}, Lcn/real/device/assparser/SsaContent;->GetIndex()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    .end local v3           #tmpSsaDataMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/assparser/SsaContent;>;"
    :cond_1
    :goto_1
    move-object v2, v1

    .line 82
    .end local v1           #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v2       #temp:Lcn/real/device/assparser/SsaContent;
    goto :goto_0

    .line 79
    .end local v2           #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v1       #temp:Lcn/real/device/assparser/SsaContent;
    .restart local v3       #tmpSsaDataMaps:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Lcn/real/device/assparser/SsaContent;>;"
    :cond_2
    const/4 v1, 0x0

    .line 73
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1
.end method
