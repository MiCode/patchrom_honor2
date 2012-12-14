.class Lcom/scalado/app/rewind/RewindSession$LTWParams;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LTWParams"
.end annotation


# instance fields
.field private mBgIndex:I

.field private mBoundary:Lcom/scalado/base/Rect;

.field private mFeathering:I

.field private mFgIndex:I

.field private mMaxTranslation:I

.field private mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

.field private mRectSet:Z

.field private mValid:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    .line 1003
    iput v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    .line 1004
    iput v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    .line 1006
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    .line 1007
    iput-boolean v2, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/scalado/app/rewind/RewindSession$LTWParams;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/scalado/app/rewind/RewindSession$LTWParams;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mValid:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/scalado/app/rewind/RewindSession$LTWParams;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$LTWParams;->copyFrom(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    return v0
.end method

.method static synthetic access$402(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    return p1
.end method

.method static synthetic access$500(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    return v0
.end method

.method static synthetic access$502(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    return p1
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/RewindSession$LTWParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/scalado/app/rewind/RewindSession$LTWParams;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/RewindSession$LTWParams;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    return v0
.end method

.method static synthetic access$902(Lcom/scalado/app/rewind/RewindSession$LTWParams;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    return p1
.end method

.method private copyFrom(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    .locals 2
    .parameter "srcParams"

    .prologue
    .line 1010
    iget-boolean v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    .line 1011
    iget-object v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    #calls: Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindSession;->access$2600(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1012
    iget v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    .line 1013
    iget v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    .line 1014
    iget v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    .line 1015
    iget v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    iput v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    .line 1016
    iget-object v0, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    .line 1017
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1020
    instance-of v3, p1, Lcom/scalado/app/rewind/RewindSession$LTWParams;

    if-nez v3, :cond_1

    move v1, v2

    .line 1029
    :cond_0
    :goto_0
    return v1

    .line 1024
    :cond_1
    if-eq p0, p1, :cond_0

    move-object v0, p1

    .line 1028
    check-cast v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;

    .line 1029
    .local v0, p:Lcom/scalado/app/rewind/RewindSession$LTWParams;
    iget-boolean v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    iget-object v4, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    invoke-virtual {v3, v4}, Lcom/scalado/base/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    if-nez v3, :cond_4

    :cond_3
    iget v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    iget v4, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    iget v4, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    iget v4, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    iget v4, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    iget-object v4, v0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mPrio:Lcom/scalado/caps/localtimewarp/LocalTimeWarp$Priority;

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1040
    const-string v1, "Params {bg=%d, fg=%d, "

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBgIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFgIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, str:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mRectSet:Z

    if-eqz v1, :cond_0

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Rect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mBoundary:Lcom/scalado/base/Rect;

    invoke-static {v2}, Lcom/scalado/app/rewind/Geom;->rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", feathering=%d, maxTransl.=%d}"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mFeathering:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/scalado/app/rewind/RewindSession$LTWParams;->mMaxTranslation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    return-object v0

    .line 1045
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Rect=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
