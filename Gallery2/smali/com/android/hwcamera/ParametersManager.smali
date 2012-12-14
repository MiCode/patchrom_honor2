.class public Lcom/android/hwcamera/ParametersManager;
.super Ljava/lang/Object;
.source "ParametersManager.java"


# instance fields
.field private mAutoFocusValue:Ljava/lang/String;

.field private mBrightnessValue:Ljava/lang/String;

.field private mBrightness_default:Ljava/lang/String;

.field private mColorEffectValue:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContrastValue:Ljava/lang/String;

.field private mContrast_default:Ljava/lang/String;

.field private mDistortionValue:Ljava/lang/String;

.field private mExposureValue:Ljava/lang/String;

.field private mFaceDecetionValue:Ljava/lang/String;

.field private mFlashValue:Ljava/lang/String;

.field private mIsImageCaptureIntent:Z

.field private mIsoValue:Ljava/lang/String;

.field private mPictureSizevalue:Ljava/lang/String;

.field private mPreference:Lcom/android/hwcamera/ComboPreferences;

.field private mRedEyeReductionValue:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mReviewvalue:Ljava/lang/String;

.field private mSaturationValue:Ljava/lang/String;

.field private mSaturation_default:Ljava/lang/String;

.field private mScenceDefaultVaule:Ljava/lang/String;

.field private mSceneValue:Ljava/lang/String;

.field private mShootModeIndex:I

.field private mSteadyValue:Ljava/lang/String;

.field private mTargetTrackingVaule:Ljava/lang/String;

.field private mTimervalue:Ljava/lang/String;

.field private mWhiteBalance:Ljava/lang/String;

.field private mWideScreenvalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V
    .locals 2
    .parameter "context"
    .parameter "preferences"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    .line 40
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    .line 48
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    .line 61
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    .line 62
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    .line 63
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/android/hwcamera/ParametersManager;->mIsImageCaptureIntent:Z

    .line 69
    iput-object p1, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    .line 72
    return-void
.end method

.method private fromGooglePanoramaResetParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "shootModeValue"

    .prologue
    const/4 v6, 0x0

    .line 508
    iget-object v3, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    const-string v4, "googlePanoramaPreference"

    iget-object v5, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 509
    .local v1, fromGooglePanoramaSpf:Landroid/content/SharedPreferences;
    const-string v3, "isGooglePanorama"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    const-string p1, "single"

    .line 511
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 512
    .local v2, sEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "isGooglePanorama"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 514
    iget-object v3, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v3}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_shootmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0208

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 518
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object p1
.end method

