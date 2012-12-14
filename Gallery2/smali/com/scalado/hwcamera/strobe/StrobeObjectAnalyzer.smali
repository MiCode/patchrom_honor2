.class public final Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;
.super Ljava/lang/Object;
.source "StrobeObjectAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;
    }
.end annotation


# static fields
.field private static final SOLID_GREEN:Lcom/scalado/base/Color;


# instance fields
.field private mAlphaToBitmapPaint:Landroid/graphics/Paint;

.field private mCancelled:Z

.field private mColorToAlphaPaint:Landroid/graphics/Paint;

.field private mLogger:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

.field private mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

.field private mStrobe:Lcom/scalado/caps/strobe/Strobe;

.field private mWillShown:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v2, v1, v2, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    sput-object v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->SOLID_GREEN:Lcom/scalado/base/Color;

    return-void
.end method

.method public constructor <init>(Lcom/scalado/hwcamera/strobe/SessionStore;Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;)V
    .locals 4
    .parameter "sessionStore"
    .parameter "logger"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    .line 70
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    .line 71
    iput-object p2, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mLogger:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

    .line 76
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 78
    .local v0, matrix:[F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mColorToAlphaPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mColorToAlphaPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mAlphaToBitmapPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mAlphaToBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 83
    return-void

    .line 76
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createStrobeObjectBitmap(Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "strobeObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 240
    invoke-virtual {p1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getMask()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 241
    .local v6, mask:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    .local v0, alphaBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 246
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v8}, Lcom/scalado/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/caps/Session;

    .line 249
    .local v7, session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/caps/filter/Crop;

    invoke-direct {v3, v7}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    .line 250
    .local v3, crop:Lcom/scalado/caps/filter/Crop;
    invoke-virtual {p1}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getRect()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 254
    new-instance v4, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    invoke-direct {v4, v1, v12}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 255
    .local v4, encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    invoke-virtual {v7, v4}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 256
    .local v5, it:Lcom/scalado/base/Iterator;
    invoke-virtual {v5, v12}, Lcom/scalado/base/Iterator;->step(I)F

    .line 258
    invoke-virtual {v3}, Lcom/scalado/caps/filter/Crop;->abort()V

    .line 260
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 261
    .local v2, canvas:Landroid/graphics/Canvas;
    iget-object v8, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mColorToAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 262
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    iget-object v8, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mAlphaToBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v11, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    :cond_0
    return-object v1
.end method

.method private scaleForDisplay(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;
    .locals 8
    .parameter "srcDims"
    .parameter "objDims"

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    .line 291
    .local v0, displayDims:Lcom/scalado/base/Size;
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v6}, Lcom/scalado/hwcamera/strobe/SessionStore;->getDisplayDims()Lcom/scalado/base/Size;

    move-result-object v4

    .line 292
    .local v4, screenDims:Lcom/scalado/base/Size;
    if-eqz v4, :cond_0

    .line 293
    invoke-virtual {v0, v4}, Lcom/scalado/base/Size;->shrinkToAspect(Lcom/scalado/base/Size;)V

    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 297
    .local v2, scaleX:F
    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 298
    .local v3, scaleY:F
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 299
    .local v5, w:I
    invoke-virtual {p2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 301
    .local v1, h:I
    new-instance v6, Lcom/scalado/base/Size;

    invoke-direct {v6, v5, v1}, Lcom/scalado/base/Size;-><init>(II)V

    return-object v6
.end method


# virtual methods
.method public analyze()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v3, Lcom/scalado/caps/strobe/Strobe;

    invoke-direct {v3}, Lcom/scalado/caps/strobe/Strobe;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/SessionStore;->getAnalyzedSessions()Ljava/util/List;

    move-result-object v20

    .line 99
    .local v20, sessions:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/caps/Session;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v16, objects:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/scalado/caps/Session;

    .line 102
    .local v19, session:Lcom/scalado/caps/Session;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/scalado/caps/strobe/Strobe;->addSession(Lcom/scalado/caps/Session;)V

    goto :goto_0

    .line 105
    .end local v19           #session:Lcom/scalado/caps/Session;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 106
    .local v21, t1:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    invoke-virtual {v3}, Lcom/scalado/caps/strobe/Strobe;->analyze()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 108
    .local v23, t2:J
    const-string v3, "StrobeObjectAnalyzer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "analyze took: "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v25, v23, v21

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v25, "ms"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    if-eqz v3, :cond_2

    .line 181
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    const/4 v6, 0x0

    .line 115
    .local v6, objectIndex:I
    new-instance v9, Lcom/scalado/base/Rect;

    invoke-direct {v9}, Lcom/scalado/base/Rect;-><init>()V

    .line 117
    .local v9, addedRect:Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mWillShown:[Z

    if-nez v3, :cond_3

    .line 118
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Z

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mWillShown:[Z

    .line 120
    :cond_3
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_4

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mWillShown:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_a

    .line 125
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    if-nez v3, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    invoke-virtual {v3, v5}, Lcom/scalado/caps/strobe/Strobe;->getObjects(I)[Lcom/scalado/base/Rect;

    move-result-object v18

    .line 129
    .local v18, rects:[Lcom/scalado/base/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mLogger:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

    const-string v4, "\nImage-%02d:\n"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-int/lit8 v27, v5, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;->append(Ljava/lang/String;)V

    .line 130
    const/4 v15, 0x0

    .local v15, j:I
    :goto_4
    move-object/from16 v0, v18

    array-length v3, v0

    if-ge v15, v3, :cond_9

    .line 131
    aget-object v17, v18, v15

    .line 133
    .local v17, rect:Lcom/scalado/base/Rect;
    if-nez v5, :cond_7

    .line 134
    move-object/from16 v9, v17

    .line 142
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mLogger:Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;

    const-string v4, "Object id-%d: %d,%d - %dx%d\n"

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-int/lit8 v27, v15, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getX()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getY()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer$Logger;->append(Ljava/lang/String;)V

    .line 146
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mWillShown:[Z

    aget-boolean v4, v4, v5

    if-ne v3, v4, :cond_6

    .line 147
    move-object/from16 v9, v17

    .line 150
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v8

    .line 151
    .local v8, objDims:Lcom/scalado/base/Size;
    new-instance v13, Lcom/scalado/base/Image;

    sget-object v3, Lcom/scalado/base/Image$Config;->RGBA8888:Lcom/scalado/base/Image$Config;

    invoke-direct {v13, v8, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 152
    .local v13, image:Lcom/scalado/base/Image;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    sget-object v4, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->SOLID_GREEN:Lcom/scalado/base/Color;

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v0, v13, v4}, Lcom/scalado/caps/strobe/Strobe;->getObjectImage(ILcom/scalado/base/Rect;Lcom/scalado/base/Image;Lcom/scalado/base/Color;)V

    .line 155
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/caps/Session;

    invoke-virtual {v3}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->scaleForDisplay(Lcom/scalado/base/Size;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;

    move-result-object v10

    .line 157
    .local v10, bmpDims:Lcom/scalado/base/Size;
    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 160
    .local v7, mask:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_8

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 162
    invoke-virtual {v13}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 173
    :goto_6
    new-instance v2, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/scalado/base/Rect;->getY()I

    move-result v4

    invoke-direct/range {v2 .. v8}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;-><init>(IIIILandroid/graphics/Bitmap;Lcom/scalado/base/Size;)V

    .line 175
    .local v2, strobeObject:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->createStrobeObjectBitmap(Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v6, v6, 0x1

    .line 130
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 137
    .end local v2           #strobeObject:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v7           #mask:Landroid/graphics/Bitmap;
    .end local v8           #objDims:Lcom/scalado/base/Size;
    .end local v10           #bmpDims:Lcom/scalado/base/Size;
    .end local v13           #image:Lcom/scalado/base/Image;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->isCoveredEachOther(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mWillShown:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v5

    goto/16 :goto_5

    .line 165
    .restart local v7       #mask:Landroid/graphics/Bitmap;
    .restart local v8       #objDims:Lcom/scalado/base/Size;
    .restart local v10       #bmpDims:Lcom/scalado/base/Size;
    .restart local v13       #image:Lcom/scalado/base/Image;
    :cond_8
    new-instance v19, Lcom/scalado/caps/Session;

    new-instance v3, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v3, v13}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 169
    .restart local v19       #session:Lcom/scalado/caps/Session;
    new-instance v11, Lcom/scalado/caps/codec/encoder/BitmapEncoder;

    const/4 v3, 0x0

    invoke-direct {v11, v7, v3}, Lcom/scalado/caps/codec/encoder/BitmapEncoder;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 170
    .local v11, encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v14

    .line 171
    .local v14, it:Lcom/scalado/base/Iterator;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/scalado/base/Iterator;->step(I)F

    goto :goto_6

    .line 124
    .end local v7           #mask:Landroid/graphics/Bitmap;
    .end local v8           #objDims:Lcom/scalado/base/Size;
    .end local v10           #bmpDims:Lcom/scalado/base/Size;
    .end local v11           #encoder:Lcom/scalado/caps/codec/encoder/BitmapEncoder;
    .end local v13           #image:Lcom/scalado/base/Image;
    .end local v14           #it:Lcom/scalado/base/Iterator;
    .end local v17           #rect:Lcom/scalado/base/Rect;
    .end local v19           #session:Lcom/scalado/caps/Session;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 180
    .end local v15           #j:I
    .end local v18           #rects:[Lcom/scalado/base/Rect;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/scalado/hwcamera/strobe/SessionStore;->addStrobeObjects(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public cancelAnalyze()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mCancelled:Z

    .line 228
    return-void
.end method

.method public getShowable()[Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mWillShown:[Z

    return-object v0
.end method

.method public getStrobe()Lcom/scalado/caps/strobe/Strobe;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeObjectAnalyzer;->mStrobe:Lcom/scalado/caps/strobe/Strobe;

    return-object v0
.end method

.method public isCoveredEachOther(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)Z
    .locals 8
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    .line 190
    const/4 v4, 0x1

    .line 191
    .local v4, result:Z
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 192
    .local v0, centerX1:I
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .line 193
    .local v2, centerY1:I
    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getX()I

    move-result v5

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 194
    .local v1, centerX2:I
    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getY()I

    move-result v5

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 214
    .local v3, centerY2:I
    sub-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-gt v5, v6, :cond_0

    sub-int v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p2}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 216
    :cond_0
    const/4 v4, 0x0

    .line 219
    :cond_1
    return v4
.end method
