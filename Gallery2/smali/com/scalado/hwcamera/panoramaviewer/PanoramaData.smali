.class public Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;
.super Ljava/lang/Object;
.source "PanoramaData.java"


# static fields
.field private static final angleFormat:Ljava/text/DecimalFormat;

.field static bgTextureBuffer:Ljava/nio/ByteBuffer;

.field static final df:Ljava/text/DecimalFormat;

.field static logoTextureBuffer:Ljava/nio/ByteBuffer;


# instance fields
.field public CAMERA_FOV:F

.field public PANORAMA_IMAGE_FOV:F

.field public final bufferCount:I

.field context:Landroid/content/Context;

.field private flatMode:Z

.field public final fractalSegWidthPerTex:I

.field public final fractalSegmentWidth:I

.field public final hasEvenBlockSizes:Z

.field height:F

.field public final imageSize:Landroid/graphics/Rect;

.field isOnRendered:Z

.field public maxPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

.field public minPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

.field panoramaImagePath:Ljava/lang/String;

.field radius:F

.field resources:Landroid/content/res/Resources;

.field public final segmentWidth:I

.field public final segments:I

.field public final segmentsMod:I

.field public final segmentsPerTexture:I

.field public final textureWidth:I

.field public final usableWidth:I

.field private wallpaperMode:Z

