.class Lcom/scalado/app/rewind/RectTracker$RankedId;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankedId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mImageIndex:I

.field mKnownRect:Z

.field mScore:F

.field mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "score"
    .parameter "trackedRect"

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 2176
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    .line 2177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    .line 2178
    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2179
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 2166
    invoke-direct/range {p0 .. p5}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V
    .locals 1
    .parameter
    .parameter "imageIndex"
    .parameter "id"
    .parameter "score"
    .parameter "trackedRect"
    .parameter "knownRect"

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2183
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    .line 2184
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mScore:F

    .line 2185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mKnownRect:Z

    .line 2186
    iput-object p5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 2187
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;ZLcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 2166
    invoke-direct/range {p0 .. p6}, Lcom/scalado/app/rewind/RectTracker$RankedId;-><init>(Lcom/scalado/app/rewind/RectTracker;IIFLcom/scalado/app/rewind/RectTracker$TrackedRect;Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2166
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v0

    return v0
.end method

.method private compareByBlink(Lcom/scalado/app/rewind/RectTracker$RankedId;)I
    .locals 7
    .parameter "them"

    .prologue
    const/16 v6, 0x5a

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2227
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 2228
    .local v0, myBlink:I
    iget-object v5, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    .line 2230
    .local v1, theirBlink:I
    if-ne v0, v4, :cond_1

    if-ne v1, v4, :cond_1

    .line 2266
    :cond_0
    :goto_0
    return v2

    .line 2232
    :cond_1
    if-ne v0, v4, :cond_2

    move v2, v3

    .line 2233
    goto :goto_0

    .line 2234
    :cond_2
    if-ne v1, v4, :cond_3

    move v2, v4

    .line 2235
    goto :goto_0

    .line 2238
    :cond_3
    if-lt v0, v6, :cond_4

    if-ge v1, v6, :cond_0

    .line 2240
    :cond_4
    if-lt v0, v6, :cond_5

    move v2, v4

    .line 2241
    goto :goto_0

    .line 2242
    :cond_5
    if-lt v1, v6, :cond_6

    move v2, v3

    .line 2243
    goto :goto_0

    .line 2247
    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_0

    .line 2249
    :cond_7
    if-nez v0, :cond_8

    move v2, v4

    .line 2250
    goto :goto_0

    .line 2251
    :cond_8
    if-nez v1, :cond_9

    move v2, v3

    .line 2252
    goto :goto_0

    .line 2256
    :cond_9
    sub-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 2261
    if-ge v0, v1, :cond_a

    move v2, v3

    .line 2262
    goto :goto_0

    .line 2263
    :cond_a
    if-eq v0, v1, :cond_0

    move v2, v4

    .line 2266
    goto :goto_0
.end method

.method private compareBySmile(Lcom/scalado/app/rewind/RectTracker$RankedId;)I
    .locals 3
    .parameter "them"

    .prologue
    .line 2271
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    .line 2272
    .local v0, mySmile:I
    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    .line 2275
    .local v1, theirSmile:I
    if-ge v0, v1, :cond_0

    .line 2276
    const/4 v2, -0x1

    .line 2280
    :goto_0
    return v2

    .line 2277
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2278
    const/4 v2, 0x0

    goto :goto_0

    .line 2280
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private goodEnoughBlink()Z
    .locals 2

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goodEnoughSmile()Z
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNoRealibleInfo()Z
    .locals 1

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExactlyEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 3
    .parameter "them"

    .prologue
    const/4 v0, 0x1

    .line 2285
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2288
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v1

    iget-object v2, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    .locals 4
    .parameter "them"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2293
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2305
    :cond_0
    :goto_0
    return v0

    .line 2296
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 2300
    :cond_2
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughBlink()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->goodEnoughSmile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2302
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v2

    iget-object v3, p1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I
    invoke-static {v3}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2305
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 2190
    move-object v1, p1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$RankedId;

    .line 2193
    .local v1, them:Lcom/scalado/app/rewind/RectTracker$RankedId;
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_1

    .line 2223
    :cond_0
    :goto_0
    return v0

    .line 2195
    :cond_1
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_2

    move v0, v2

    .line 2196
    goto :goto_0

    .line 2197
    :cond_2
    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    if-nez v4, :cond_3

    move v0, v3

    .line 2198
    goto :goto_0

    .line 2200
    :cond_3
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2202
    :cond_4
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 2203
    goto :goto_0

    .line 2204
    :cond_5
    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_6

    move v0, v3

    .line 2205
    goto :goto_0

    .line 2209
    :cond_6
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2212
    :cond_7
    iget-object v4, p0, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 2213
    goto :goto_0

    .line 2214
    :cond_8
    iget-object v2, v1, Lcom/scalado/app/rewind/RectTracker$RankedId;->mTrackedRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$7200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v3

    .line 2215
    goto :goto_0

    .line 2218
    :cond_9
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->compareByBlink(Lcom/scalado/app/rewind/RectTracker$RankedId;)I

    move-result v0

    .line 2219
    .local v0, blinkRes:I
    if-nez v0, :cond_0

    .line 2223
    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$RankedId;->compareBySmile(Lcom/scalado/app/rewind/RectTracker$RankedId;)I

    move-result v0

    goto :goto_0
.end method
