.class Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationStatistics"
.end annotation


# instance fields
.field private mId:I

.field private mImageIndex:I

.field private mRelDx:F

.field private mRelDy:F

.field private mRelVftDx:F

.field private mRelVftDy:F

.field private mSeqCount:I

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFF)V
    .locals 0
    .parameter
    .parameter "seqCount"
    .parameter "index"
    .parameter "id"
    .parameter "relDx"
    .parameter "relDy"
    .parameter "relVftDx"
    .parameter "relVftDy"

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mSeqCount:I

    .line 1147
    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mImageIndex:I

    .line 1148
    iput p4, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mId:I

    .line 1149
    iput p5, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDx:F

    .line 1150
    iput p6, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelDy:F

    .line 1151
    iput p7, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDx:F

    .line 1152
    iput p8, p0, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;->mRelVftDy:F

    .line 1153
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFFLcom/scalado/app/rewind/RectTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 1135
    invoke-direct/range {p0 .. p8}, Lcom/scalado/app/rewind/RectTracker$TranslationStatistics;-><init>(Lcom/scalado/app/rewind/RectTracker;IIIFFFF)V

    return-void
.end method
