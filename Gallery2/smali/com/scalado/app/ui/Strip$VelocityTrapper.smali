.class Lcom/scalado/app/ui/Strip$VelocityTrapper;
.super Ljava/lang/Object;
.source "Strip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/Strip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VelocityTrapper"
.end annotation


# instance fields
.field private mAdded:J

.field private mDeltas:[F

.field private mTimeThreshold:J

.field private mTimes:[J

.field private mTotDist:F

.field private mTotTime:J

.field final synthetic this$0:Lcom/scalado/app/ui/Strip;


# direct methods
.method private constructor <init>(Lcom/scalado/app/ui/Strip;IJ)V
    .locals 2
    .parameter
    .parameter "size"
    .parameter "timeThreshold"

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->this$0:Lcom/scalado/app/ui/Strip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimeThreshold:J

    .line 1370
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    .line 1371
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    .line 1372
    iput-wide p3, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimeThreshold:J

    .line 1373
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->reset()V

    .line 1374
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/ui/Strip;IJLcom/scalado/app/ui/Strip$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1361
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/ui/Strip$VelocityTrapper;-><init>(Lcom/scalado/app/ui/Strip;IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/scalado/app/ui/Strip$VelocityTrapper;FJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1361
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->add(FJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/scalado/app/ui/Strip$VelocityTrapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1361
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->reset()V

    return-void
.end method

.method static synthetic access$500(Lcom/scalado/app/ui/Strip$VelocityTrapper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->get()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/scalado/app/ui/Strip$VelocityTrapper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1361
    invoke-direct {p0}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->totalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/scalado/app/ui/Strip$VelocityTrapper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1361
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/ui/Strip$VelocityTrapper;->start(J)V

    return-void
.end method

.method private add(FJ)V
    .locals 7
    .parameter "delta"
    .parameter "t"

    .prologue
    const/4 v5, 0x0

    .line 1389
    iget-object v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    iget-object v2, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 1389
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1392
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    aput p1, v1, v5

    .line 1393
    iget-object v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-lez v0, :cond_1

    .line 1394
    iget-object v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    iget-object v2, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    add-int/lit8 v3, v0, -0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 1393
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1396
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    aput-wide p2, v1, v5

    .line 1397
    iget-wide v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mAdded:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mAdded:J

    .line 1398
    iget v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotDist:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotDist:F

    .line 1399
    iget-wide v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotTime:J

    iget-object v3, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    aget-wide v3, v3, v5

    iget-object v5, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotTime:J

    .line 1400
    return-void
.end method

.method private get()F
    .locals 13

    .prologue
    .line 1403
    iget-wide v8, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mAdded:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1404
    const/4 v7, 0x0

    .line 1424
    :cond_0
    :goto_0
    return v7

    .line 1406
    :cond_1
    const/4 v2, 0x0

    .line 1407
    .local v2, delta:F
    const-wide/16 v5, 0x0

    .line 1408
    .local v5, tDiff:J
    const/4 v7, 0x0

    .line 1409
    .local v7, v:F
    iget-wide v8, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mAdded:J

    iget-object v10, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    array-length v10, v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    .line 1411
    .local v4, n:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1412
    iget-object v8, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    iget-object v10, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    add-int/lit8 v11, v3, 0x1

    aget-wide v10, v10, v11

    sub-long v0, v8, v10

    .line 1413
    .local v0, d:J
    iget-wide v8, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimeThreshold:J

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 1420
    .end local v0           #d:J
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-nez v8, :cond_0

    .line 1421
    const/4 v7, 0x0

    goto :goto_0

    .line 1416
    .restart local v0       #d:J
    :cond_3
    move-wide v5, v0

    .line 1417
    iget-object v8, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    aget v8, v8, v3

    add-float/2addr v2, v8

    .line 1418
    iget-object v8, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    aget v8, v8, v3

    iget-object v9, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    aget-wide v9, v9, v3

    iget-object v11, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    add-int/lit8 v12, v3, 0x1

    aget-wide v11, v11, v12

    sub-long/2addr v9, v11

    long-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 1411
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1377
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mDeltas:[F

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 1378
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 1379
    iput-wide v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mAdded:J

    .line 1380
    iput v3, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotDist:F

    .line 1381
    iput-wide v1, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotTime:J

    .line 1382
    return-void
.end method

.method private start(J)V
    .locals 2
    .parameter "t"

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTimes:[J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 1386
    return-void
.end method

.method private totalTime()J
    .locals 2

    .prologue
    .line 1429
    iget-wide v0, p0, Lcom/scalado/app/ui/Strip$VelocityTrapper;->mTotTime:J

    return-wide v0
.end method
