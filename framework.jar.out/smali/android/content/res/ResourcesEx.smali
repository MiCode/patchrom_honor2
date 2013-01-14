.class public Landroid/content/res/ResourcesEx;
.super Landroid/content/res/Resources;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesEx$ThemeResource;
    }
.end annotation


# static fields
.field private static final ANDROID_RES:Ljava/lang/String; = "android"

.field private static final ANDROID_RES_EXT:Ljava/lang/String; = "androidhwext"

.field private static final DEBUG_DRAWABLE:Z = false

.field private static final DEBUG_ICON:Z = false

.field private static final DEBUG_VERBOSE_ICON:Z = false

.field private static final DELTA_X_OF_BACKGROUND:I = 0x0

.field private static final DELTA_Y_OF_BACKGROUND:I = -0x1

.field private static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field private static final FRAMEWORK_RES_EXT:Ljava/lang/String; = "framework-res-hwext"

.field private static final ICONS_ZIPFILE:Ljava/lang/String; = "icons"

.field private static final ICON_BACKGROUND_PREFIX:Ljava/lang/String; = "icon_background"

.field private static final ICON_BORDER_FILE:Ljava/lang/String; = "icon_border.png"

.field private static final ICON_MASK_FILE:Ljava/lang/String; = "icon_mask.png"

.field private static final ICON_SYS_APP_DEFAULT:Ljava/lang/String; = "sym_def_app_icon"

.field private static final LEN_OF_ANDROID:I = 0x7

.field private static final LEN_OF_ANDROID_EXT:I = 0xc

.field static final TAG:Ljava/lang/String; = "ResourcesEx"

.field private static final THEME_DIR:Ljava/lang/String; = "data/skin/"

.field private static mCacheColorInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mNonThemedPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreloadedThemeColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBmpBorder:Landroid/graphics/Bitmap;

.field private static sBmpMask:Landroid/graphics/Bitmap;

.field private static sBmpSysAppDefault:Landroid/graphics/Bitmap;

.field private static final sConfigAppBigIconSize:I

.field private static final sConfigAppInnerIconSize:I

.field private static sStandardBgSize:I

.field private static sStandardIconSize:I


# instance fields
.field private isThemeColor:Z

.field private final mDrawableCacheEx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 60
    sput v1, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 61
    sput v1, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 71
    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 72
    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 73
    sput-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    .line 90
    const-string/jumbo v0, "ro.config.app_big_icon_size"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    .line 92
    const-string/jumbo v0, "ro.config.app_inner_icon_size"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 772
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 74
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 773
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v1, v0, :cond_0

    .line 775
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    if-ne v0, v1, :cond_1

    const v0, 0x105005a

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 777
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    if-ne v0, v1, :cond_2

    const v0, 0x1050059

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    sput v0, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 784
    :cond_0
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 785
    return-void

    .line 775
    :cond_1
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    goto :goto_0

    .line 777
    :cond_2
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 751
    const/4 v0, 0x0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesEx;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 752
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 768
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 74
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 769
    return-void
.end method

