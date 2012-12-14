.class public Lcom/scalado/app/rewind/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([BLcom/scalado/base/Size;Lcom/scalado/base/Image$Config;Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image;
    .locals 11
    .parameter "buffers"
    .parameter "srcDims"
    .parameter "srcConfig"
    .parameter "dstDims"
    .parameter "dstConfig"

    .prologue
    .line 16
    new-instance v8, Lcom/scalado/base/Image;

    invoke-direct {v8, p1, p2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 17
    .local v8, src:Lcom/scalado/base/Image;
    invoke-virtual {v8}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 18
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    array-length v10, p0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 19
    .local v1, byteCount:I
    const/4 v9, 0x0

    invoke-virtual {v0, p0, v9, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 20
    new-instance v2, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v2, v8}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    .line 21
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/ImageDecoder;
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 22
    .local v7, session:Lcom/scalado/caps/Session;
    new-instance v3, Lcom/scalado/base/Image;

    invoke-direct {v3, p3, p4}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 23
    .local v3, dst:Lcom/scalado/base/Image;
    new-instance v5, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {v5, v3}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    .line 25
    .local v5, encoder:Lcom/scalado/caps/codec/encoder/ImageEncoder;
    :try_start_0
    invoke-virtual {v7, v5}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v6

    .line 26
    .local v6, iterator:Lcom/scalado/base/Iterator;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object v3

    .line 27
    .end local v6           #iterator:Lcom/scalado/base/Iterator;
    :catch_0
    move-exception v4

    .line 28
    .local v4, e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Exception when converting image."

    invoke-direct {v9, v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method
