.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x2d0

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field public static final SCALE_GL:I = 0x1

.field public static final SCALE_NATIVE:I = 0x8

.field public static final SCALE_PACKAGE:I = 0x4

.field public static final SCALE_SURFACE:I = 0x2

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public appScaleOptFlags:I

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 660
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 312
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 315
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 296
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 297
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 298
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 299
    return-void
.end method

.method private constructor <init>(IIFFI)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"
    .parameter "flags"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 305
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 306
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 307
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 308
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 12
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v5, 0x0

    .line 127
    .local v5, compatFlags:I
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->appScaleOptFlags:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 133
    const/4 v6, 0x0

    .line 134
    .local v6, enable_Comp_Flag:I
    const-string/jumbo v10, "ro.config.compatibility_enable"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 135
    iget v10, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v10, :cond_1

    .line 136
    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    .line 137
    const/16 v10, 0xa

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 142
    :goto_0
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 143
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 144
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 291
    :goto_1
    return-void

    .line 139
    :cond_0
    const/4 v10, 0x0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_0

    .line 147
    :cond_1
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v10, :cond_2

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v10, :cond_2

    iget v10, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v10, :cond_b

    .line 151
    :cond_2
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v10, :cond_6

    iget v8, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 154
    .local v8, required:I
    :goto_2
    if-nez v8, :cond_3

    .line 155
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 157
    :cond_3
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v10, :cond_7

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 159
    .local v4, compat:I
    :goto_3
    if-ge v4, v8, :cond_4

    .line 160
    move v4, v8

    .line 162
    :cond_4
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 164
    .local v7, largest:I
    const/16 v10, 0x2d0

    if-le v8, v10, :cond_8

    .line 171
    or-int/lit8 v5, v5, 0x4

    .line 188
    :cond_5
    :goto_4
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 189
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 190
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 290
    .end local v4           #compat:I
    .end local v7           #largest:I
    .end local v8           #required:I
    :goto_5
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    goto :goto_1

    .line 151
    :cond_6
    iget v8, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_2

    .restart local v8       #required:I
    :cond_7
    move v4, v8

    .line 157
    goto :goto_3

    .line 172
    .restart local v4       #compat:I
    .restart local v7       #largest:I
    :cond_8
    if-eqz v7, :cond_9

    if-le p3, v7, :cond_9

    .line 176
    or-int/lit8 v5, v5, 0xa

    goto :goto_4

    .line 177
    :cond_9
    if-lt v4, p3, :cond_a

    .line 180
    or-int/lit8 v5, v5, 0x4

    goto :goto_4

    .line 181
    :cond_a
    if-eqz p4, :cond_5

    .line 184
    or-int/lit8 v5, v5, 0x8

    goto :goto_4

    .line 197
    .end local v4           #compat:I
    .end local v7           #largest:I
    .end local v8           #required:I
    :cond_b
    const/4 v0, 0x2

    .line 203
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 209
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 211
    .local v2, XLARGE_SCREENS:I
    const/4 v9, 0x0

    .line 215
    .local v9, sizeInfo:I
    const/4 v3, 0x0

    .line 217
    .local v3, anyResizeable:Z
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_c

    .line 218
    or-int/lit8 v9, v9, 0x8

    .line 219
    const/4 v3, 0x1

    .line 220
    if-nez p4, :cond_c

    .line 224
    or-int/lit8 v9, v9, 0x22

    .line 227
    :cond_c
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_d

    .line 228
    const/4 v3, 0x1

    .line 229
    if-nez p4, :cond_d

    .line 230
    or-int/lit8 v9, v9, 0x22

    .line 233
    :cond_d
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_e

    .line 234
    const/4 v3, 0x1

    .line 235
    or-int/lit8 v9, v9, 0x2

    .line 238
    :cond_e
    if-eqz p4, :cond_f

    .line 243
    and-int/lit8 v9, v9, -0x3

    .line 246
    :cond_f
    or-int/lit8 v5, v5, 0x8

    .line 247
    and-int/lit8 v10, p2, 0xf

    packed-switch v10, :pswitch_data_0

    .line 266
    :cond_10
    :goto_6
    const/high16 v10, 0x1000

    and-int/2addr v10, p2

    if-eqz v10, :cond_15

    .line 267
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_14

    .line 268
    and-int/lit8 v5, v5, -0x9

    .line 277
    :cond_11
    :goto_7
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x2000

    if-eqz v10, :cond_16

    .line 278
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 279
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 280
    const/high16 v10, 0x3f80

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_5

    .line 249
    :pswitch_0
    and-int/lit8 v10, v9, 0x20

    if-eqz v10, :cond_12

    .line 250
    and-int/lit8 v5, v5, -0x9

    .line 252
    :cond_12
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x8

    and-int/2addr v10, v11

    if-eqz v10, :cond_10

    .line 253
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 257
    :pswitch_1
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_13

    .line 258
    and-int/lit8 v5, v5, -0x9

    .line 260
    :cond_13
    iget v10, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_10

    .line 261
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 269
    :cond_14
    if-nez v3, :cond_11

    .line 270
    or-int/lit8 v5, v5, 0x2

    goto :goto_7

    .line 273
    :cond_15
    and-int/lit8 v5, v5, -0x9

    .line 274
    or-int/lit8 v5, v5, 0x4

    goto :goto_7

    .line 282
    :cond_16
    const/16 v10, 0xa0

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 283
    sget v10, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v10, v10

    const/high16 v11, 0x4320

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 285
    const/high16 v10, 0x3f80

    iget v11, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v10, v11

    iput v10, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 286
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 705
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 547
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 548
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 550
    .local v1, height:I
    if-ge v11, v1, :cond_3

    .line 551
    move v9, v11

    .line 552
    .local v9, shortSize:I
    move v2, v1

    .line 557
    .local v2, longSize:I
    :goto_0
    const/high16 v12, 0x4434

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 558
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 559
    .local v0, aspect:F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_0

    .line 560
    const v0, 0x3fe3bbbc

    .line 562
    :cond_0
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 564
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_4

    .line 565
    move v6, v5

    .line 566
    .local v6, newWidth:I
    move v3, v4

    .line 572
    .local v3, newHeight:I
    :goto_1
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 573
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 574
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_5

    move v7, v10

    .line 575
    .local v7, scale:F
    :goto_2
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_1

    .line 576
    const/high16 v7, 0x3f80

    .line 579
    :cond_1
    if-eqz p1, :cond_2

    .line 580
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 581
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 584
    :cond_2
    return v7

    .line 554
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_3
    move v9, v1

    .line 555
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_0

    .line 568
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_4
    move v6, v4

    .line 569
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_1

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_5
    move v7, v8

    .line 574
    goto :goto_2
