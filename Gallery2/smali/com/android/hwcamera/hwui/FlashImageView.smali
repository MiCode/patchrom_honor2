.class public Lcom/android/hwcamera/hwui/FlashImageView;
.super Ljava/lang/Object;
.source "FlashImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;
    }
.end annotation


# instance fields
.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mFlashEnable:Z

.field private mFlashModeState:I

.field private mIsOnCamera:Z

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mOnFlashModeListener:Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;

.field private mResources:Landroid/content/res/Resources;

.field private mRotateImageView:Lcom/android/hwcamera/RotateImageView;

.field private mScenceDefaultValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V
    .locals 2
    .parameter "context"
    .parameter "rotateImageView"
    .parameter "isOnCamera"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    .line 16
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 17
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 18
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mOnFlashModeListener:Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;

    .line 19
    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 20
    iput v1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 21
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 24
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 50
    iput-boolean p3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    .line 51
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    .line 54
    :cond_0
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 91
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 96
    .local v0, flashModeImageResId:I
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0178

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iput v6, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 101
    const v0, 0x7f0200b7

    .line 121
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :cond_2
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    iput v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 104
    const v0, 0x7f0200b5

    goto :goto_1

    .line 106
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 107
    const v0, 0x7f0200b3

    goto :goto_1

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_video_flashmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e017e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    iput v6, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 115
    const v0, 0x7f0200b7

    goto :goto_1

    .line 116
    :cond_5
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iput v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 118
    const v0, 0x7f0200b5

    goto :goto_1
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 88
    return-void
.end method

.method public getFlashEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z
    .locals 8
    .parameter "preference"
    .parameter "shootmodeValue"

    .prologue
    const/4 v7, 0x0

    .line 182
    new-instance v3, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 183
    .local v3, shootCommon:Lcom/android/hwcamera/hwui/ShootCommon;
    invoke-virtual {v3, p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getFlashEnableByShootmode(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 184
    invoke-virtual {v3, p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v2

    .line 185
    .local v2, effectDistortionEnable:[Z
    aget-boolean v4, v2, v7

    if-eqz v4, :cond_0

    .line 186
    const-string v4, "pref_camera_coloreffect_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e0186

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, colorEffectValue:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 192
    .end local v0           #colorEffectValue:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    aget-boolean v4, v2, v4

    if-eqz v4, :cond_1

    .line 193
    const-string v4, "pref_camera_distortion_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e0222

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, distortionValue:Ljava/lang/String;
    const-string v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 199
    .end local v1           #distortionValue:Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getScenceEnableByShootMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    const-string v5, "pref_camera_scenemode_key"

    iget-object v6, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 202
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    .line 206
    :cond_2
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashEnable:Z

    return v4
.end method

.method public init(I)V
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FlashImageView;->update()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 137
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mOnFlashModeListener:Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;

    invoke-interface {v3}, Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;->onFlashModeChange()Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    .line 143
    .local v1, flashModeImageResId:I
    const/4 v2, 0x0

    .line 144
    .local v2, value:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    if-eqz v3, :cond_4

    .line 145
    iget v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    if-ne v4, v3, :cond_2

    .line 146
    iput v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 147
    const-string v2, "off"

    .line 148
    const v1, 0x7f0200b5

    .line 169
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 171
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v3, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, KEY:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mIsOnCamera:Z

    if-eqz v3, :cond_6

    .line 174
    const-string v0, "pref_camera_flashmode_key"

    .line 178
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v3, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v0           #KEY:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    if-ne v5, v3, :cond_3

    .line 150
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 151
    const-string v2, "auto"

    .line 152
    const v1, 0x7f0200b3

    goto :goto_1

    .line 154
    :cond_3
    iput v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 155
    const-string v2, "on"

    .line 156
    const v1, 0x7f0200b7

    goto :goto_1

    .line 159
    :cond_4
    iget v3, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    if-ne v4, v3, :cond_5

    .line 160
    iput v5, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 161
    const-string v2, "off"

    .line 162
    const v1, 0x7f0200b5

    goto :goto_1

    .line 164
    :cond_5
    iput v4, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mFlashModeState:I

    .line 165
    const-string v2, "torch"

    .line 166
    const v1, 0x7f0200b7

    goto :goto_1

    .line 176
    .restart local v0       #KEY:Ljava/lang/String;
    :cond_6
    const-string v0, "pref_camera_video_flashmode_key"

    goto :goto_2
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 67
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 58
    return-void
.end method

.method public setEnableEx(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 79
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/FlashImageView;->update()V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFlashMocdChangeListener(Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;)V
    .locals 0
    .parameter "flasModeChangeListener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mOnFlashModeListener:Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;

    .line 72
    return-void
.end method

.method public setScenceDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mScenceDefaultValue:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public unsetComboPreferences()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FlashImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 62
    return-void
.end method
