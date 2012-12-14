.class Lcom/android/server/PowerManagerService$Interpolation;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Interpolation"
.end annotation


# static fields
.field private static final CONSTANT_COEF:I = 0x2

.field private static final MAX_BRIGHT_LEVEL:I = 0x100

.field private static final MAX_ENVLIGHT_POINTS:I = 0x2710

.field private static final SAMPLE_HEIGHT:I = 0xb

.field private static final SAMPLE_WIDTH:I = 0xe

.field private static final backLightLevel:[F

.field private static final envLight:[F

.field private static final envToLightSample:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xe

    new-array v0, v4, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/PowerManagerService$Interpolation;->envToLightSample:[[F

    new-array v0, v3, [F

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/server/PowerManagerService$Interpolation;->envLight:[F

    new-array v0, v4, [F

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/PowerManagerService$Interpolation;->backLightLevel:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xc0t 0x41t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x50t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0xa8t 0x41t
        0x0t 0x0t 0xf8t 0x41t
        0x0t 0x0t 0x30t 0x42t
        0x0t 0x0t 0x60t 0x42t
        0x0t 0x0t 0x80t 0x42t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0x10t 0x41t
        0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xd8t 0x41t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x90t 0x42t
        0x0t 0x0t 0xbat 0x42t
        0x0t 0x0t 0xe2t 0x42t
        0x0t 0x0t 0xf2t 0x42t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x50t 0x41t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xb8t 0x41t
        0x0t 0x0t 0x8t 0x42t
        0x0t 0x0t 0x38t 0x42t
        0x0t 0x0t 0x6ct 0x42t
        0x0t 0x0t 0x9ct 0x42t
        0x0t 0x0t 0xe8t 0x42t
        0x0t 0x0t 0xet 0x43t
        0x0t 0x0t 0x29t 0x43t
        0x0t 0x0t 0x34t 0x43t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0xe0t 0x40t
        0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0x88t 0x41t
        0x0t 0x0t 0xc8t 0x41t
        0x0t 0x0t 0xf8t 0x41t
        0x0t 0x0t 0x3ct 0x42t
        0x0t 0x0t 0x78t 0x42t
        0x0t 0x0t 0x9at 0x42t
        0x0t 0x0t 0xc6t 0x42t
        0x0t 0x0t 0xat 0x43t
        0x0t 0x0t 0x28t 0x43t
        0x0t 0x0t 0x48t 0x43t
        0x0t 0x0t 0x57t 0x43t
    .end array-data

    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x0t 0x42t
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0x9ct 0x42t
        0x0t 0x0t 0xbet 0x42t
        0x0t 0x0t 0xf0t 0x42t
        0x0t 0x0t 0x20t 0x43t
        0x0t 0x0t 0x43t 0x43t
        0x0t 0x0t 0x66t 0x43t
        0x0t 0x0t 0x7at 0x43t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0xc8t 0x41t
        0x0t 0x0t 0xct 0x42t
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x50t 0x42t
        0x0t 0x0t 0x70t 0x42t
        0x0t 0x0t 0xa0t 0x42t
        0x0t 0x0t 0xbet 0x42t
        0x0t 0x0t 0xe2t 0x42t
        0x0t 0x0t 0x8t 0x43t
        0x0t 0x0t 0x2ct 0x43t
        0x0t 0x0t 0x4bt 0x43t
        0x0t 0x0t 0x6bt 0x43t
        0x0t 0x0t 0x7bt 0x43t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0xa8t 0x41t
        0x0t 0x0t 0x10t 0x42t
        0x0t 0x0t 0x50t 0x42t
        0x0t 0x0t 0x68t 0x42t
        0x0t 0x0t 0x94t 0x42t
        0x0t 0x0t 0xa4t 0x42t
        0x0t 0x0t 0xc6t 0x42t
        0x0t 0x0t 0xdet 0x42t
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x18t 0x43t
        0x0t 0x0t 0x39t 0x43t
        0x0t 0x0t 0x55t 0x43t
        0x0t 0x0t 0x70t 0x43t
        0x0t 0x0t 0x7ct 0x43t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x30t 0x42t
        0x0t 0x0t 0x78t 0x42t
        0x0t 0x0t 0x94t 0x42t
        0x0t 0x0t 0x9et 0x42t
        0x0t 0x0t 0xbat 0x42t
        0x0t 0x0t 0xcat 0x42t
        0x0t 0x0t 0xe6t 0x42t
        0x0t 0x0t 0xfet 0x42t
        0x0t 0x0t 0xft 0x43t
        0x0t 0x0t 0x24t 0x43t
        0x0t 0x0t 0x41t 0x43t
        0x0t 0x0t 0x5at 0x43t
        0x0t 0x0t 0x72t 0x43t
        0x0t 0x0t 0x7dt 0x43t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x86t 0x42t
        0x0t 0x0t 0xb0t 0x42t
        0x0t 0x0t 0xbet 0x42t
        0x0t 0x0t 0xcat 0x42t
        0x0t 0x0t 0xe0t 0x42t
        0x0t 0x0t 0xf0t 0x42t
        0x0t 0x0t 0x3t 0x43t
        0x0t 0x0t 0xet 0x43t
        0x0t 0x0t 0x1et 0x43t
        0x0t 0x0t 0x2ft 0x43t
        0x0t 0x0t 0x48t 0x43t
        0x0t 0x0t 0x5et 0x43t
        0x0t 0x0t 0x74t 0x43t
        0x0t 0x0t 0x7et 0x43t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0xf6t 0x42t
        0x0t 0x0t 0x7t 0x43t
        0x0t 0x0t 0xet 0x43t
        0x0t 0x0t 0x16t 0x43t
        0x0t 0x0t 0x1bt 0x43t
        0x0t 0x0t 0x22t 0x43t
        0x0t 0x0t 0x2bt 0x43t
        0x0t 0x0t 0x32t 0x43t
        0x0t 0x0t 0x3ct 0x43t
        0x0t 0x0t 0x46t 0x43t
        0x0t 0x0t 0x57t 0x43t
        0x0t 0x0t 0x6bt 0x43t
        0x0t 0x0t 0x7at 0x43t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xf0t 0x41t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x96t 0x42t
        0x0t 0x0t 0x48t 0x43t
        0x0t 0x0t 0xc8t 0x43t
        0x0t 0x0t 0x48t 0x44t
        0x0t 0x80t 0xbbt 0x44t
        0x0t 0x80t 0x3bt 0x45t
        0x0t 0x40t 0x9ct 0x45t
        0x0t 0x0t 0xfat 0x45t
        0x0t 0x40t 0x1ct 0x46t
    .end array-data

    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0x50t 0x42t
        0x0t 0x0t 0x9ct 0x42t
        0x0t 0x0t 0xd0t 0x42t
        0x0t 0x0t 0x0t 0x43t
        0x0t 0x0t 0x1at 0x43t
        0x0t 0x0t 0x34t 0x43t
        0x0t 0x0t 0x4bt 0x43t
        0x0t 0x0t 0x64t 0x43t
        0x0t 0x0t 0x7ft 0x43t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCoefF([F[F[F)V
    .locals 4
    .parameter "f"
    .parameter "Y"
    .parameter "h"

    .prologue
    array-length v1, p1

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aget v3, p1, v0

    sub-float/2addr v2, v3

    aget v3, p2, v0

    div-float/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCoefG([F[F[F[F)V
    .locals 6
    .parameter "g"
    .parameter "lambda"
    .parameter "mu"
    .parameter "f"

    .prologue
    array-length v1, p3

    .local v1, length:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x4040

    aget v3, p1, v0

    add-int/lit8 v4, v0, -0x1

    aget v4, p3, v4

    mul-float/2addr v3, v4

    aget v4, p2, v0

    aget v5, p3, v0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCoefH([F[F)V
    .locals 4
    .parameter "h"
    .parameter "X"

    .prologue
    array-length v1, p1

    .local v1, length:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aget v3, p1, v0

    sub-float/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCoefM([F[F[F[F)V
    .locals 9
    .parameter "coefM"
    .parameter "lambda"
    .parameter "mu"
    .parameter "g"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    array-length v4, p3

    add-int/lit8 v2, v4, -0x2

    .local v2, n:I
    add-int/lit8 v4, v2, 0x1

    new-array v0, v4, [F

    .local v0, beta:[F
    add-int/lit8 v4, v2, 0x1

    new-array v3, v4, [F

    .local v3, y:[F
    aget v4, p2, v8

    div-float/2addr v4, v7

    aput v4, v0, v8

    const/4 v1, 0x2

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, p2, v1

    aget v5, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    mul-float/2addr v5, v6

    sub-float v5, v7, v5

    div-float/2addr v4, v5

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget v4, p3, v8

    div-float/2addr v4, v7

    aput v4, v3, v8

    const/4 v1, 0x2

    :goto_1
    add-int/lit8 v4, v2, 0x1

    if-ge v1, v4, :cond_1

    aget v4, p3, v1

    aget v5, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v3, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aget v5, p1, v1

    add-int/lit8 v6, v1, -0x1

    aget v6, v0, v6

    mul-float/2addr v5, v6

    sub-float v5, v7, v5

    div-float/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    aget v4, v3, v2

    aput v4, p0, v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-lez v1, :cond_2

    aget v4, v3, v1

    aget v5, v0, v1

    add-int/lit8 v6, v1, 0x1

    aget v6, p0, v6

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, p0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static getInterpolatedValue(FF)F
    .locals 6
    .parameter "level"
    .parameter "sensorValue"

    .prologue
    const/16 v5, 0xb

    const/4 v2, 0x0

    .local v2, brightness:F
    new-array v1, v5, [F

    .local v1, brightAtEnvLight:[F
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    if-ge v3, v5, :cond_0

    sget-object v4, Lcom/android/server/PowerManagerService$Interpolation;->envToLightSample:[[F

    aget-object v0, v4, v3

    .local v0, backLights:[F
    sget-object v4, Lcom/android/server/PowerManagerService$Interpolation;->envLight:[F

    invoke-static {v4, v0, p1}, Lcom/android/server/PowerManagerService$Interpolation;->interpolationCompute([F[FF)F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #backLights:[F
    :cond_0
    sget-object v4, Lcom/android/server/PowerManagerService$Interpolation;->backLightLevel:[F

    invoke-static {v4, v1, p0}, Lcom/android/server/PowerManagerService$Interpolation;->interpolationCompute([F[FF)F

    move-result v2

    return v2
.end method

.method private static getLambda([F[F)V
    .locals 5
    .parameter "lambda"
    .parameter "h"

    .prologue
    array-length v1, p1

    .local v1, length:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    aget v4, p1, v0

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getMu([F[F)V
    .locals 5
    .parameter "mu"
    .parameter "h"

    .prologue
    array-length v1, p1

    .local v1, length:I
    const/4 v0, 0x1

    .local v0, j:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    aget v4, p1, v0

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static interpolationCompute([F[FF)F
    .locals 16
    .parameter "x"
    .parameter "y"
    .parameter "inputX"

    .prologue
    move-object/from16 v0, p0

    array-length v10, v0

    .local v10, sampleLength:I
    new-array v3, v10, [F

    .local v3, h:[F
    new-array v1, v10, [F

    .local v1, f:[F
    new-array v5, v10, [F

    .local v5, lambda:[F
    new-array v7, v10, [F

    .local v7, mu:[F
    new-array v2, v10, [F

    .local v2, g:[F
    new-array v6, v10, [F

    .local v6, m:[F
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    add-int/lit8 v11, v10, -0x1

    if-ge v4, v11, :cond_1

    aget v11, p0, v4

    cmpg-float v11, p2, v11

    if-gtz v11, :cond_0

    aget v8, p1, v4

    .local v8, resultY:F
    move v9, v8

    .end local v8           #resultY:F
    .local v9, resultY:F
    :goto_1
    return v9

    .end local v9           #resultY:F
    :cond_0
    aget v11, p0, v4

    cmpl-float v11, p2, v11

    if-lez v11, :cond_2

    add-int/lit8 v11, v4, 0x1

    aget v11, p0, v11

    cmpg-float v11, p2, v11

    if-gez v11, :cond_2

    :cond_1
    add-int/lit8 v11, v10, -0x1

    if-ne v4, v11, :cond_3

    aget v8, p1, v4

    .restart local v8       #resultY:F
    :goto_2
    move v9, v8

    .end local v8           #resultY:F
    .restart local v9       #resultY:F
    goto :goto_1

    .end local v9           #resultY:F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    add-int/lit8 v12, v10, -0x1

    const/4 v13, 0x0

    aput v13, v6, v12

    aput v13, v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v2, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x0

    aget v14, v6, v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v2, v11

    add-int/lit8 v11, v10, -0x2

    add-int/lit8 v12, v10, -0x2

    aget v12, v2, v12

    add-int/lit8 v13, v10, -0x2

    aget v13, v7, v13

    add-int/lit8 v14, v10, -0x1

    aget v14, v6, v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v2, v11

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/server/PowerManagerService$Interpolation;->getCoefH([F[F)V

    move-object/from16 v0, p1

    invoke-static {v1, v0, v3}, Lcom/android/server/PowerManagerService$Interpolation;->getCoefF([F[F[F)V

    invoke-static {v5, v3}, Lcom/android/server/PowerManagerService$Interpolation;->getLambda([F[F)V

    invoke-static {v7, v3}, Lcom/android/server/PowerManagerService$Interpolation;->getMu([F[F)V

    invoke-static {v2, v5, v7, v1}, Lcom/android/server/PowerManagerService$Interpolation;->getCoefG([F[F[F[F)V

    invoke-static {v6, v5, v7, v2}, Lcom/android/server/PowerManagerService$Interpolation;->getCoefM([F[F[F[F)V

    add-int/lit8 v11, v4, 0x1

    aget v11, p0, v11

    sub-float v11, p2, v11

    add-int/lit8 v12, v4, 0x1

    aget v12, p0, v12

    sub-float v12, p2, v12

    mul-float/2addr v11, v12

    aget v12, v3, v4

    const/high16 v13, 0x4000

    aget v14, p0, v4

    sub-float v14, p2, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float/2addr v11, v12

    aget v12, p1, v4

    mul-float/2addr v11, v12

    aget v12, v3, v4

    aget v13, v3, v4

    mul-float/2addr v12, v13

    aget v13, v3, v4

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    aget v12, p0, v4

    sub-float v12, p2, v12

    aget v13, p0, v4

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    aget v13, v3, v4

    const/high16 v14, 0x4000

    add-int/lit8 v15, v4, 0x1

    aget v15, p0, v15

    sub-float v15, v15, p2

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x1

    aget v13, p1, v13

    mul-float/2addr v12, v13

    aget v13, v3, v4

    aget v14, v3, v4

    mul-float/2addr v13, v14

    aget v14, v3, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    add-int/lit8 v12, v4, 0x1

    aget v12, p0, v12

    sub-float v12, p2, v12

    add-int/lit8 v13, v4, 0x1

    aget v13, p0, v13

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    aget v13, p0, v4

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    aget v13, v6, v4

    mul-float/2addr v12, v13

    aget v13, v3, v4

    aget v14, v3, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    aget v12, p0, v4

    sub-float v12, p2, v12

    aget v13, p0, v4

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x1

    aget v13, p0, v13

    sub-float v13, p2, v13

    mul-float/2addr v12, v13

    add-int/lit8 v13, v4, 0x1

    aget v13, v6, v13

    mul-float/2addr v12, v13

    aget v13, v3, v4

    aget v14, v3, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    add-float v8, v11, v12

    .restart local v8       #resultY:F
    goto/16 :goto_2
.end method
