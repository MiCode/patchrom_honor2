.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x7


# instance fields
.field private mBins:[J

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x6

    const/4 v6, 0x2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 42
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    .local v0, c:Ljava/util/Calendar;
    invoke-direct {p0, v0}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 56
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v2, v8

    .line 57
    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->add(II)V

    .line 58
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v2, v9

    .line 59
    const/4 v2, -0x6

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 60
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    aput-wide v3, v2, v6

    .line 61
    const/4 v2, 0x7

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 62
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 63
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 66
    iget-object v2, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v3, 0x104007c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 67
    iget-object v2, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v3, 0x104007b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    .line 74
    iget-object v2, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v3, 0x2020087

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 75
    iget-object v2, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v3, 0x3

    const v4, 0x2020086

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 77
    iget-object v2, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x10403a6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 122
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 123
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 126
    return-void
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 109
    const/4 v0, 0x4

    .line 111
    .local v0, lastDay:I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 114
    :cond_1
    if-ne p1, v0, :cond_2

    const-wide/high16 v1, -0x8000

    .line 115
    :goto_0
    return-wide v1

    :cond_2
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, p1

    goto :goto_0
.end method

.method public getIndex(J)I
    .locals 4
    .parameter "time"

    .prologue
    .line 87
    const/4 v1, 0x4

    .line 88
    .local v1, lastDay:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 89
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 91
    .end local v0           #i:I
    :goto_1
    return v0

    .line 88
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 91
    goto :goto_1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 99
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 100
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method