.field public world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    sput-object v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->logoTextureBuffer:Ljava/nio/ByteBuffer;

    .line 68
    sput-object v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bgTextureBuffer:Ljava/nio/ByteBuffer;

    .line 72
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    .line 302
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->angleFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(IILandroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V
    .locals 11
    .parameter "segments"
    .parameter "textureWidth"
    .parameter "resources"
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->panoramaImagePath:Ljava/lang/String;

    .line 75
    const v4, 0x42ec23d7

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    .line 77
    const/high16 v4, 0x42b4

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->CAMERA_FOV:F

    .line 82
    const/high16 v4, 0x3fc0

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->radius:F

    .line 86
    iput-boolean v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->wallpaperMode:Z

    .line 87
    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    .line 91
    iput-boolean v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    .line 94
    new-instance v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v4}, Lcom/scalado/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    .line 95
    new-instance v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v4}, Lcom/scalado/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    .line 191
    iput p2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    .line 192
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segments:I

    .line 194
    iget-boolean v4, p4, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isDefaultImage:Z

    if-nez v4, :cond_0

    .line 195
    iget v4, p4, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    .line 199
    :cond_0
    iget-boolean v4, p4, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->isWallpaper:Z

    iput-boolean v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->wallpaperMode:Z

    .line 201
    const-string v4, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanoramaData:  angle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p4, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->angleOfView:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v4, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PanoramaData:  PANORAMA_IMAGE_FOV="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    .line 232
    .local v1, texProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;
    const-string v4, "PanoramaActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "down panoramaImagePath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v1, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;

    .end local v1           #texProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;
    const/16 v4, 0x32

    iget-object v5, p4, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;-><init>(ILjava/lang/String;)V

    .line 238
    .restart local v1       #texProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;
    if-nez v1, :cond_1

    .line 239
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not load textures"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_1
    iput v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->fractalSegWidthPerTex:I

    .line 246
    invoke-virtual {v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v0

    .line 247
    .local v0, imageWidth:I
    mul-int/lit8 v4, p2, 0x6

    if-lt v0, v4, :cond_3

    .line 248
    const/16 v4, 0x80

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    .line 249
    const/16 v4, 0x8

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    .line 255
    :goto_0
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    iget v5, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    .line 258
    int-to-float v4, v0

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    .line 260
    int-to-float v4, v0

    iget v5, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsMod:I

    .line 264
    add-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v0

    if-nez v4, :cond_4

    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    mul-int/2addr v4, p2

    if-ne v0, v4, :cond_4

    .line 265
    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    .line 266
    iput v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    .line 274
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->imageSize:Landroid/graphics/Rect;

    .line 278
    invoke-direct {p0, v1}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->createWorld(Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;)Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    move-result-object v4

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    .line 281
    invoke-virtual {v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    const/high16 v6, 0x4000

    iget v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->radius:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    const/high16 v7, 0x43b4

    div-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-virtual {v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v6

    int-to-float v6, v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->height:F

    .line 287
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    new-instance v5, Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v5, v10, v10, v10}, Lcom/scalado/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    iput-object v5, v4, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    .line 290
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v5, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->radius:F

    iput v5, v4, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    .line 291
    iget-boolean v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->wallpaperMode:Z

    if-eqz v4, :cond_2

    .line 292
    invoke-virtual {p0, p3}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->refreshWall(Landroid/content/res/Resources;)V

    .line 296
    :cond_2
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    const/4 v5, 0x4

    if-lt v4, v5, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    .line 297
    return-void

    .line 251
    :cond_3
    const/16 v4, 0x40

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    .line 252
    const/16 v4, 0x10

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    goto/16 :goto_0

    .line 269
    :cond_4
    iput-boolean v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    .line 270
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    rem-int v4, v0, v4

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    goto :goto_1

    :cond_5
    move v2, v3

    .line 296
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V
    .locals 2
    .parameter "resources"
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    const/16 v0, 0x32

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;-><init>(IILandroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V

    .line 102
    return-void
.end method

.method private createIntroWall(Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;Landroid/content/Context;IFIFF)V
    .locals 42
    .parameter "world"
    .parameter "context"
    .parameter "introCount"
    .parameter "panorama_fov"
    .parameter "segments"
    .parameter "radius"
    .parameter "height"

    .prologue
    .line 325
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v4}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageHeight()I

    move-result v16

    .line 326
    .local v16, imageHeight:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;

    invoke-virtual {v4}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->getImageWidth()I

    move-result v17

    .line 329
    .local v17, imageWidth:I
    const/16 v26, 0x0

    .line 330
    .local v26, screenHeight:I
    const/16 v27, 0x0

    .line 331
    .local v27, screenWidth:I
    if-eqz p2, :cond_1

    .line 332
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 333
    .local v19, metrics:Landroid/util/DisplayMetrics;
    check-cast p2, Landroid/app/Activity;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 334
    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v26, v4, -0x1d

    .line 335
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 345
    .end local v19           #metrics:Landroid/util/DisplayMetrics;
    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [J

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    .line 347
    .local v20, myColors:[J
    add-int/lit8 v23, p5, 0x1

    .line 349
    .local v23, pointCount:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v6, v0

    div-float/2addr v4, v6

    mul-float v10, p4, v4

    .line 350
    .local v10, angleFragmentSeg:F
    sub-float v4, p4, v10

    add-int/lit8 v6, p5, -0x1

    int-to-float v6, v6

    div-float v11, v4, v6

    .line 358
    .local v11, anglePerSegment:F
    add-int/lit8 v4, p5, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v10

    neg-float v4, v4

    const/high16 v6, 0x4000

    div-float v29, v4, v6

    .line 361
    .local v29, startingAngle:F
    move/from16 v9, v29

    .line 363
    .local v9, angle:F
    move/from16 v0, v23

    new-array v0, v0, [Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v22, v0

    .line 365
    .local v22, pointArray:[Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    add-int/lit8 v4, p3, 0x18

    add-int/lit8 p3, v4, 0x1

    .line 368
    const/16 v30, 0x0

    .line 369
    .local v30, tempX:F
    const/16 v31, 0x0

    .line 372
    .local v31, tempZ:F
    move/from16 v0, p4

    float-to-double v6, v0

    const-wide/high16 v34, 0x4000

    div-double v6, v6, v34

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v14, v6

    .line 373
    .local v14, flatX:F
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v23

    if-ge v15, v0, :cond_4

    .line 375
    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 379
    .local v12, angle_radians:D
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    if-eqz v4, :cond_2

    .line 380
    move/from16 v0, p6

    float-to-double v6, v0

    mul-double/2addr v6, v12

    double-to-float v0, v6

    move/from16 v30, v0

    .line 381
    move/from16 v0, p6

    neg-float v0, v0

    move/from16 v31, v0

    .line 393
    :goto_2
    new-instance v21, Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move/from16 v0, p7

    neg-float v4, v0

    const/high16 v6, 0x4000

    div-float/2addr v4, v6

    move-object/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v4, v2}, Lcom/scalado/hwcamera/panoramaviewer/Point3D;-><init>(FFF)V

    .line 397
    .local v21, point:Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    aput-object v21, v22, v15

    .line 399
    add-int/lit8 v4, v23, -0x2

    if-ne v15, v4, :cond_3

    .line 400
    add-float/2addr v9, v10

    .line 405
    :goto_3
    if-nez v15, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->minPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    neg-float v6, v6

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    move-object/from16 v0, v21

    iget v6, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    .line 373
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 337
    .end local v9           #angle:F
    .end local v10           #angleFragmentSeg:F
    .end local v11           #anglePerSegment:F
    .end local v12           #angle_radians:D
    .end local v14           #flatX:F
    .end local v15           #i:I
    .end local v20           #myColors:[J
    .end local v21           #point:Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    .end local v22           #pointArray:[Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    .end local v23           #pointCount:I
    .end local v29           #startingAngle:F
    .end local v30           #tempX:F
    .end local v31           #tempZ:F
    .restart local p2
    :cond_1
    move/from16 v26, v16

    .line 338
    move/from16 v27, v17

    goto/16 :goto_0

    .line 383
    .end local p2
    .restart local v9       #angle:F
    .restart local v10       #angleFragmentSeg:F
    .restart local v11       #anglePerSegment:F
    .restart local v12       #angle_radians:D
    .restart local v14       #flatX:F
    .restart local v15       #i:I
    .restart local v20       #myColors:[J
    .restart local v22       #pointArray:[Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    .restart local v23       #pointCount:I
    .restart local v29       #startingAngle:F
    .restart local v30       #tempX:F
    .restart local v31       #tempZ:F
    :cond_2
    move/from16 v0, p6

    float-to-double v6, v0

    mul-double/2addr v6, v12

    const-wide/high16 v34, 0x3ff0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4038

    div-double v36, v36, v38

    const-wide/high16 v38, 0x4000

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-float v4, v0

    float-to-double v0, v4

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3ff0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    div-double v40, v40, v12

    sub-double v38, v38, v40

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    mul-double v6, v6, v34

    double-to-float v0, v6

    move/from16 v30, v0

    .line 387
    move/from16 v0, p6

    neg-float v4, v0

    const/high16 v6, 0x3f80

    move/from16 v0, p3

    int-to-double v7, v0

    const-wide/high16 v34, 0x4038

    div-double v7, v7, v34

    const-wide/high16 v34, 0x4000

    move-wide/from16 v0, v34

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const-wide/high16 v34, 0x3ff0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float v31, v4, v6

    goto/16 :goto_2

    .line 402
    .restart local v21       #point:Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    :cond_3
    add-float/2addr v9, v11

    goto/16 :goto_3

    .line 421
    .end local v12           #angle_radians:D
    .end local v21           #point:Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->maxPanoramaPoint:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v6, v6, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    move/from16 v0, v26

    int-to-float v7, v0

    mul-float/2addr v6, v7

    move/from16 v0, v27

    int-to-float v7, v0

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->setZoomAmount(F)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->clearShape()V

    .line 427
    const/16 v25, 0x0

    .local v25, s:I
    :goto_4
    move/from16 v0, v25

    move/from16 v1, p5

    if-ge v0, v1, :cond_7

    .line 432
    new-instance v5, Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    add-int/lit8 v4, v25, 0x1

    aget-object v4, v22, v4

    invoke-direct {v5, v4}, Lcom/scalado/hwcamera/panoramaviewer/Point3D;-><init>(Lcom/scalado/hwcamera/panoramaviewer/Point3D;)V

    .line 433
    .local v5, otherP:Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    iget v4, v5, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    add-float v4, v4, p7

    iput v4, v5, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    .line 435
    new-instance v3, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;

    aget-object v4, v22, v25

    rem-int/lit8 v6, v25, 0x4

    aget-wide v6, v20, v6

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;-><init>(Lcom/scalado/hwcamera/panoramaviewer/Point3D;Lcom/scalado/hwcamera/panoramaviewer/Point3D;JI)V

    .line 441
    .local v3, rect:Lcom/scalado/hwcamera/panoramaviewer/Rectangle;
    iget-object v4, v3, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->position:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    const/4 v6, 0x0

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    .line 442
    iget-object v4, v3, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->position:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    const/4 v6, 0x0

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    .line 443
    iget-object v4, v3, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->position:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    const/4 v6, 0x0

    iput v6, v4, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    .line 446
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    div-int v4, v25, v4

    add-int/lit8 v33, v4, 0x1

    .line 448
    .local v33, textureIndex:I
    move/from16 v0, v33

    iput v0, v3, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureIndex:I

    .line 451
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    rem-int v28, v25, v4

    .line 452
    .local v28, segmentWithinTexture:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    mul-int v18, v28, v4

    .line 454
    .local v18, leftTextureX:I
    const/16 v24, 0x0

    .line 455
    .local v24, rightTextureX:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    move/from16 v0, v33

    if-ne v0, v4, :cond_6

    .line 456
    add-int/lit8 v4, p5, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_5

    .line 457
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    add-int v24, v18, v4

    .line 465
    :goto_5
    const/16 v4, 0x8

    new-array v0, v4, [F

    move-object/from16 v32, v0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    aput v6, v32, v4

    const/4 v4, 0x2

    move/from16 v0, v24

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x3

    const/high16 v6, 0x3f80

    aput v6, v32, v4

    const/4 v4, 0x4

    move/from16 v0, v18

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x5

    const/4 v6, 0x0

    aput v6, v32, v4

    const/4 v4, 0x6

    move/from16 v0, v24

    int-to-float v6, v0

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    aput v6, v32, v4

    const/4 v4, 0x7

    const/4 v6, 0x0

    aput v6, v32, v4

    .line 476
    .local v32, textureCoordinateArray:[F
    move/from16 v0, v33

    iput v0, v3, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureIndex:I

    .line 477
    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->setTextureCoordinates([F)V

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->addShape(Lcom/scalado/hwcamera/panoramaviewer/Shape;)V

    .line 427
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_4

    .line 459
    .end local v32           #textureCoordinateArray:[F
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    add-int v24, v18, v4

    goto :goto_5

    .line 462
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    add-int v24, v18, v4

    goto :goto_5

    .line 483
    .end local v3           #rect:Lcom/scalado/hwcamera/panoramaviewer/Rectangle;
    .end local v5           #otherP:Lcom/scalado/hwcamera/panoramaviewer/Point3D;
    .end local v18           #leftTextureX:I
    .end local v24           #rightTextureX:I
    .end local v28           #segmentWithinTexture:I
    .end local v33           #textureIndex:I
    :cond_7
    return-void

    .line 345
    nop

    :array_0
    .array-data 0x8
        0xfft 0x0t 0x0t 0xfft 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0xfft 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0xfft 0xfft 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private createWall(IZLandroid/content/Context;Landroid/content/res/Resources;)V
    .locals 8
    .parameter "introCount"
    .parameter "introMode"
    .parameter "context"
    .parameter "resources"

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    iget v5, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsMod:I

    iget v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->radius:F

    iget v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->height:F

    move-object v0, p0

    move-object v2, p3

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->createIntroWall(Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;Landroid/content/Context;IFIFF)V

    .line 160
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    const/4 v3, 0x0

    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->PANORAMA_IMAGE_FOV:F

    iget v5, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsMod:I

    iget v6, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->radius:F

    iget v7, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->height:F

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->createIntroWall(Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;Landroid/content/Context;IFIFF)V

    goto :goto_0
.end method

.method private createWorld(Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;)Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;
    .locals 2
    .parameter "texProvider"

    .prologue
    .line 316
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->CAMERA_FOV:F

    invoke-direct {v0, v1, p1}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;-><init>(FLcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;)V

    .line 318
    .local v0, world:Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;
    return-object v0
.end method


# virtual methods
.method public introWall(I)V
    .locals 3
    .parameter "introCount"

    .prologue
    .line 118
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->resources:Landroid/content/res/Resources;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->createWall(IZLandroid/content/Context;Landroid/content/res/Resources;)V

    .line 119
    return-void
.end method

.method public isFlatMode()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    return v0
.end method

.method public refreshWall(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "resources"

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->createWall(IZLandroid/content/Context;Landroid/content/res/Resources;)V

    .line 123
    return-void
.end method

.method public setFlatMode(Z)V
    .locals 0
    .parameter "flatMode"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->flatMode:Z

    .line 111
    return-void
.end method

.method public setIntroInfo(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "context"
    .parameter "resources"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->resources:Landroid/content/res/Resources;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanoramaData [imageSize=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->imageSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->imageSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], segmentWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segmentsPerTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->segmentsPerTexture:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->textureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usableWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fractalSegmentWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->fractalSegmentWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasEvenBlockSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->hasEvenBlockSizes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
