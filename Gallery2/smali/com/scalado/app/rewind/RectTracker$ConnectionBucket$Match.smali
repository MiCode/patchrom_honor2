.class Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Match"
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
.field mId:I

.field mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field mScore:F

.field final synthetic this$1:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    .line 3252
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->this$1:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3253
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3254
    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    .line 3255
    iput-object p4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    .line 3256
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 3247
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;-><init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 3259
    move-object v0, p1

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    .line 3260
    .local v0, m2:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v2, v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3261
    const/4 v1, -0x1

    .line 3265
    :goto_0
    return v1

    .line 3262
    :cond_0
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v2, v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 3263
    const/4 v1, 0x0

    goto :goto_0

    .line 3265
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
