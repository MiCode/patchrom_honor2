.class public Lcn/real/device/srtparser/SrtContent;
.super Ljava/lang/Object;
.source "SrtContent.java"


# instance fields
.field private mDuration:J

.field private mIndex:J

.field private mSubTitle:Ljava/lang/String;


# direct methods
.method constructor <init>([JLjava/lang/String;)V
    .locals 2
    .parameter "times"
    .parameter "subtitle"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcn/real/device/srtparser/SrtContent;->mIndex:J

    .line 14
    iput-object p2, p0, Lcn/real/device/srtparser/SrtContent;->mSubTitle:Ljava/lang/String;

    .line 15
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcn/real/device/srtparser/SrtContent;->mDuration:J

    .line 16
    return-void
.end method


# virtual methods
.method public GetDuration()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcn/real/device/srtparser/SrtContent;->mDuration:J

    return-wide v0
.end method

.method public GetIndex()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcn/real/device/srtparser/SrtContent;->mIndex:J

    return-wide v0
.end method

.method public GetSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/real/device/srtparser/SrtContent;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public SetSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 31
    iput-object p1, p0, Lcn/real/device/srtparser/SrtContent;->mSubTitle:Ljava/lang/String;

    .line 32
    return-void
.end method
