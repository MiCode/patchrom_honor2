.class Lcom/android/internal/os/PreloadResourceThread;
.super Ljava/lang/Thread;
.source "ZygoteInit.java"


# static fields
.field private static final PRELOAD_GC_THRESHOLD:I = 0x7a120

.field private static final TAG:Ljava/lang/String; = "PreloadResource"

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field id:I

.field private mPart:I

.field private mStr:Ljava/lang/String;

.field runtime:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Ldalvik/system/VMRuntime;I)V
    .locals 0
    .parameter "rt"
    .parameter "part"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    .line 64
    iput p2, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    .line 65
    return-void
.end method

.method private preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 8
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 71
    .local v0, N:I
    iget v5, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    if-nez v5, :cond_2

    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, j:I
    shr-int/lit8 v4, v0, 0x1

    .line 79
    .local v4, k:I
    :goto_0
    move v2, v3

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 80
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v5

    const v6, 0x7a120

    if-le v5, v6, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    invoke-virtual {p1}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 86
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 88
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    .line 90
    iget v5, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    if-eqz v5, :cond_1

    .line 91
    sget-object v5, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    iget v6, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    const v6, -0x40000001

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 93
    const-string v5, "PreloadResource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preloaded drawable resource #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") that varies with configuration!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #k:I
    :cond_2
    shr-int/lit8 v5, v0, 0x1

    add-int/lit8 v3, v5, 0x1

    .line 76
    .restart local v3       #j:I
    move v4, v0

    .restart local v4       #k:I
    goto :goto_0

    .line 100
    .restart local v2       #i:I
    :cond_3
    sub-int v5, v4, v3

    return v5
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    sget-object v1, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    const v2, 0x1070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, ar:Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/os/PreloadResourceThread;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    return-void
.end method
