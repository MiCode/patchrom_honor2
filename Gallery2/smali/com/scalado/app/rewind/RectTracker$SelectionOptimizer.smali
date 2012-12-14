.class Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionOptimizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    }
.end annotation


# instance fields
.field private MAX_COST:F

.field private mCandidates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBgIndex:I

.field private mEndReached:Z

.field private mNumPossibilities:I

.field private mWorkPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 2432
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2425
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    .line 2426
    const v0, 0x3d75c28f

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->MAX_COST:F

    .line 2430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2440
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;Lcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2421
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;-><init>(Lcom/scalado/app/rewind/RectTracker;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2421
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimize()V

    return-void
.end method

.method static synthetic access$4800(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2421
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2421
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    return v0
.end method

.method private eval()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2508
    new-instance v5, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    const/4 v8, 0x0

    invoke-direct {v5, p0, v7, v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;ILcom/scalado/app/rewind/RectTracker$1;)V

    .line 2509
    .local v5, selection:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    const/4 v6, 0x0

    .line 2510
    .local v6, sumCost:F
    const/4 v3, 0x0

    .line 2511
    .local v3, maxCost:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2512
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2513
    .local v1, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7900(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    if-ne v7, v8, :cond_0

    .line 2514
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    iget v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    aput v8, v7, v2

    .line 2515
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    .line 2516
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8402(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)Z

    .line 2511
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2519
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 2522
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    const/4 v8, -0x1

    aput v8, v7, v2

    .line 2523
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v10, v7, v2

    .line 2524
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8402(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)Z

    goto :goto_1

    .line 2535
    :cond_1
    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7900(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    invoke-direct {p0, v1, v7, v8}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->getCost(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)F

    move-result v0

    .line 2536
    .local v0, curCost:F
    cmpg-float v7, v0, v10

    if-gez v7, :cond_2

    .line 2537
    #setter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z
    invoke-static {v5, v9}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$8702(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;Z)Z

    .line 2539
    const/high16 v0, 0x42c8

    .line 2543
    :goto_2
    add-float/2addr v6, v0

    .line 2544
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2545
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F

    move-result-object v7

    aput v0, v7, v2

    .line 2546
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I

    move-result-object v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7900(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)I

    move-result v8

    aput v8, v7, v2

    goto :goto_1

    .line 2541
    :cond_2
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v1, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8402(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)Z

    goto :goto_2

    .line 2551
    .end local v0           #curCost:F
    .end local v1           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    :cond_3
    #setter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5102(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;F)F

    .line 2553
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2554
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2572
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_8

    .line 2573
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 2556
    :cond_5
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v2

    .line 2557
    :goto_4
    if-lez v2, :cond_6

    .line 2558
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    .line 2563
    :cond_6
    const/4 v7, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2564
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v7, v5, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 2565
    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 2566
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;

    .line 2567
    .local v4, pone:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v7

    #getter for: Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 2568
    const-string v7, "Muppet!"

    #calls: Lcom/scalado/app/rewind/RectTracker;->logd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$8800(Ljava/lang/String;)V

    goto :goto_3

    .line 2561
    .end local v4           #pone:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 2575
    :cond_8
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2576
    return-void
.end method

.method private getCost(Lcom/scalado/app/rewind/RectTracker$AbstractFace;II)F
    .locals 16
    .parameter "face"
    .parameter "bg"
    .parameter "fg"

    .prologue
    .line 2579
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 2580
    const/4 v4, 0x0

    .line 2622
    :cond_0
    :goto_0
    return v4

    .line 2582
    :cond_1
    const/4 v4, 0x0

    .line 2583
    .local v4, curCost:F
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2584
    .local v12, start:I
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2585
    .local v5, end:I
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mLockedWith:Ljava/util/Vector;
    invoke-static/range {p1 .. p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v14

    if-nez v14, :cond_6

    .line 2586
    move v8, v12

    .local v8, i:I
    :goto_1
    if-gt v8, v5, :cond_4

    .line 2587
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static/range {p1 .. p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v14

    aget-object v13, v14, v8

    .line 2588
    .local v13, tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v13, :cond_2

    .line 2589
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2591
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z
    invoke-static {v13, v14}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$8900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 2592
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2594
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v4, v14

    .line 2586
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2596
    .end local v13           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    invoke-static {v0, v1, v2, v14}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9000(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 2597
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2599
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v4, v14

    goto :goto_0

    .line 2601
    .end local v8           #i:I
    :cond_6
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->getAllLocked()[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    invoke-static/range {p1 .. p1}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9100(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    move-result-object v7

    .line 2602
    .local v7, faces:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/high16 v4, -0x4080

    .line 2603
    move-object v3, v7

    .local v3, arr$:[Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_0

    aget-object v10, v3, v9

    .line 2604
    .local v10, iterFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v6, 0x0

    .line 2605
    .local v6, faceCost:F
    move v8, v12

    .restart local v8       #i:I
    :goto_3
    if-gt v8, v5, :cond_9

    .line 2606
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mInstances:[Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    invoke-static {v10}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$2400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    move-result-object v14

    aget-object v13, v14, v8

    .line 2607
    .restart local v13       #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    if-nez v13, :cond_7

    .line 2608
    const/high16 v4, -0x4080

    goto :goto_0

    .line 2610
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    #calls: Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z
    invoke-static {v13, v14}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->access$8900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 2611
    const/high16 v4, -0x4080

    goto/16 :goto_0

    .line 2613
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v6, v14

    .line 2605
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2615
    .end local v13           #tr:Lcom/scalado/app/rewind/RectTracker$TrackedRect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    move/from16 v0, p2

    move/from16 v1, p3

    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->absoluteRelativeDist(IILandroid/graphics/PointF;)Z
    invoke-static {v10, v0, v1, v14}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$9000(Lcom/scalado/app/rewind/RectTracker$AbstractFace;IILandroid/graphics/PointF;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 2616
    const/high16 v4, -0x4080

    goto/16 :goto_0

    .line 2618
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mWorkPoint:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-float/2addr v6, v14

    .line 2619
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2603
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method private optimize()V
    .locals 10

    .prologue
    const v8, 0x186a0

    const/4 v9, 0x0

    .line 2443
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    .line 2444
    new-instance v5, Ljava/util/Vector;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/util/Vector;-><init>(I)V

    iput-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCandidates:Ljava/util/Vector;

    .line 2445
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2446
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    const/4 v5, -0x1

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v5}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7902(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)I

    .line 2447
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mAllSame:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6400(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2450
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6500(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v5, v6

    .line 2452
    .local v4, rank:Lcom/scalado/app/rewind/RectTracker$RankedId;
    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$8000(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2453
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v4, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 2454
    .local v3, img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->addPossibility(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    invoke-static {v0, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8100(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    .line 2456
    .end local v3           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_1
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x2

    .line 2458
    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6500(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6500(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v6

    aget-object v6, v6, v1

    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->isGoodEnoughEqual(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z
    invoke-static {v5, v6}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$8200(Lcom/scalado/app/rewind/RectTracker$RankedId;Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2460
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mRanked:[Lcom/scalado/app/rewind/RectTracker$RankedId;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$6500(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)[Lcom/scalado/app/rewind/RectTracker$RankedId;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-object v4, v5, v6

    .line 2461
    iget-object v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v5

    iget v6, v4, Lcom/scalado/app/rewind/RectTracker$RankedId;->mImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    .line 2462
    .restart local v3       #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    #calls: Lcom/scalado/app/rewind/RectTracker$RankedId;->hasNoRealibleInfo()Z
    invoke-static {v4}, Lcom/scalado/app/rewind/RectTracker$RankedId;->access$8000(Lcom/scalado/app/rewind/RectTracker$RankedId;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2463
    #calls: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->addPossibility(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    invoke-static {v0, v3}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8100(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Lcom/scalado/app/rewind/RectTracker$TrackedImage;)V

    .line 2465
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2467
    .end local v3           #img:Lcom/scalado/app/rewind/RectTracker$TrackedImage;
    :cond_3
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2468
    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    .line 2470
    :cond_4
    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCanReplace:Z
    invoke-static {v0, v9}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8402(Lcom/scalado/app/rewind/RectTracker$AbstractFace;Z)Z

    goto/16 :goto_0

    .line 2472
    .end local v0           #face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .end local v1           #i:I
    .end local v4           #rank:Lcom/scalado/app/rewind/RectTracker$RankedId;
    :cond_5
    iget v5, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mNumPossibilities:I

    if-le v5, v8, :cond_6

    .line 2473
    const-string v5, "%s failed, # possibilites > "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/scalado/app/rewind/RectTracker;->logw(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/scalado/app/rewind/RectTracker;->access$8500(Ljava/lang/String;)V

    .line 2475
    iput-boolean v9, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mEndReached:Z

    .line 2479
    :goto_2
    return-void

    .line 2478
    :cond_6
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeBg()V

    goto :goto_2
.end method

.method private optimizeBg()V
    .locals 2

    .prologue
    .line 2482
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v1}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2483
    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->mCurBgIndex:I

    .line 2484
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    .line 2482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2486
    :cond_0
    return-void
.end method

.method private optimizeFace(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 2489
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 2490
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->eval()V

    .line 2505
    :cond_0
    :goto_0
    return-void

    .line 2493
    :cond_1
    iget-object v2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    .line 2494
    .local v0, face:Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2495
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    .line 2496
    :cond_2
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2497
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1300(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7902(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)I

    .line 2498
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    goto :goto_0

    .line 2500
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2501
    #getter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mPossibilities:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$8300(Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scalado/app/rewind/RectTracker$TrackedImage;

    #getter for: Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I
    invoke-static {v2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->access$1300(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I

    move-result v2

    #setter for: Lcom/scalado/app/rewind/RectTracker$AbstractFace;->mCurImgIndex:I
    invoke-static {v0, v2}, Lcom/scalado/app/rewind/RectTracker$AbstractFace;->access$7902(Lcom/scalado/app/rewind/RectTracker$AbstractFace;I)I

    .line 2502
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->optimizeFace(I)V

    .line 2500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
