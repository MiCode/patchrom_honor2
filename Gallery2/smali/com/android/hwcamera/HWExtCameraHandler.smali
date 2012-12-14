.class public Lcom/android/hwcamera/HWExtCameraHandler;
.super Landroid/os/Handler;
.source "HWExtCameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/HWExtCameraHandler$Listener;
    }
.end annotation


# instance fields
.field private mBiggestSmileScore:I

.field private mBlinkState:Z

.field private mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

.field private mFaceCount:I

.field private mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

.field private mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

.field private mIsNeedToHideFace:Z

.field private mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

.field private mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

.field private mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

.field private mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/HWExtCameraHandler$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 32
    iput-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    .line 33
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 34
    new-instance v0, Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-direct {v0}, Lcom/android/hwcamera/hwui/FaceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 35
    new-instance v0, Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-direct {v0}, Lcom/android/hwcamera/hwui/FaceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 36
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 37
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 38
    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/android/hwcamera/hwui/FaceInfo;

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    .line 40
    iput v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    .line 41
    iput-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    .line 65
    return-void
.end method

.method private clearCurrentBiggestFace()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 164
    :cond_0
    return-void
.end method

.method private clearPreviousFocusFaceInfo()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 380
    :cond_0
    return-void
.end method

.method private clearSendedBiggestFace()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 170
    :cond_0
    return-void
.end method

.method private clearTraceFace()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 178
    :cond_0
    return-void
.end method

.method private findBiggestFace()Lcom/android/hwcamera/hwui/FaceInfo;
    .locals 6

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, biggestFaceArea:I
    const/4 v2, 0x0

    .line 260
    .local v2, currentFaceArea:I
    const/4 v1, 0x0

    .line 262
    .local v1, biggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v4, 0x0

    .line 263
    .local v4, index:I
    const/4 v3, 0x0

    .line 264
    .local v3, faceInfo:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v4, v5, :cond_1

    .line 265
    iget-object v5, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v3, v5, v4

    .line 266
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceArea()I

    move-result v2

    .line 267
    if-le v2, v0, :cond_0

    .line 268
    move v0, v2

    .line 269
    move-object v1, v3

    .line 264
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 273
    :cond_1
    return-object v1
.end method

.method private findFocusFace()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->isTraceFocusFaceExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->isCurrentBiggestFocusFaceExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->findBiggestFace()Lcom/android/hwcamera/hwui/FaceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    goto :goto_0
.end method

.method private getCurrentBiggestFaceId()I
    .locals 3

    .prologue
    .line 322
    const/4 v0, -0x1

    .line 323
    .local v0, currentFocusFaceId:I
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v0

    .line 330
    .end local v0           #currentFocusFaceId:I
    :cond_0
    :goto_0
    return v0

    .line 327
    .restart local v0       #currentFocusFaceId:I
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v0

    goto :goto_0
.end method

.method private initFaceList()V
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method private isCurrentBiggestFocusFaceExist()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->getCurrentBiggestFaceId()I

    move-result v0

    .line 278
    .local v0, currentBiggestFaceId:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 295
    :goto_0
    return v3

    .line 281
    :cond_0
    const/4 v1, 0x0

    .line 282
    .local v1, face:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v2, 0x0

    .line 283
    .local v2, index:I
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v2, v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v1, v4, v2

    .line 285
    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iput-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->sendBiggestFace()V

    .line 291
    const/4 v3, 0x1

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 283
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearCurrentBiggestFace()V

    goto :goto_0
.end method

.method private isSendBiggestFace(Lcom/android/hwcamera/hwui/FaceInfo;)Z
    .locals 2
    .parameter "biggestFace"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTraceFocusFaceExist()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v3

    .line 240
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v2

    .line 241
    .local v2, traceFocusFaceId:I
    const/4 v0, 0x0

    .line 242
    .local v0, face:Lcom/android/hwcamera/hwui/FaceInfo;
    const/4 v1, 0x0

    .line 243
    .local v1, index:I
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v1, v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v0, v4, v1

    .line 245
    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 249
    monitor-exit p0

    .line 250
    const/4 v3, 0x1

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 243
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearTraceFace()V

    goto :goto_0
.end method