.method private addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bmpSrc"
    .parameter "idAndPackageName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 225
    const-string v6, "data/skin/"

    const-string v7, "icons"

    invoke-static {v6, v7}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 226
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object v4

    .line 230
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    .line 232
    const-string v6, "icon_border.png"

    invoke-virtual {v2, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 234
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 236
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v6, v7, v10}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 240
    :cond_2
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 243
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 245
    const-string v6, "icon_mask.png"

    invoke-virtual {v2, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 247
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 249
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v6, v7, v10}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 253
    :cond_3
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 256
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, bmpBg:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 261
    sget v6, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    invoke-static {p1, v6, v8}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    .local v1, bmpSrcStd:Landroid/graphics/Bitmap;
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1, v6}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 264
    .local v3, maskResultBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 265
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 267
    .local v5, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 268
    invoke-static {v3, v0, v8, v9}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 269
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 275
    :goto_1
    if-eqz v3, :cond_4

    .line 276
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    :cond_4
    if-eqz v5, :cond_5

    .line 279
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    :cond_5
    if-ne v1, p1, :cond_7

    .line 286
    if-eqz v4, :cond_0

    .line 287
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 272
    :cond_6
    invoke-static {v1, v0, v8, v9}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 273
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 293
    :cond_7
    if-eqz v4, :cond_9

    .line 294
    if-eqz v1, :cond_8

    .line 295
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    :cond_8
    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 302
    :cond_9
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "entryName"

    .prologue
    const/4 v1, 0x0

    .line 201
    const-string/jumbo v2, "sym_def_app_icon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 202
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 204
    const-string v2, "data/skin/"

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 205
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v0, :cond_1

    .line 215
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-object v1

    .line 208
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    const-string/jumbo v2, "sym_def_app_icon.png"

    invoke-virtual {v0, v2}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 211
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 212
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 105
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 134
    :cond_0
    return-void

    .line 110
    :cond_1
    const-string v3, "data/skin/"

    const-string v4, "icons"

    invoke-static {v3, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 111
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v2, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v3, "icon_background"

    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 117
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 122
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 123
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 125
    sget v3, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCode(Ljava/lang/String;)I
    .locals 3
    .parameter "idAndPackageName"

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return v0
.end method

.method private getColorValueFromStr(Ljava/lang/String;)I
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 606
    if-eqz p1, :cond_5

    .line 607
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' must start with #"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 616
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' is too long. Format is either#AARRGGBB, #RRGGBB, #RGB, or #ARGB"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 623
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 624
    .local v0, color:[C
    const/16 v1, 0x46

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 625
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 626
    const/4 v1, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 627
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 628
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 645
    .end local v0           #color:[C
    .restart local p1
    :cond_2
    :goto_0
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 629
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 630
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 631
    .restart local v0       #color:[C
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 632
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 633
    const/4 v1, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 634
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 635
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 636
    .restart local p1
    goto :goto_0

    .end local v0           #color:[C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 648
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "idAndPackageName"

    .prologue
    .line 142
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    const-string v2, "data/skin/"

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    const/4 v1, 0x0

    .line 146
    .local v1, len:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 147
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 150
    :cond_2
    if-lez v1, :cond_3

    .line 151
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getCode(Ljava/lang/String;)I

    move-result v2

    rem-int v0, v2, v1

    .line 152
    .local v0, i:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 154
    .end local v0           #i:I
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;
    .locals 4
    .parameter "id"

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, resName:Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    const-string v0, "framework-res"

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    :cond_0
    const-string v2, "androidhwext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 722
    const-string v0, "framework-res-hwext"

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res-hwext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 727
    :cond_1
    new-instance v2, Landroid/content/res/ResourcesEx$ThemeResource;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ResourcesEx$ThemeResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 564
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 568
    .local v3, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-gt v9, v3, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 570
    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 574
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, lableName:Ljava/lang/String;
    const-string v9, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "drawable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 578
    :cond_2
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, name:Ljava/lang/String;
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, colorName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 581
    .local v7, text:Ljava/lang/String;
    const/4 v1, 0x0

    .line 582
    .local v1, colorVaue:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 583
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 585
    :cond_3
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 586
    invoke-direct {p0, v7}, Landroid/content/res/ResourcesEx;->getColorValueFromStr(Ljava/lang/String;)I

    move-result v1

    .line 588
    const/4 v2, 0x0

    .line 589
    .local v2, fullColorName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 600
    .end local v0           #colorName:Ljava/lang/String;
    .end local v1           #colorVaue:I
    .end local v2           #fullColorName:Ljava/lang/String;
    .end local v4           #lableName:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #text:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static initStatics()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 177
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    const-string v1, "data/skin/"

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 178
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v0, :cond_0

    .line 181
    const-string v1, "icon_border.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 182
    const-string v1, "icon_mask.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 184
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 185
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v1, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 187
    :cond_2
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 188
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v1, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 191
    :cond_3
    const-string v1, "data/skin/"

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "sym_def_app_icon.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getColor(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v3, p0, Landroid/content/res/ResourcesEx;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 541
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesEx;->mTmpValue:Landroid/util/TypedValue;

    .line 542
    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/ResourcesEx;->getValue(ILandroid/util/TypedValue;Z)V

    .line 543
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 545
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {p0, v1, p1}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 547
    .local v0, colorVaue:I
    monitor-exit v3

    .line 552
    .end local v0           #colorVaue:I
    :goto_0
    return v0

    .line 549
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    goto :goto_0

    .line 554
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 552
    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getThemeColor(Landroid/util/TypedValue;I)I
    .locals 11
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 657
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v8

    .line 658
    .local v8, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    iget-object v4, v8, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    .line 659
    .local v4, packageName:Ljava/lang/String;
    iget-object v7, v8, Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;

    .line 660
    .local v7, resName:Ljava/lang/String;
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 662
    const/4 v5, 0x0

    .line 664
    .local v5, packageZipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "data/skin/"

    invoke-direct {v2, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 666
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 667
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget v9, p1, Landroid/util/TypedValue;->data:I

    .line 707
    .end local v2           #file:Ljava/io/File;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    :goto_0
    return v9

    .line 670
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    const-string v9, "data/skin/"

    invoke-static {v9, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v5

    .line 671
    if-nez v5, :cond_3

    .line 672
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 675
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 676
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 680
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    const-string/jumbo v9, "theme.xml"

    invoke-virtual {v5, v9}, Landroid/content/res/ZipFileCache;->getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 681
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 684
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 685
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, v6, v4}, Landroid/content/res/ResourcesEx;->inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 692
    if-eqz v3, :cond_4

    .line 693
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 700
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_5
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 703
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 704
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 687
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :catch_1
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 689
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 692
    if-eqz v3, :cond_1

    .line 693
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 695
    :catch_2
    move-exception v10

    goto :goto_0

    .line 691
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 692
    if-eqz v3, :cond_6

    .line 693
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 696
    :cond_6
    :goto_2
    throw v9

    .line 706
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_7
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 707
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 695
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method public getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 477
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v5

    .line 478
    .local v5, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    iget-object v3, v5, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    .line 479
    .local v3, packageName:Ljava/lang/String;
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, file:Ljava/lang/String;
    const/4 v1, 0x0

    .line 486
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const-string v7, "framework-res"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_holo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-object v6

    .line 491
    :cond_1
    const-string v7, "data/skin/"

    invoke-static {v7, v3}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v4

    .line 492
    .local v4, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v4, :cond_0

    .line 495
    const-string v6, ".9.png"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 497
    invoke-virtual {v4, p0, p1, v2}, Landroid/content/res/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v6, v1

    .line 507
    goto :goto_0

    .line 500
    :cond_3
    invoke-virtual {v4, v2}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 502
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method getThemeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 359
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 360
    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, packageName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, idAndPackageName:Ljava/lang/String;
    const-string v6, ""

    .line 363
    .local v6, imgFile:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/IconCache;->get(Ljava/lang/String;)Landroid/content/IconCache$CacheEntry;

    move-result-object v2

    .line 365
    .local v2, ce:Landroid/content/IconCache$CacheEntry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Landroid/content/IconCache$CacheEntry;->type:I

    if-ne v8, v10, :cond_0

    iget-object v8, v2, Landroid/content/IconCache$CacheEntry;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 367
    const-string v8, "data/skin/"

    const-string v9, "icons"

    invoke-static {v8, v9}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v4

    .line 368
    .local v4, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v4, :cond_1

    .line 369
    const/4 v8, 0x0

    .line 393
    :goto_1
    return-object v8

    .end local v4           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    move-object v8, v7

    .line 365
    goto :goto_0

    .line 371
    .restart local v4       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    invoke-virtual {v4, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    if-nez v0, :cond_2

    iget v8, v2, Landroid/content/IconCache$CacheEntry;->type:I

    if-ne v8, v10, :cond_2

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual {v4, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    :cond_2
    if-eqz v0, :cond_5

    .line 381
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v8, v9, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget v9, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-eq v8, v9, :cond_4

    .line 382
    :cond_3
    sget v8, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v9, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 384
    :cond_4
    if-eqz v1, :cond_6

    .line 385
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 386
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    :goto_2
    move-object v8, v3

    .line 393
    goto :goto_1

    .line 390
    :cond_6
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method protected handleActivityInfoConfigToNative(I)I
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 831
    or-int/lit16 v0, p1, 0x4000

    return v0
.end method

.method protected handleAddIconBackground(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "id"
    .parameter "dr"

    .prologue
    .line 319
    sget-boolean v5, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-static {v4}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p2

    .line 322
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Landroid/content/res/ResourcesEx;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 323
    .local v2, bmpWithBackGround:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 324
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    move-object v3, p2

    .line 344
    .end local v2           #bmpWithBackGround:Landroid/graphics/Bitmap;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    .end local p2
    .local v3, dr:Ljava/lang/Object;
    :goto_0
    return-object v3

    .end local v3           #dr:Ljava/lang/Object;
    .restart local v2       #bmpWithBackGround:Landroid/graphics/Bitmap;
    .restart local v4       #idAndPackageName:Ljava/lang/String;
    .restart local p2
    :cond_0
    move-object v5, p2

    .line 328
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    .local v0, bmp:Landroid/graphics/Bitmap;
    sget v5, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v6, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    .line 333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_1
    if-eqz v1, :cond_2

    .line 338
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    :cond_2
    move-object v3, p2

    .line 340
    .restart local v3       #dr:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmpScaled:Landroid/graphics/Bitmap;
    .end local v2           #bmpWithBackGround:Landroid/graphics/Bitmap;
    .end local v3           #dr:Ljava/lang/Object;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :cond_3
    move-object v3, p2

    .line 344
    .restart local v3       #dr:Ljava/lang/Object;
    goto :goto_0
.end method

.method protected handleClearCache(I)V
    .locals 4
    .parameter "configChanges"

    .prologue
    const/4 v3, 0x0

    .line 792
    sget-object v2, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 793
    sget-object v2, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 794
    sget-object v2, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 796
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 797
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 799
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 800
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 808
    .end local v0           #i:I
    .end local v1           #listSize:I
    :cond_1
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 809
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 810
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 812
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 813
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 814
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 816
    :cond_3
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 817
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 818
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 821
    :cond_4
    invoke-static {}, Landroid/content/res/ZipFileCache;->clear()V

    .line 824
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 825
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_5

    .line 826
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/ResourcesEx;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 828
    :cond_5
    return-void
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, colorVaue:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, csl:Landroid/content/res/ColorStateList;
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 517
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 519
    :cond_0
    iget-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v2, :cond_1

    .line 520
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 522
    :cond_1
    return-object v1
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "value"
    .parameter "id"

    .prologue
    .line 398
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    iget v9, p1, Landroid/util/TypedValue;->data:I

    int-to-long v9, v9

    or-long v5, v7, v9

    .line 399
    .local v5, key:J
    const/4 v0, 0x0

    .line 400
    .local v0, colorVaue:I
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_1

    .line 404
    if-eqz p2, :cond_0

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_0

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 406
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 407
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 408
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 413
    :cond_0
    iget-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v7, :cond_1

    .line 414
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 417
    :cond_1
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/ResourcesEx;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 468
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v1

    .line 410
    goto :goto_0

    .line 423
    :cond_3
    if-eqz p2, :cond_8

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_8

    .line 424
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, entryName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesEx;->checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_4

    .line 432
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 433
    goto :goto_0

    .line 436
    :cond_4
    invoke-static {v4}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 440
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 441
    .local v2, drIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 442
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 447
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v2           #drIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 468
    goto :goto_0

    .line 454
    .restart local v3       #entryName:Ljava/lang/String;
    .restart local v4       #idAndPackageName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_7

    .line 456
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 457
    goto :goto_0

    .line 459
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 466
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
