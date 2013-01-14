.class public Landroid/content/pm/ActivityInfoEx;
.super Ljava/lang/Object;
.source "ActivityInfoEx.java"


# static fields
.field public static final CONFIG_HWTHEME:I = 0x4000

.field static final CONFIG_NATIVE_BITS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfoEx;->CONFIG_NATIVE_BITS:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityInfoConfigToNative(I)I
    .locals 3
    .parameter "input"

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, output:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfoEx;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 55
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 56
    sget-object v2, Landroid/content/pm/ActivityInfoEx;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return v1
.end method