.method private parseFaceData([Landroid/os/Bundle;)V
    .locals 9
    .parameter "faceData"

    .prologue
    .line 346
    const/4 v5, 0x0

    .line 347
    .local v5, index:I
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    .line 348
    move-object v0, p1

    .local v0, arr$:[Landroid/os/Bundle;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 350
    .local v2, face:Landroid/os/Bundle;
    const/16 v7, 0x14

    if-lt v5, v7, :cond_1

    .line 374
    .end local v2           #face:Landroid/os/Bundle;
    :cond_0
    return-void

    .line 354
    .restart local v2       #face:Landroid/os/Bundle;
    :cond_1
    new-instance v3, Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-direct {v3}, Lcom/android/hwcamera/hwui/FaceInfo;-><init>()V

    .line 355
    .local v3, faceinfo:Lcom/android/hwcamera/hwui/FaceInfo;
    const-string v7, "id"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setFaceId(I)V

    .line 356
    const-string v7, "blinkScore"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setBlinkPercent(I)V

    .line 357
    const-string v7, "smileScore"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setSmilePercent(I)V

    .line 358
    const-string v7, "rect"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Lcom/android/hwcamera/hwui/FaceInfo;->setFaceRect(Landroid/graphics/Rect;)V

    .line 364
    const-string v7, "blinkScore"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 365
    .local v1, blink:I
    const/16 v7, 0x46

    if-le v1, v7, :cond_2

    .line 366
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    .line 368
    :cond_2
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getSmilePercent()I

    move-result v7

    iget v8, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    if-le v7, v8, :cond_3

    .line 369
    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/FaceInfo;->getSmilePercent()I

    move-result v7

    iput v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    .line 371
    :cond_3
    iget-object v7, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aput-object v3, v7, v5

    .line 372
    add-int/lit8 v5, v5, 0x1

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private sendBiggestFace()V
    .locals 4

    .prologue
    const/16 v3, 0x108

    .line 299
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->findBiggestFace()Lcom/android/hwcamera/hwui/FaceInfo;

    move-result-object v0

    .line 300
    .local v0, biggestFace:Lcom/android/hwcamera/hwui/FaceInfo;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->isSendBiggestFace(Lcom/android/hwcamera/hwui/FaceInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/HWExtCameraHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 304
    :cond_0
    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mSendedBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 305
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 306
    .local v1, msg:Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 307
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/hwcamera/HWExtCameraHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearFocusState()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceInfo;->setFocusStatus(I)V

    goto :goto_0
.end method

.method public clearPanoramaMessage()V
    .locals 1

    .prologue
    .line 384
    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 385
    const/16 v0, 0x103

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 386
    const/16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 387
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 388
    const/16 v0, 0x106

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 389
    return-void
.end method

.method public doFaceFocus()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 215
    return-void
.end method

.method public getBlinkState()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-void

    .line 76
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/os/Bundle;

    move-object v0, v1

    check-cast v0, [Landroid/os/Bundle;

    .line 77
    .local v0, faceData:[Landroid/os/Bundle;
    array-length v1, v0

    iput v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 80
    iget v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->canDoFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearPreviousFocusFaceInfo()V

    .line 83
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearCurrentBiggestFace()V

    .line 84
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearSendedBiggestFace()V

    .line 86
    iget-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    if-eqz v1, :cond_1

    .line 87
    iput-boolean v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    .line 88
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->hideFace()V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->resetFaceCount()V

    .line 91
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1, v2}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->smileCapture(I)V

    .line 92
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearTraceFace()V

    goto :goto_0

    .line 96
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-le v1, v3, :cond_3

    .line 97
    iput v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 99
    :cond_3
    iput-boolean v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBlinkState:Z

    .line 100
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->initFaceList()V

    .line 101
    invoke-direct {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->parseFaceData([Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/android/hwcamera/HWExtCameraHandler;->findFocusFace()V

    .line 103
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mPreviousFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    iget-object v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-interface {v1, v2, v3}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 105
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getFaceId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mBiggestSmileScore:I

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->smileCapture(I)V

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mIsNeedToHideFace:Z

    .line 109
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-interface {v1, v2}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->displayFace([Lcom/android/hwcamera/hwui/FaceInfo;)V

    goto :goto_0

    .line 105
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/FaceInfo;->getSmilePercent()I

    move-result v1

    goto :goto_1

    .line 114
    .end local v0           #faceData:[Landroid/os/Bundle;
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1, p1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->panoramaTracker(Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1, p1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->panoramaDirection(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 134
    :pswitch_4
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->panormaIntermediateCaptureStart()V

    goto/16 :goto_0

    .line 139
    :pswitch_5
    iget-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/HWExtCameraHandler$Listener;->showProgress()V

    goto/16 :goto_0

    .line 144
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/hwcamera/hwui/FaceInfo;

    iput-object v1, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mCurrentBiggestFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    goto/16 :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z
    .locals 4
    .parameter "faceView"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    if-ge v0, v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/FaceView;->transformFaceCoordinateICS(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/RectF;

    move-result-object v1

    .line 202
    .local v1, rect:Landroid/graphics/RectF;
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mTraceFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    iget-object v3, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/FaceInfo;->clone(Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 206
    iget-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFacesList:[Lcom/android/hwcamera/hwui/FaceInfo;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    .line 207
    const/4 v2, 0x1

    .line 210
    .end local v1           #rect:Landroid/graphics/RectF;
    :goto_1
    return v2

    .line 200
    .restart local v1       #rect:Landroid/graphics/RectF;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v1           #rect:Landroid/graphics/RectF;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeMessage()V
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessages(I)V

    .line 186
    return-void
.end method

.method public resetFaceCount()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFaceCount:I

    .line 197
    return-void
.end method

.method public declared-synchronized setFocusState()V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mFocusFaceInfo:Lcom/android/hwcamera/hwui/FaceInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceInfo;->setFocusStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unRegisterListener()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/HWExtCameraHandler;->mListener:Lcom/android/hwcamera/HWExtCameraHandler$Listener;

    .line 69
    return-void
.end method
