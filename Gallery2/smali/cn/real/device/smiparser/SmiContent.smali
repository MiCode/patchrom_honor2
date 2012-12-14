.class public Lcn/real/device/smiparser/SmiContent;
.super Ljava/lang/Object;
.source "SmiContent.java"


# instance fields
.field private mDuration:J

.field private mIndex:J

.field private mStyle:Ljava/lang/String;

.field private mSubTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "duration"
    .parameter "subtitle"
    .parameter "style"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcn/real/device/smiparser/SmiContent;->mDuration:J

    .line 14
    iput-wide p1, p0, Lcn/real/device/smiparser/SmiContent;->mIndex:J

    .line 15
    iput-wide p3, p0, Lcn/real/device/smiparser/SmiContent;->mDuration:J

    .line 16
    iput-object p5, p0, Lcn/real/device/smiparser/SmiContent;->mSubTitle:Ljava/lang/String;

    .line 17
    iput-object p6, p0, Lcn/real/device/smiparser/SmiContent;->mStyle:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public GetDuration()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcn/real/device/smiparser/SmiContent;->mDuration:J

    return-wide v0
.end method

.method public GetIndex()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcn/real/device/smiparser/SmiContent;->mIndex:J

    return-wide v0
.end method

.method public GetStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/real/device/smiparser/SmiContent;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public GetSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/real/device/smiparser/SmiContent;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public SetSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 37
    iput-object p1, p0, Lcn/real/device/smiparser/SmiContent;->mSubTitle:Ljava/lang/String;

    .line 38
    return-void
.end method
