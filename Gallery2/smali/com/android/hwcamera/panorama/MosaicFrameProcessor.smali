.class public Lcom/android/hwcamera/panorama/MosaicFrameProcessor;
.super Ljava/lang/Object;
.source "MosaicFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;
    }
.end annotation


# instance fields
.field private mCurrProcessFrameIdx:I

.field private mDeltaTime:[F

.field private mDeltaX:[F

.field private mDeltaY:[F

.field private mFillIn:I

.field private final mFrameTimestamp:[J

.field private mIsMosaicMemoryAllocated:Z

.field private mLastProcessFrameIdx:I

.field private mLastProcessedFrameTimestamp:J

.field private mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

.field private mOldestIdx:I

.field private mPanningRateX:F

.field private mPanningRateY:F

.field private mPreviewBufferSize:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressListener:Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;

.field private mTotalDeltaTime:F

.field private mTotalFrameCount:I

.field private mTotalTranslationX:F

.field private mTotalTranslationY:F

.field private mTranslationLastX:F

.field private mTranslationLastY:F


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFrameTimestamp:[J

    .line 42
    iput v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 43
    iput v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 45
    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 46
    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 53
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    .line 54
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    .line 55
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    .line 56
    iput v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    .line 57
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 58
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 59
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 73
    new-instance v0, Lcom/android/hwcamera/panorama/Mosaic;

    invoke-direct {v0}, Lcom/android/hwcamera/panorama/Mosaic;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    .line 74
    iput p1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    .line 75
    iput p2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    .line 76
    iput p3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewBufferSize:I

    .line 77
    return-void
.end method

.method private setupMosaicer(III)V
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "bufSize"

    .prologue
    const/16 v3, 0x2c

    .line 105
    const-string v0, "MosaicFrameProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMosaicer w, h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMosaicer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/panorama/Mosaic;->allocateMosaicMemory(II)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/Mosaic;->reset()V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateTranslationRate(J)V
    .locals 8
    .parameter "now"

    .prologue
    .line 194
    iget-object v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v5}, Lcom/android/hwcamera/panorama/Mosaic;->setSourceImageFromGPU()[F

    move-result-object v0

    .line 195
    .local v0, frameData:[F
    const/16 v5, 0xa

    aget v5, v0, v5

    float-to-int v2, v5

    .line 196
    .local v2, ret_code:I
    const/16 v5, 0x9

    aget v5, v0, v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 197
    const/4 v5, 0x2

    aget v3, v0, v5

    .line 198
    .local v3, translationCurrX:F
    const/4 v5, 0x5

    aget v4, v0, v5

    .line 200
    .local v4, translationCurrY:F
    iget-wide v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    long-to-float v5, v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 202
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 203
    iput v4, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    .line 204
    iput-wide p1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 236
    :goto_0
    return-void

    .line 210
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    .line 211
    .local v1, idx:I
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 212
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 213
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    aget v6, v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 214
    iget-object v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    iget v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 215
    iget-object v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    iget v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    aput v6, v5, v1

    .line 216
    iget-object v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    iget-wide v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    sub-long v6, p1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    aput v6, v5, v1

    .line 217
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    iget-object v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 218
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    iget-object v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 219
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    iget-object v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    aget v6, v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 227
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    iget v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    .line 229
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    iget v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    .line 232
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 233
    iput v4, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    .line 234
    iput-wide p1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 235
    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mOldestIdx:I

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/Mosaic;->freeMosaicMemory()V

    .line 98
    :cond_0
    return-void
.end method

.method public createMosaic(Z)I
    .locals 1
    .parameter "highRes"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/panorama/Mosaic;->createMosaic(Z)I

    move-result v0

    return v0
.end method

.method public getFinalMosaicNV21()[B
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/Mosaic;->getFinalMosaicNV21()[B

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    iget v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    iget v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewBufferSize:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->setupMosaicer(III)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->setStripType(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->reset()V

    .line 91
    return-void
.end method

.method public processFrame()V
    .locals 11

    .prologue
    const/high16 v10, 0x4080

    .line 150
    iget-boolean v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mIsMosaicMemoryAllocated:Z

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 157
    .local v6, t1:J
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    aput-wide v6, v0, v1

    .line 159
    iget v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    iput v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 160
    iget v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 164
    iget v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iget v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    if-eq v0, v1, :cond_0

    .line 165
    iget v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    iput v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFrameTimestamp:[J

    iget v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    aget-wide v8, v0, v1

    .line 172
    .local v8, timestamp:J
    iget v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 175
    invoke-virtual {p0, v8, v9}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->calculateTranslationRate(J)V

    .line 178
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    iget v10, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    iget v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    iget v4, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    mul-float/2addr v4, v10

    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    mul-float/2addr v5, v10

    iget v10, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPreviewHeight:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;->onProgress(ZFFFF)V

    goto :goto_0
.end method

.method public reportProgress(ZZ)I
    .locals 1
    .parameter "hires"
    .parameter "cancel"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/panorama/Mosaic;->reportProgress(ZZ)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 118
    iput v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalFrameCount:I

    .line 119
    iput v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mFillIn:I

    .line 120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessedFrameTimestamp:J

    .line 121
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationX:F

    .line 122
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastX:F

    .line 123
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalTranslationY:F

    .line 124
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTranslationLastY:F

    .line 125
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mTotalDeltaTime:F

    .line 126
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateX:F

    .line 127
    iput v3, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mPanningRateY:F

    .line 128
    iput v4, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mLastProcessFrameIdx:I

    .line 129
    iput v4, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mCurrProcessFrameIdx:I

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaX:[F

    aput v3, v1, v0

    .line 132
    iget-object v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaY:[F

    aput v3, v1, v0

    .line 133
    iget-object v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mDeltaTime:[F

    aput v3, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v1}, Lcom/android/hwcamera/panorama/Mosaic;->reset()V

    .line 136
    return-void
.end method

.method public setProgressListener(Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mProgressListener:Lcom/android/hwcamera/panorama/MosaicFrameProcessor$ProgressListener;

    .line 81
    return-void
.end method

.method public setStripType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicFrameProcessor;->mMosaicer:Lcom/android/hwcamera/panorama/Mosaic;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/panorama/Mosaic;->setStripType(I)V

    .line 102
    return-void
.end method
