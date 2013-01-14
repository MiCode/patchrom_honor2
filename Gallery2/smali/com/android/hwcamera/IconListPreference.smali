.class public Lcom/android/hwcamera/IconListPreference;
.super Lcom/android/hwcamera/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mIconIds:[I

.field private mLargeIconIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v2, Lcom/android/hwcamera/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/IconListPreference;->getIconIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/IconListPreference;->mIconIds:[I

    .line 41
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/IconListPreference;->getIconIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/IconListPreference;->mLargeIconIds:[I

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method

.method private getIconIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 63
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 71
    :goto_0
    return-object v2

    .line 64
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 66
    .local v3, n:I
    new-array v2, v3, [I

    .line 67
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;I)V
    .locals 7
    .parameter
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/hwcamera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/hwcamera/IntArray;

    invoke-direct {v2}, Lcom/android/hwcamera/IntArray;-><init>()V

    .line 79
    .local v2, iconIds:Lcom/android/hwcamera/IntArray;
    new-instance v3, Lcom/android/hwcamera/IntArray;

    invoke-direct {v3}, Lcom/android/hwcamera/IntArray;-><init>()V

    .line 81
    .local v3, largeIconIds:Lcom/android/hwcamera/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v4, v0

    .local v4, len:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 82
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 83
    iget-object v6, p0, Lcom/android/hwcamera/IconListPreference;->mIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/IntArray;->add(I)V

    .line 84
    iget-object v6, p0, Lcom/android/hwcamera/IconListPreference;->mLargeIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/android/hwcamera/IntArray;->add(I)V

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v2}, Lcom/android/hwcamera/IntArray;->size()I

    move-result v5

    .line 88
    .local v5, size:I
    new-array v6, v5, [I

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/hwcamera/IconListPreference;->mIconIds:[I

    .line 89
    new-array v6, v5, [I

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/hwcamera/IconListPreference;->mLargeIconIds:[I

    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ListPreference;->filterUnsupported(Ljava/util/List;I)V

    .line 91
    return-void
.end method

.method public getLargeIconIds()[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/hwcamera/IconListPreference;->mLargeIconIds:[I

    return-object v0
.end method

.method public setIconIds([I)V
    .locals 0
    .parameter "iconIds"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/hwcamera/IconListPreference;->mIconIds:[I

    .line 60
    return-void
.end method

.method public setLargeIconIds([I)V
    .locals 0
    .parameter "largeIconIds"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/hwcamera/IconListPreference;->mLargeIconIds:[I

    .line 56
    return-void
.end method
