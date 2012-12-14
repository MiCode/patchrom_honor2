.class public final Lcom/android/hwcamera/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I

.field public static final GridLines:[I

.field public static final IconIndicator:[I

.field public static final IconListPreference:[I

.field public static final ListPreference:[I

.field public static final Panel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9034
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/hwcamera/R$styleable;->CameraPreference:[I

    .line 9061
    new-array v0, v3, [I

    const v1, 0x7f01000d

    aput v1, v0, v2

    sput-object v0, Lcom/android/hwcamera/R$styleable;->GridLines:[I

    .line 9090
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/hwcamera/R$styleable;->IconIndicator:[I

    .line 9125
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/hwcamera/R$styleable;->IconListPreference:[I

    .line 9164
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/hwcamera/R$styleable;->ListPreference:[I

    .line 9233
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/hwcamera/R$styleable;->Panel:[I

    return-void

    .line 9090
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 9125
    :array_1
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
    .end array-data

    .line 9164
    :array_2
    .array-data 0x4
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 9233
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