.method private getAppropriatePicSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "mParameters"
    .parameter "targetSize"

    .prologue
    .line 332
    move-object v5, p2

    .line 333
    .local v5, resultSize:Ljava/lang/String;
    const/4 v8, 0x0

    .line 334
    .local v8, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    .line 337
    :cond_0
    const/16 v11, 0x78

    invoke-virtual {p2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 338
    .local v2, index:I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_1

    move-object v6, v5

    .line 353
    .end local v5           #resultSize:Ljava/lang/String;
    .local v6, resultSize:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 341
    .end local v6           #resultSize:Ljava/lang/String;
    .restart local v5       #resultSize:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {p2, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 342
    .local v10, width:I
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, height:I
    mul-int v9, v10, v0

    .line 344
    .local v9, targetSizeValue:I
    const-wide v3, 0x412e848000000000L

    .line 345
    .local v3, min:D
    if-eqz v8, :cond_3

    .line 346
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 347
    .local v7, size:Landroid/hardware/Camera$Size;
    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v12

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v11, v11

    cmpg-double v11, v11, v3

    if-gez v11, :cond_2

    .line 348
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 349
    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v11, v12

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-double v3, v11

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v7           #size:Landroid/hardware/Camera$Size;
    :cond_3
    move-object v6, v5

    .line 353
    .end local v5           #resultSize:Ljava/lang/String;
    .restart local v6       #resultSize:Ljava/lang/String;
    goto :goto_0
.end method

.method private getImagejustDefaultValue(Ljava/util/List;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "stringId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 499
    const/4 v1, 0x0

    .line 502
    :goto_0
    return-object v1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 502
    .local v0, defaultvalue:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setParameterByDistortion()V
    .locals 1

    .prologue
    .line 389
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 390
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 391
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 392
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 393
    return-void
.end method

.method private setParameterByEffect()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 360
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    .line 361
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 365
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 368
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 369
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 370
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 371
    return-void
.end method

.method private setParameterByScene()V
    .locals 1

    .prologue
    .line 374
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 378
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 381
    return-void
.end method

.method private setParametersByShootmode(Landroid/hardware/Camera$Parameters;I)V
    .locals 4
    .parameter "mParameters"
    .parameter "index"

    .prologue
    const v3, 0x7f0e016d

    .line 187
    const-string v0, "shootmode"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    packed-switch p2, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-void

    .line 192
    :pswitch_1
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 193
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e022c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 195
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0214

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 197
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 198
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 203
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 204
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 205
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 212
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 213
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 214
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 215
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 216
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 217
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    goto :goto_0

    .line 221
    :pswitch_4
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 222
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 223
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 224
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 225
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 226
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 227
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 229
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    goto :goto_0

    .line 234
    :pswitch_5
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 235
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 236
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 237
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 238
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 239
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 240
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 241
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 242
    const-string v0, "on"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "2592x1456"

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/ParametersManager;->getAppropriatePicSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 252
    :cond_0
    const-string v0, "2592x1952"

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/ParametersManager;->getAppropriatePicSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :pswitch_6
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 261
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 262
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 263
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 264
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 265
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 266
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 268
    const-string v0, "2048x1536"

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/ParametersManager;->getAppropriatePicSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    .line 270
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWideScreenvalue:Ljava/lang/String;

    .line 271
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 272
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 278
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTargetTrackingVaule:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :pswitch_7
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 285
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 286
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 287
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 290
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 292
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 293
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSteadyValue:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "2048x1152"

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/ParametersManager;->getAppropriatePicSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    :cond_1
    const-string v0, "2048x1536"

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/ParametersManager;->getAppropriatePicSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    goto/16 :goto_0

    .line 310
    :pswitch_8
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 311
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 312
    const-string v0, "none"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 316
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 320
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 323
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private setSettingValueFromPreferences()V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_distortion_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0222

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWideScreenvalue:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_timer_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0200

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_review_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e022c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_auto_focusmode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0220

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_facedetection_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e01f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_redeyedetection_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0178

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_iso_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e01dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_contrast_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e01b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_brightness_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_saturation_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_targettrackingmode_key"

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTargetTrackingVaule:Ljava/lang/String;

    .line 439
    return-void
.end method

.method private translateShootValueToIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, index:I
    const-string v1, "single"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const/4 v0, 0x0

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    const-string v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    const/4 v0, 0x4

    goto :goto_0

    .line 446
    :cond_2
    const-string v1, "burst"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 447
    const/4 v0, 0x3

    goto :goto_0

    .line 448
    :cond_3
    const-string v1, "panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    const/4 v0, 0x1

    goto :goto_0

    .line 450
    :cond_4
    const-string v1, "beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    const/4 v0, 0x6

    goto :goto_0

    .line 452
    :cond_5
    const-string v1, "group"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 453
    const/4 v0, 0x2

    goto :goto_0

    .line 454
    :cond_6
    const-string v1, "smile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 455
    const/4 v0, 0x5

    goto :goto_0

    .line 456
    :cond_7
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 457
    const/4 v0, 0x7

    goto :goto_0

    .line 458
    :cond_8
    const-string v1, "zsl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 459
    const/16 v0, 0x8

    goto :goto_0

    .line 460
    :cond_9
    const-string v1, "lowlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public getAutoFocusValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mAutoFocusValue:Ljava/lang/String;

    return-object v0
.end method

.method public getBrightnessDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    return-object v0
.end method

.method public getBrightnessValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightnessValue:Ljava/lang/String;

    return-object v0
.end method

.method public getColorEffectValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mColorEffectValue:Ljava/lang/String;

    return-object v0
.end method

.method public getContrastDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    return-object v0
.end method

.method public getContrastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDistortionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mDistortionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mExposureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceDecetionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFaceDecetionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mFlashValue:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureSizevalueValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPictureSizevalue:Ljava/lang/String;

    return-object v0
.end method

.method public getRedEyeReductionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mRedEyeReductionValue:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mReviewvalue:Ljava/lang/String;

    return-object v0
.end method

.method public getSaturationDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    return-object v0
.end method

.method public getSaturationValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getScenceDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSceneValue:Ljava/lang/String;

    return-object v0
.end method

.method public getShootingmodeIndex()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    return v0
.end method

.method public getTimerValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mTimervalue:Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteBalanceValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWhiteBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getWideScreenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mWideScreenvalue:Ljava/lang/String;

    return-object v0
.end method

.method public initImagejustMentValue()V
    .locals 2

    .prologue
    .line 489
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastDegrees()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0e01b0

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/ParametersManager;->getImagejustDefaultValue(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mContrast_default:Ljava/lang/String;

    .line 491
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessDegrees()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0e01b6

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/ParametersManager;->getImagejustDefaultValue(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mBrightness_default:Ljava/lang/String;

    .line 493
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationDegrees()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0e01b3

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/ParametersManager;->getImagejustDefaultValue(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mSaturation_default:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setConflitParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "mParameters"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setSettingValueFromPreferences()V

    .line 152
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    iget-boolean v1, p0, Lcom/android/hwcamera/ParametersManager;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_4

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    .line 163
    :goto_0
    iget v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    if-eqz v1, :cond_0

    .line 165
    iget v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    invoke-direct {p0, p1, v1}, Lcom/android/hwcamera/ParametersManager;->setParametersByShootmode(Landroid/hardware/Camera$Parameters;I)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setParameterByEffect()V

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setParameterByDistortion()V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/ParametersManager;->getSceneValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 177
    invoke-direct {p0}, Lcom/android/hwcamera/ParametersManager;->setParameterByScene()V

    .line 180
    :cond_3
    return-void

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_shootmode_key"

    iget-object v3, p0, Lcom/android/hwcamera/ParametersManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ParametersManager;->fromGooglePanoramaResetParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ParametersManager;->translateShootValueToIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/ParametersManager;->mShootModeIndex:I

    goto :goto_0
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/ParametersManager;->mIsImageCaptureIntent:Z

    .line 139
    return-void
.end method

.method public setScenceDefaultValue(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 468
    .local v0, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 472
    const-string v1, "off"

    iput-object v1, p0, Lcom/android/hwcamera/ParametersManager;->mScenceDefaultVaule:Ljava/lang/String;

    goto :goto_0
.end method

.method public unInitParametersManager()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/ParametersManager;->mPreference:Lcom/android/hwcamera/ComboPreferences;

    .line 76
    return-void
.end method
