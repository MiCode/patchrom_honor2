.class public Lcom/scalado/app/rewind/TrackerUtils;
.super Ljava/lang/Object;
.source "TrackerUtils.java"


# instance fields
.field private mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

.field private mConvScreen:Lcom/scalado/caps/screen/Screen;

.field private mConvSession:Lcom/scalado/caps/Session;

.field private mFaceDetectionDims:Lcom/scalado/base/Size;

.field private mFaceScreen:Lcom/scalado/caps/screen/Screen;

.field private mFaceSession:Lcom/scalado/caps/Session;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSrcMgr:Lcom/scalado/app/rewind/SourceManager;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/SourceManager;)V
    .locals 2
    .parameter "srcMgr"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "srcMgr can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    .line 40
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->createSuitableFaceDetectionDim()V

    .line 41
    return-void
.end method

.method private createConverter()V
    .locals 12

    .prologue
    const/16 v7, 0xff

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 167
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    invoke-virtual {v5, v9}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 168
    .local v0, dec:Lcom/scalado/caps/Decoder;
    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    .line 170
    .local v1, dims:Lcom/scalado/base/Size;
    new-instance v5, Lcom/scalado/caps/codec/decoder/ColorDecoder;

    new-instance v6, Lcom/scalado/base/Color;

    invoke-direct {v6, v7, v7, v7, v7}, Lcom/scalado/base/Color;-><init>(IIII)V

    invoke-direct {v5, v6, v1}, Lcom/scalado/caps/codec/decoder/ColorDecoder;-><init>(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

    .line 171
    new-instance v5, Lcom/scalado/caps/Session;

    iget-object v6, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvDec:Lcom/scalado/caps/codec/decoder/ColorDecoder;

    invoke-direct {v5, v6}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    iput-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvSession:Lcom/scalado/caps/Session;

    .line 172
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvSession:Lcom/scalado/caps/Session;

    invoke-virtual {p0, v5}, Lcom/scalado/app/rewind/TrackerUtils;->createScreen(Lcom/scalado/caps/Session;)Lcom/scalado/caps/screen/Screen;

    move-result-object v5

    iput-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    .line 173
    const-string v5, "RectTracker"

    const-string v6, "Screen dims = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    .line 178
    .local v4, srcSize:Lcom/scalado/base/Size;
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    .line 179
    .local v2, longSide:I
    :goto_0
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 181
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    div-int v3, v5, v6

    .line 182
    .local v3, shortSide:I
    rem-int/lit8 v5, v3, 0x2

    if-lez v5, :cond_0

    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 184
    :cond_0
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v2}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 185
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v3}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 186
    const-string v5, "RectTracker"

    const-string v6, "Face dims update = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_1
    const-string v5, "RectTracker"

    const-string v6, "Face dims = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 178
    .end local v2           #longSide:I
    .end local v3           #shortSide:I
    :cond_1
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    goto :goto_0

    .line 192
    .restart local v2       #longSide:I
    :cond_2
    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    div-int v3, v5, v6

    .line 193
    .restart local v3       #shortSide:I
    rem-int/lit8 v5, v3, 0x2

    if-lez v5, :cond_3

    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    :cond_3
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v3}, Lcom/scalado/base/Size;->setWidth(I)V

    .line 196
    iget-object v5, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v5, v2}, Lcom/scalado/base/Size;->setHeight(I)V

    .line 197
    const-string v5, "RectTracker"

    const-string v6, "Face dims update = %dx%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v8}, Lcom/scalado/base/Size;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createSuitableFaceDetectionDim()V
    .locals 8

    .prologue
    const/high16 v7, 0x4416

    const/16 v6, 0x258

    .line 136
    iget-object v4, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    .line 137
    .local v1, dec:Lcom/scalado/caps/Decoder;
    invoke-virtual {v1}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    .line 138
    .local v2, imageSize:Lcom/scalado/base/Size;
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 140
    .local v0, aspectRatio:F
    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 142
    .local v3, minSide:I
    if-gt v3, v6, :cond_0

    .line 143
    iput-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 145
    new-instance v4, Lcom/scalado/base/Size;

    mul-float v5, v7, v0

    float-to-int v5, v5

    invoke-direct {v4, v5, v6}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v4, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    goto :goto_0

    .line 149
    :cond_1
    new-instance v4, Lcom/scalado/base/Size;

    mul-float v5, v7, v0

    float-to-int v5, v5

    invoke-direct {v4, v6, v5}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v4, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    goto :goto_0
.end method

