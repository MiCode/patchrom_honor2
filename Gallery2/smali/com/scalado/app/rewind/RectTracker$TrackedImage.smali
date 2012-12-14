.class Lcom/scalado/app/rewind/RectTracker$TrackedImage;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedImage"
.end annotation


# instance fields
.field private mImage:Lcom/scalado/base/Image;

.field private mIndex:I

.field private mRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 2329
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2325
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    .line 2330
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I

    .line 2331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    .line 2332
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2324
    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2324
    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2324
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method private add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1
    .parameter "tr"

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2341
    return-void
.end method
