.class Lcom/android/hwcamera/Util$ImageFileNamer;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileNamer"
.end annotation


# instance fields
.field private mFormatString:Ljava/lang/String;

.field private mLastDate:J

.field private mSameSecondCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 2728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2731
    iput-object p1, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mFormatString:Ljava/lang/String;

    .line 2733
    return-void
.end method


# virtual methods
.method public generateName(J)Ljava/lang/String;
    .locals 9
    .parameter "dateTaken"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 2736
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2738
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mFormatString:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2739
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_0

    .line 2740
    const-string v2, ""

    .line 2755
    :goto_0
    return-object v2

    .line 2742
    :cond_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2747
    .local v2, result:Ljava/lang/String;
    div-long v3, p1, v7

    iget-wide v5, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mLastDate:J

    div-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 2748
    iget v3, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mSameSecondCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mSameSecondCount:I

    .line 2749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mSameSecondCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2751
    :cond_1
    iput-wide p1, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mLastDate:J

    .line 2752
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/Util$ImageFileNamer;->mSameSecondCount:I

    goto :goto_0
.end method
