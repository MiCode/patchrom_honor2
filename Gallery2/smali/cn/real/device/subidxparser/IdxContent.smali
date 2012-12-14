.class public Lcn/real/device/subidxparser/IdxContent;
.super Ljava/lang/Object;
.source "IdxContent.java"


# instance fields
.field private mFilePos:J

.field private mIndex:J


# direct methods
.method constructor <init>(JJ)V
    .locals 2
    .parameter "mIndex"
    .parameter "mFilePos"

    .prologue
    const-wide/16 v0, -0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide v0, p0, Lcn/real/device/subidxparser/IdxContent;->mIndex:J

    .line 6
    iput-wide v0, p0, Lcn/real/device/subidxparser/IdxContent;->mFilePos:J

    .line 9
    iput-wide p1, p0, Lcn/real/device/subidxparser/IdxContent;->mIndex:J

    .line 10
    iput-wide p3, p0, Lcn/real/device/subidxparser/IdxContent;->mFilePos:J

    .line 11
    return-void
.end method


# virtual methods
.method public GetFilePos()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcn/real/device/subidxparser/IdxContent;->mFilePos:J

    return-wide v0
.end method

.method public GetIndex()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcn/real/device/subidxparser/IdxContent;->mIndex:J

    return-wide v0
.end method
