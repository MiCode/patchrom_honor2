.class Lcom/scalado/app/rewind/RectTracker$TrackedRect;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedRect"
.end annotation


# instance fields
.field private mBlink:I

.field private mEnlargedRect:Landroid/graphics/Rect;

.field private mEyes:[Landroid/graphics/Rect;

.field private mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

.field private mHasSmileBlink:Z

.field private mId:I

.field private mImage:I

.field private mLockedWith:Z

.field private mNeighbours:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field private mOrgEnlargedRect:Landroid/graphics/Rect;

.field private mRank:I

.field private mRect:Landroid/graphics/Rect;

.field private mRelDeltaNext:Landroid/graphics/PointF;

.field private mRelDeltaPrev:Landroid/graphics/PointF;

.field private mScore:F

.field private mSessionRect:Landroid/graphics/Rect;

.field private mSmile:I

.field private mSupersededBlink:I

.field private mSupersededHasRect:Z

.field private mSupersededHasSmileBlink:Z

.field private mSupersededIsDontCare:Z

.field private mSupersededSmile:I

.field private mUsed:Z

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;)V
    .locals 2
    .parameter
    .parameter "image"
    .parameter "id"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2692
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2673
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    .line 2674
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    .line 2675
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2685
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    .line 2690
    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededIsDontCare:Z

    .line 2693
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    .line 2694
    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    .line 2695
    if-eqz p4, :cond_0

    .line 2696
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    .line 2700
    :goto_0
    iput v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    .line 2701
    return-void

    .line 2698
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;Lcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2666
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;-><init>(Lcom/scalado/app/rewind/RectTracker;IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2666
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->setSmileBlink(II)V

    return-void
.end method

.method static synthetic access$10900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z

    return v0
.end method

.method static synthetic access$10902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mUsed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEnlargedRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mOrgEnlargedRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    return v0
.end method

.method static synthetic access$2000(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return v0
.end method

.method static synthetic access$2002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRank:I

    return p1
.end method

.method static synthetic access$2500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    return v0
.end method

.method static synthetic access$2700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    return v0
.end method

.method static synthetic access$4500(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$AbstractFace;)Lcom/scalado/app/rewind/RectTracker$AbstractFace;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mFace:Lcom/scalado/app/rewind/RectTracker$AbstractFace;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    return p1
.end method

.method static synthetic access$6002(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I

    return p1
.end method

.method static synthetic access$6102(Lcom/scalado/app/rewind/RectTracker$TrackedRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I

    return p1
.end method

.method static synthetic access$6202(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    return p1
.end method

.method static synthetic access$6302(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F

    return v0
.end method

.method static synthetic access$6602(Lcom/scalado/app/rewind/RectTracker$TrackedRect;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mScore:F

    return p1
.end method

.method static synthetic access$6700(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->computeScore()F

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSessionRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasRect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->hasSmileBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->blink()I

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    invoke-direct {p0}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->smile()I

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;Landroid/graphics/PointF;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->translationRelativeToBg(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2666
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/scalado/app/rewind/RectTracker$TrackedRect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mEyes:[Landroid/graphics/Rect;

    return-object p1
.end method

.method private addNeighbour(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1
    .parameter "neighbour"

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 2789
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    .line 2791
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mNeighbours:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2792
    return-void
.end method

.method private blink()I
    .locals 1

    .prologue
    .line 2718
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2719
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    .line 2721
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededBlink:I

    goto :goto_0
.end method

.method private computeScore()F
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    .line 2742
    const/4 v0, 0x0

    .line 2743
    .local v0, score:F
    iget-boolean v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    if-eqz v1, :cond_5

    .line 2744
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    if-ne v1, v5, :cond_1

    .line 2745
    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$9200()F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 2763
    :goto_0
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    if-ne v1, v5, :cond_4

    .line 2784
    :cond_0
    :goto_1
    return v0

    .line 2746
    :cond_1
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    if-nez v1, :cond_2

    .line 2747
    const/high16 v1, -0x4000

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$9200()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2755
    :cond_2
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    const/16 v2, 0x3c

    if-lt v1, v2, :cond_3

    .line 2758
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$9200()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2760
    :cond_3
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float v1, v3, v1

    invoke-static {}, Lcom/scalado/app/rewind/RectTracker;->access$9200()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 2765
    :cond_4
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    if-eqz v1, :cond_0

    .line 2768
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_1

    .line 2782
    :cond_5
    const/high16 v0, -0x3f80

    goto :goto_1
.end method

.method private hasRect()Z
    .locals 1

    .prologue
    .line 2734
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_1

    .line 2735
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2737
    :goto_0
    return v0

    .line 2735
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2737
    :cond_1
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasRect:Z

    goto :goto_0
.end method

.method private hasSmileBlink()Z
    .locals 1

    .prologue
    .line 2726
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2727
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2729
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededHasSmileBlink:Z

    goto :goto_0
.end method

.method private setSmileBlink(II)V
    .locals 1
    .parameter "smile"
    .parameter "blink"

    .prologue
    .line 2704
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    .line 2705
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mBlink:I

    .line 2706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mHasSmileBlink:Z

    .line 2707
    return-void
.end method

.method private smile()I
    .locals 1

    .prologue
    .line 2710
    iget-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mLockedWith:Z

    if-nez v0, :cond_0

    .line 2711
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSmile:I

    .line 2713
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mSupersededSmile:I

    goto :goto_0
.end method

.method private translationRelativeToBg(Landroid/graphics/PointF;)Z
    .locals 11
    .parameter "point"

    .prologue
    const/4 v8, 0x0

    const/high16 v10, 0x3f80

    .line 2795
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRect:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    move v7, v8

    .line 2824
    :goto_0
    return v7

    .line 2798
    :cond_0
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7600(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 2799
    .local v5, fdw:F
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFaceDetectionDims:Lcom/scalado/base/Size;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$7600(Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/base/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v4, v7

    .line 2800
    .local v4, fdh:F
    const/4 v0, 0x0

    .line 2801
    .local v0, dx:F
    const/4 v2, 0x0

    .line 2802
    .local v2, dy:F
    const/4 v1, 0x0

    .line 2803
    .local v1, dxVft:F
    const/4 v3, 0x0

    .line 2804
    .local v3, dyVft:F
    const/4 v6, 0x0

    .line 2805
    .local v6, n:F
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, 0x1

    iget-object v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mImages:Ljava/util/Vector;
    invoke-static {v9}, Lcom/scalado/app/rewind/RectTracker;->access$7500(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 2806
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    .line 2807
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaNext:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    .line 2808
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$9300(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 2809
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$9300(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 2810
    add-float/2addr v6, v10

    .line 2812
    :cond_1
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    .line 2813
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v0, v7

    .line 2814
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mRelDeltaPrev:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v2, v7

    .line 2815
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$9300(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDx:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$300(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v1, v7

    .line 2816
    iget-object v7, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mVftDeltas:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker;->access$9300(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v7

    iget v9, p0, Lcom/scalado/app/rewind/RectTracker$TrackedRect;->mImage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;

    #getter for: Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->mDy:F
    invoke-static {v7}, Lcom/scalado/app/rewind/RectTracker$StatisticPoint;->access$400(Lcom/scalado/app/rewind/RectTracker$StatisticPoint;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v3, v7

    .line 2817
    add-float/2addr v6, v10

    .line 2819
    :cond_2
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 2820
    sub-float v7, v0, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v5, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->x:F

    .line 2821
    sub-float v7, v2, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v8, v4, v6

    div-float/2addr v7, v8

    iput v7, p1, Landroid/graphics/PointF;->y:F

    .line 2822
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    move v7, v8

    .line 2824
    goto/16 :goto_0
.end method