.end method

.method public static final makeNewCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "flags"

    .prologue
    const/high16 v5, 0x4320

    .line 675
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0xb

    const/16 v2, 0xa0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v4, v4

    div-float v4, v5, v4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNewPackageCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "flags"

    .prologue
    const/high16 v5, 0x4320

    .line 684
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0xb

    const/16 v2, 0xa0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v4, v4

    div-float v4, v5, v4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNoneCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "flags"

    .prologue
    const/high16 v3, 0x3f80

    .line 693
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x4

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move v4, v3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "inoutConfig"

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->realNeedCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, -0x10

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 532
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 533
    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 534
    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 536
    :cond_0
    return-void
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 4
    .parameter "inoutDm"

    .prologue
    const/high16 v3, 0x3f00

    .line 502
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->realNeedCompat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    .line 511
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 513
    .local v0, invertedRatio:F
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 514
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 515
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 516
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 517
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 518
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 519
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 521
    .end local v0           #invertedRatio:F
    :cond_0
    return-void

    .line 507
    :cond_1
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 508
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 590
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 591
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_1

    .line 598
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_0
    :goto_0
    return v3

    .line 592
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_1
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_0

    .line 593
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 594
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 595
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 596
    const/4 v3, 0x1

    goto :goto_0

    .line 597
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 598
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 633
    const/16 v0, 0x11

    .line 634
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 635
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 636
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 637
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 639
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    add-int v0, v1, v2

    .line 641
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public realNeedCompat()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, enable_Comp_Flag:I
    const-string/jumbo v3, "ro.config.compatibility_enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 492
    if-ne v0, v1, :cond_2

    .line 493
    iget v3, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    const/16 v4, 0xa0

    if-ne v3, v4, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 493
    goto :goto_0

    :cond_2
    move v1, v2

    .line 496
    goto :goto_0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 605
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 611
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 620
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_3
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v1, :cond_4

    .line 624
    const-string v1, " enabledAppScaleOpt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 651
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 657
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 658
    return-void
.end method