.method private needConversion()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-eqz v2, :cond_0

    .line 124
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 125
    .local v0, screenRect:Lcom/scalado/base/Rect;
    new-instance v1, Lcom/scalado/base/Rect;

    invoke-direct {v1}, Lcom/scalado/base/Rect;-><init>()V

    .line 126
    .local v1, sessionRect:Lcom/scalado/base/Rect;
    iget-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, p1, v1}, Lcom/scalado/app/rewind/Geom;->transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 127
    iget-object v2, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    invoke-static {v2, v1, v0}, Lcom/scalado/app/rewind/Geom;->transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 129
    invoke-static {v0, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    .line 133
    .end local v0           #screenRect:Lcom/scalado/base/Rect;
    .end local v1           #sessionRect:Lcom/scalado/base/Rect;
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1, p2}, Lcom/scalado/app/rewind/Geom;->rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public createScreen(Lcom/scalado/caps/Session;)Lcom/scalado/caps/screen/Screen;
    .locals 3
    .parameter "session"

    .prologue
    .line 71
    new-instance v0, Lcom/scalado/base/Image;

    iget-object v1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 72
    .local v0, img:Lcom/scalado/base/Image;
    new-instance v1, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v1, p1, v0}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    return-object v1
.end method

.method public getFaceDetectionDims()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method public getFaceTrackingImage(I)Lcom/scalado/base/Image;
    .locals 15
    .parameter "index"

    .prologue
    const/4 v14, 0x0

    .line 76
    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v9}, Lcom/scalado/base/Size;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v10}, Lcom/scalado/base/Size;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 79
    :cond_0
    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/scalado/app/rewind/SourceManager;->getEntry(I)Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v4

    .line 118
    :cond_1
    :goto_0
    return-object v4

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->needConversion()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mConvScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v9, :cond_3

    .line 82
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->createConverter()V

    .line 84
    :cond_3
    const-string v9, "RectTracker"

    const-string v10, "Scaling %d (to %dx%d)"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v13}, Lcom/scalado/base/Size;->getWidth()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    invoke-virtual {v13}, Lcom/scalado/base/Size;->getHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/scalado/app/rewind/SourceManager;->getSourceBuffer(I)Lcom/scalado/base/Buffer;

    move-result-object v1

    .line 94
    .local v1, buffer:Lcom/scalado/base/Buffer;
    new-instance v8, Lcom/scalado/stream/BufferStream;

    invoke-direct {v8, v1, v14}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 96
    .local v8, stream:Lcom/scalado/stream/BufferStream;
    invoke-static {v8}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v5

    .line 97
    .local v5, iterator:Lcom/scalado/base/Iterator;
    const/4 v2, 0x0

    .line 99
    .local v2, decoder:Lcom/scalado/caps/codec/decoder/JpegDecoder;
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, v9}, Lcom/scalado/base/Iterator;->step(I)F

    .line 100
    invoke-virtual {v5}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v2, v0

    .line 101
    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v2}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 102
    .local v7, session:Lcom/scalado/caps/Session;
    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    if-nez v9, :cond_4

    .line 103
    invoke-direct {p0}, Lcom/scalado/app/rewind/TrackerUtils;->createSuitableFaceDetectionDim()V

    .line 106
    :cond_4
    new-instance v4, Lcom/scalado/base/Image;

    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    sget-object v10, Lcom/scalado/base/Image$Config;->YUV422_Y1UY2V:Lcom/scalado/base/Image$Config;

    invoke-direct {v4, v9, v10}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 107
    .local v4, image:Lcom/scalado/base/Image;
    new-instance v6, Lcom/scalado/caps/screen/Screen;

    invoke-direct {v6, v7, v4}, Lcom/scalado/caps/screen/Screen;-><init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Image;)V

    .line 108
    .local v6, screen:Lcom/scalado/caps/screen/Screen;
    invoke-virtual {v6}, Lcom/scalado/caps/screen/Screen;->draw()V

    .line 109
    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceSession:Lcom/scalado/caps/Session;

    if-nez v9, :cond_5

    .line 110
    iput-object v7, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceSession:Lcom/scalado/caps/Session;

    .line 112
    :cond_5
    iget-object v9, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;

    if-nez v9, :cond_1

    .line 113
    iput-object v6, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceScreen:Lcom/scalado/caps/screen/Screen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 116
    .end local v4           #image:Lcom/scalado/base/Image;
    .end local v6           #screen:Lcom/scalado/caps/screen/Screen;
    .end local v7           #session:Lcom/scalado/caps/Session;
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "RectTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception when scaling image "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public setFaceDetectionDims(Lcom/scalado/base/Size;)V
    .locals 0
    .parameter "dims"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/scalado/app/rewind/TrackerUtils;->mFaceDetectionDims:Lcom/scalado/base/Size;

    .line 49
    return-void
.end method

.method public setScreenDims(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 44
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/TrackerUtils;->mScreenDims:Lcom/scalado/base/Size;

    .line 45
    return-void
.end method
