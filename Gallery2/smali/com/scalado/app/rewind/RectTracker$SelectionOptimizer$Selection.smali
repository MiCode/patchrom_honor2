.class Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Selection"
.end annotation


# instance fields
.field private mBg:I

.field private mCost:F

.field private mCosts:[F

.field private mSelecteddImages:[I

.field private mUnreliable:Z

.field final synthetic this$1:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;I)V
    .locals 1
    .parameter
    .parameter "bg"

    .prologue
    .line 2658
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->this$1:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2654
    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F

    .line 2656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z

    .line 2659
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I

    .line 2660
    iget-object v0, p1, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I

    .line 2661
    iget-object v0, p1, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->this$0:Lcom/scalado/app/rewind/RectTracker;

    #getter for: Lcom/scalado/app/rewind/RectTracker;->mFilteredFaces:Ljava/util/Vector;
    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->access$7800(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F

    .line 2662
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;ILcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2651
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2651
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I

    return v0
.end method

.method static synthetic access$5100(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2651
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F

    return v0
.end method

.method static synthetic access$5102(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2651
    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F

    return p1
.end method

.method static synthetic access$5200(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I

    return-object v0
.end method

.method static synthetic access$5400(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 2651
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F

    return-object v0
.end method

.method static synthetic access$8702(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2651
    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z

    return p1
.end method
