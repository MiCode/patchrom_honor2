.class public Lcom/android/hwcamera/ResetPreference;
.super Ljava/lang/Object;
.source "ResetPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p1}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 34
    return-void
.end method

.method private getImagejustDefaultValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 61
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 62
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

.method private resetBackValues()V
    .locals 15

    .prologue
    .line 86
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0200

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, timerValue:Ljava/lang/String;
    const-string v13, "pref_camera_timer_key"

    invoke-direct {p0, v13, v9}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0186

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, colorValue:Ljava/lang/String;
    const-string v13, "pref_camera_coloreffect_key"

    invoke-direct {p0, v13, v1}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0222

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, distorValue:Ljava/lang/String;
    const-string v13, "pref_camera_distortion_key"

    invoke-direct {p0, v13, v3}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01b0

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, mcontrastValue:Ljava/lang/String;
    const-string v13, "pref_camera_contrast_key"

    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastDegrees()Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14, v6}, Lcom/android/hwcamera/ResetPreference;->getImagejustDefaultValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01b3

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, saturationValue:Ljava/lang/String;
    const-string v13, "pref_camera_saturation_key"

    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationDegrees()Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14, v7}, Lcom/android/hwcamera/ResetPreference;->getImagejustDefaultValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01b5

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, exposureValue:Ljava/lang/String;
    const-string v13, "pref_camera_exposure_key"

    invoke-direct {p0, v13, v4}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01b6

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, mbrightnessValue:Ljava/lang/String;
    const-string v13, "pref_camera_brightness_key"

    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessDegrees()Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14, v5}, Lcom/android/hwcamera/ResetPreference;->getImagejustDefaultValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v13, "ro.camera.resetOption.verizon"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 108
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0208

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, shootValue:Ljava/lang/String;
    const-string v13, "pref_camera_shootmode_key"

    invoke-direct {p0, v13, v8}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .end local v8           #shootValue:Ljava/lang/String;
    :cond_0
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0186

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, videoColorValue:Ljava/lang/String;
    const-string v13, "pref_video_coloreffect_key"

    invoke-direct {p0, v13, v10}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e0222

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, videoDistortionValue:Ljava/lang/String;
    const-string v13, "pref_video_distortion_key"

    invoke-direct {p0, v13, v11}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v13, "ro.camera.resetOption.verizon"

    const-string v14, "0"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 119
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e017f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, whiteBalanceValue:Ljava/lang/String;
    const-string v13, "pref_camera_whitebalance_key"

    invoke-direct {p0, v13, v12}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v13, "pref_video_whitebalance_key"

    invoke-direct {p0, v13, v12}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01b6

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, brightnessValue:Ljava/lang/String;
    const-string v13, "pref_camera_brightness_key"

    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessDegrees()Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14, v0}, Lcom/android/hwcamera/ResetPreference;->getImagejustDefaultValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v13, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v14, 0x7f0e01b0

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, contrastValue:Ljava/lang/String;
    const-string v13, "pref_camera_contrast_key"

    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastDegrees()Ljava/util/List;

    move-result-object v14

    invoke-direct {p0, v14, v2}, Lcom/android/hwcamera/ResetPreference;->getImagejustDefaultValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v13, v14}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v0           #brightnessValue:Ljava/lang/String;
    .end local v2           #contrastValue:Ljava/lang/String;
    .end local v12           #whiteBalanceValue:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "KEY"
    .parameter "defaultvalue"

    .prologue
    .line 71
    if-nez p2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, p1, p2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private resetFrontValues()V
    .locals 10

    .prologue
    const v9, 0x7f0e0222

    const v8, 0x7f0e0186

    .line 139
    iget-object v6, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0200

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, timerValue:Ljava/lang/String;
    const-string v6, "pref_camera_timer_key"

    invoke-direct {p0, v6, v3}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, colorValue:Ljava/lang/String;
    const-string v6, "pref_camera_coloreffect_key"

    invoke-direct {p0, v6, v0}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v6, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, distorValue:Ljava/lang/String;
    const-string v6, "pref_camera_distortion_key"

    invoke-direct {p0, v6, v1}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v6, "ro.camera.resetOption.verizon"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    iget-object v6, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0208

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, shootValue:Ljava/lang/String;
    const-string v6, "pref_camera_shootmode_key"

    invoke-direct {p0, v6, v2}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v2           #shootValue:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, videoColorValue:Ljava/lang/String;
    const-string v6, "pref_video_coloreffect_key"

    invoke-direct {p0, v6, v4}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, videoDistortionValue:Ljava/lang/String;
    const-string v6, "pref_video_distortion_key"

    invoke-direct {p0, v6, v5}, Lcom/android/hwcamera/ResetPreference;->resetDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pref"
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 159
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    return-void
.end method


# virtual methods
.method public resetCameraPreference()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 37
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 40
    .local v1, currentCameraId:I
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 41
    .local v0, backCameraId:I
    if-eq v0, v5, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 43
    invoke-direct {p0}, Lcom/android/hwcamera/ResetPreference;->resetBackValues()V

    .line 45
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getFrontCameraId()I

    move-result v2

    .line 46
    .local v2, frontCameraId:I
    if-eq v2, v5, :cond_1

    .line 47
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 48
    invoke-direct {p0}, Lcom/android/hwcamera/ResetPreference;->resetFrontValues()V

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/ResetPreference;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/ResetPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 55
    return-void
.end method
