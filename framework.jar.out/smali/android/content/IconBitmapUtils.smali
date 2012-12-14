.class public Landroid/content/IconBitmapUtils;
.super Ljava/lang/Object;
.source "IconBitmapUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "BitmapHelper"

    sput-object v0, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "bmpSrc"
    .parameter "bmpMask"

    .prologue
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, newBitMap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, w:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .local v8, h:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .local v24, wMask:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .local v18, hMask:I
    move/from16 v0, v24

    if-gt v4, v0, :cond_2

    move/from16 v0, v18

    if-le v8, v0, :cond_3

    :cond_2
    sget-object v1, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The size of mask("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") little than the source bitmap("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    const/16 v22, 0x0

    .local v22, pixelMask:I
    const/16 v23, 0x0

    .local v23, pos:I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .local v2, srcPixels:[I
    mul-int v1, v4, v8

    new-array v10, v1, [I

    .local v10, maskPixels:[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v11, 0x0

    sub-int v1, v24, v4

    div-int/lit8 v13, v1, 0x2

    sub-int v1, v18, v8

    div-int/lit8 v14, v1, 0x2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v8, :cond_6

    const/16 v21, 0x0

    .local v21, j:I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v4, :cond_5

    mul-int v1, v20, v4

    add-int v23, v1, v21

    aget v22, v10, v23

    const v1, 0xffffff

    and-int v1, v1, v22

    if-nez v1, :cond_4

    const/high16 v1, -0x100

    and-int v1, v1, v22

    if-eqz v1, :cond_4

    aget v1, v2, v23

    aput v1, v10, v23

    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .end local v21           #j:I
    :cond_6
    const/4 v11, 0x0

    sub-int v1, v24, v4

    div-int/lit8 v13, v1, 0x2

    sub-int v1, v18, v8

    div-int/lit8 v14, v1, 0x2

    move v12, v4

    move v15, v4

    move/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    mul-int v1, v24, v18

    new-array v12, v1, [I

    .local v12, mask:[I
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move/from16 v14, v24

    move/from16 v17, v24

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v1, v18, v8

    div-int/lit8 v17, v1, 0x2

    move/from16 v13, v24

    move/from16 v16, v24

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    const/4 v14, 0x0

    add-int v1, v18, v8

    div-int/lit8 v15, v1, 0x2

    move/from16 v13, v24

    move/from16 v16, v24

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    sub-int v1, v24, v4

    div-int/lit8 v16, v1, 0x2

    move/from16 v13, v24

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    add-int v1, v24, v4

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x0

    move/from16 v13, v24

    move/from16 v16, v24

    move/from16 v17, v18

    invoke-static/range {v12 .. v17}, Landroid/content/IconBitmapUtils;->setTransparent([IIIIII)V

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    move/from16 v14, v24

    move/from16 v17, v24

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v2           #srcPixels:[I
    .end local v4           #w:I
    .end local v8           #h:I
    .end local v10           #maskPixels:[I
    .end local v12           #mask:[I
    .end local v18           #hMask:I
    .end local v20           #i:I
    .end local v22           #pixelMask:I
    .end local v23           #pos:I
    .end local v24           #wMask:I
    :catch_0
    move-exception v19

    .local v19, e:Ljava/lang/Exception;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmpSrc"
    .parameter "bmpBg"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bmpSrc"
    .parameter "bmpBg"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, h:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .local v7, wBg:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .local v2, hBg:I
    if-gt v6, v7, :cond_2

    if-le v1, v2, :cond_3

    :cond_2
    sget-object v9, Landroid/content/IconBitmapUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The size of background("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") little than the source bitmap("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .local v5, paint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    .local v4, newBitmap:Landroid/graphics/Bitmap;
    monitor-enter v0

    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sub-int v9, v7, v6

    shr-int/lit8 v9, v9, 0x1

    add-int v8, v9, p2

    .local v8, wMargin:I
    sub-int v9, v2, v1

    shr-int/lit8 v9, v9, 0x1

    add-int v3, v9, p3

    .local v3, hMargin:I
    int-to-float v9, v8

    int-to-float v10, v3

    invoke-virtual {v0, p0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    monitor-exit v0

    goto :goto_0

    .end local v3           #hMargin:I
    .end local v8           #wMargin:I
    :catchall_0
    move-exception v9

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private static setTransparent([IIIIII)V
    .locals 5
    .parameter "pixels"
    .parameter "w"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .local v2, pos:I
    move v0, p3

    .local v0, i:I
    :goto_0
    if-ge v0, p5, :cond_1

    move v1, p2

    .local v1, j:I
    :goto_1
    if-ge v1, p4, :cond_0

    mul-int v3, v0, p1

    add-int v2, v3, v1

    aget v3, p0, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method public static zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "bmp"
    .parameter "standardSize"
    .parameter "recycledWhenScaled"

    .prologue
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, h:I
    if-gt v2, p1, :cond_0

    if-le v0, p1, :cond_2

    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, p1, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v1

    .end local v1           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local p0
    :cond_2
    return-object p0
.end method
