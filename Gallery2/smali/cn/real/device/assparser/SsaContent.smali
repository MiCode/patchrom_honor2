.class public Lcn/real/device/assparser/SsaContent;
.super Ljava/lang/Object;
.source "SsaContent.java"


# instance fields
.field private mFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:J


# direct methods
.method constructor <init>(JLjava/util/HashMap;)V
    .locals 0
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcn/real/device/assparser/SsaContent;->mIndex:J

    .line 18
    iput-object p3, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    .line 19
    return-void
.end method


# virtual methods
.method public GetDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public GetIndex()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcn/real/device/assparser/SsaContent;->mIndex:J

    return-wide v0
.end method

.method public GetStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "style"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public GetSubTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public SetSubTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 38
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/real/device/assparser/SsaContent;->mFormat:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method
