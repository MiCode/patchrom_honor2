.class public Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;
.super Ljava/lang/Object;
.source "OGLTextureProvider.java"


# instance fields
.field final colorMode:Lcom/scalado/base/Image$Config;

.field private currBuffer:I

.field public estimateBottomColor:J

.field public estimateLeftColor:J

.field public estimateRightColor:J

.field public estimateTopColor:J

.field private imageHeight:I

.field private imageWidth:I

.field private mBitmapBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCropFilter:Lcom/scalado/caps/filter/Crop;

.field private mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

.field private mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

.field private mImage:Lcom/scalado/base/Image;

.field private mInStream:Lcom/scalado/stream/FileStream;

.field private mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

.field private mSession:Lcom/scalado/caps/Session;

.field private mSize:Lcom/scalado/base/Size;

.field private mTextureBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .parameter "segments"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v6, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    .line 33
    iput v6, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 35
    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565_D:Lcom/scalado/base/Image$Config;

    iput-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->colorMode:Lcom/scalado/base/Image$Config;

    .line 54
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    .line 56
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mBitmapBuffers:Ljava/util/Vector;

    .line 57
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mTextureBuffer:Ljava/util/Vector;

    .line 59
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    .line 63
    iput-wide v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->estimateBottomColor:J

    .line 64
    iput-wide v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->estimateLeftColor:J

    .line 65
    iput-wide v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->estimateTopColor:J

    .line 66
    iput-wide v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->estimateRightColor:J

    .line 68
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    .line 69
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    .line 70
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    .line 71
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 72
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 73
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 74
    iput v6, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 75
    iput-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    .line 84
    :try_start_0
    new-instance v2, Lcom/scalado/stream/FileStream;

    sget-object v3, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v2, p2, v3}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    iput-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    invoke-static {v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v0

    .line 92
    .local v0, decoderIterator:Lcom/scalado/base/Iterator;
    invoke-direct {p0, v0, p1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->createOGLTextureProvider(Lcom/scalado/base/Iterator;I)V

    .line 94
    return-void

    .line 86
    .end local v0           #decoderIterator:Lcom/scalado/base/Iterator;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create filestream for file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createOGLTextureProvider(Lcom/scalado/base/Iterator;I)V
    .locals 5
    .parameter "decoderIterator"
    .parameter "segments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 111
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {p1}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    .line 119
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    sget-object v2, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->SPEED:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setDecodeMode(Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;)V

    .line 120
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-virtual {v1, v3}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->setPrefetchEnabled(Z)V

    .line 121
    new-instance v1, Lcom/scalado/caps/Session;

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mDecoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;

    invoke-direct {v1, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    .line 122
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    .line 123
    new-instance v1, Lcom/scalado/base/Image;

    new-instance v2, Lcom/scalado/base/Size;

    invoke-direct {v2, v4, v4}, Lcom/scalado/base/Size;-><init>(II)V

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->colorMode:Lcom/scalado/base/Image$Config;

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    .line 124
    new-instance v1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-direct {v1, v2}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    .line 126
    new-instance v1, Lcom/scalado/caps/filter/Crop;

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v1, v2}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 128
    const-string v1, "OGLTextureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSize.getWidth()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSize.getHeight()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v1, "OGLTextureProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mImage.getDimensions().getWidth()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImage.getDimensions().getHeight()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v3}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->setImageWidth(I)V

    .line 132
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->setImageHeight(I)V

    .line 133
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create decoder for stream. decoderIterator exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setImageHeight(I)V
    .locals 0
    .parameter "imageHeight"

    .prologue
    .line 50
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    .line 51
    return-void
.end method

.method private setImageWidth(I)V
    .locals 0
    .parameter "imageWidth"

    .prologue
    .line 46
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    .line 47
    return-void
.end method


# virtual methods
.method public createNextPanoramaBuffer()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 246
    const/4 v3, 0x0

    .line 248
    .local v3, result:Z
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    iget-object v5, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->bufferCount:I

    if-ge v4, v5, :cond_2

    .line 249
    new-instance v2, Lcom/scalado/base/Rect;

    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    iget-object v5, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget v5, v5, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->usableWidth:I

    iget-object v6, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSize:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    invoke-direct {v2, v4, v7, v5, v6}, Lcom/scalado/base/Rect;-><init>(IIII)V

    .line 253
    .local v2, region:Lcom/scalado/base/Rect;
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    invoke-virtual {v4}, Lcom/scalado/caps/filter/Crop;->isSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/Session;->removeLastFilter()V

    .line 255
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 256
    new-instance v4, Lcom/scalado/caps/filter/Crop;

    iget-object v5, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    invoke-direct {v4, v5}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    iput-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    .line 260
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    invoke-virtual {v4, v2}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    .line 262
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mCropFilter:Lcom/scalado/caps/filter/Crop;

    invoke-virtual {v4}, Lcom/scalado/caps/filter/Crop;->commit()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mSession:Lcom/scalado/caps/Session;

    iget-object v5, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mEncoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-virtual {v4, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 270
    .local v1, iterator:Lcom/scalado/base/Iterator;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    .end local v1           #iterator:Lcom/scalado/base/Iterator;
    :goto_1
    iget v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 278
    const/4 v3, 0x1

    .line 281
    .end local v2           #region:Lcom/scalado/base/Rect;
    :cond_2
    return v3

    .line 264
    .restart local v2       #region:Lcom/scalado/base/Rect;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "OGLTextureProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not commit Crop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "OGLTextureProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not produce buffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mInStream:Lcom/scalado/stream/FileStream;

    invoke-virtual {v1}, Lcom/scalado/stream/FileStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 407
    :goto_1
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->imageWidth:I

    return v0
.end method

.method public getPanoramaData()Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    return-object v0
.end method

.method public getSingleBufferFitToTexture()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "OGLRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleBufferFitToTexture(): length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mImage:Lcom/scalado/base/Image;

    invoke-virtual {v0}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetBufferCount()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->currBuffer:I

    .line 241
    return-void
.end method

.method public setPanoramaData(Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;)V
    .locals 0
    .parameter "pd"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;->mPanoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    .line 230
    return-void
.end method
