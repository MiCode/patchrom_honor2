.class public Lcom/android/hwcamera/hwui/ShootCommon;
.super Ljava/lang/Object;
.source "ShootCommon.java"


# instance fields
.field public mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mResources:Landroid/content/res/Resources;

.field private mScenceDefaultValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V
    .locals 1
    .parameter "preference"
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mScenceDefaultValue:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mResources:Landroid/content/res/Resources;

    .line 27
    return-void
.end method

.method public static getScenceEnableByShootMode(Ljava/lang/String;)Z
    .locals 2
    .parameter "shootmodeValue"

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, scenceEnable:Z
    const-string v1, "hdr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :cond_0
    const-string v1, "panorama"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 123
    :cond_1
    const-string v1, "lowlight"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    const/4 v0, 0x0

    .line 126
    :cond_2
    return v0
.end method


# virtual methods
.method public getAutoFocusEnable(Ljava/lang/String;)Z
    .locals 2
    .parameter "shootmodeValue"

    .prologue
    .line 129
    const/4 v0, 0x1

    .line 130
    .local v0, autoFocusEnable:Z
    const-string v1, "group"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :cond_0
    const-string v1, "smile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 136
    :cond_1
    const-string v1, "beauty"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    const/4 v0, 0x0

    .line 139
    :cond_2
    return v0
.end method

.method public getColoreffectValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_coloreffect_key"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, colorvalue:Ljava/lang/String;
    return-object v0
.end method

.method public getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    const/4 v1, 0x2

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    .line 34
    .local v0, result:[Z
    const-string v1, "single"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    aput-boolean v2, v0, v3

    .line 36
    aput-boolean v2, v0, v2

    .line 38
    :cond_0
    const-string v1, "zsl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    aput-boolean v2, v0, v3

    .line 40
    aput-boolean v2, v0, v2

    .line 42
    :cond_1
    return-object v0

    .line 33
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public getFlashEnableByShootmode(Ljava/lang/String;)Z
    .locals 2
    .parameter "shootmodeValue"

    .prologue
    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, flashEnable:Z
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/4 v0, 0x0

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    const-string v1, "burst"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_2
    const-string v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_3
    const-string v1, "panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_4
    const-string v1, "group"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "lowlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_6
    const-string v1, "smile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScenemodeValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_scenemode_key"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getShootmodeValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_shootmode_key"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public getTargetTrackingEnableByShootmode(Ljava/lang/String;)Z
    .locals 2
    .parameter "shootmodeValue"

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, targetTrackingEnable:Z
    const-string v1, "panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    :cond_0
    return v0
.end method

.method public isWhiteBalanceEnable(Z)Z
    .locals 2
    .parameter "effectEnable"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ShootCommon;->getColoreffectValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ShootCommon;->getScenemodeValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScenemodeDefaultValue(Lcom/android/hwcamera/PreferenceGroup;)Ljava/lang/String;
    .locals 3
    .parameter "preferenceGroup"

    .prologue
    .line 189
    const-string v1, "pref_camera_scenemode_key"

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 190
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-eqz v0, :cond_0

    .line 191
    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 192
    const-string v1, "off"

    iput-object v1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mScenceDefaultValue:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/ShootCommon;->mScenceDefaultValue:Ljava/lang/String;

    return-object v1
.end method

.method public transformVauletoInt(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 142
    const-string v1, "single"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    const-string v1, "hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const/4 v0, 0x4

    goto :goto_0

    .line 148
    :cond_2
    const-string v1, "smile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const/4 v0, 0x5

    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    const/4 v0, 0x6

    goto :goto_0

    .line 154
    :cond_4
    const-string v1, "burst"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    const/4 v0, 0x3

    goto :goto_0

    .line 157
    :cond_5
    const-string v1, "panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :cond_6
    const-string v1, "action"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 161
    const/4 v0, 0x7

    goto :goto_0

    .line 163
    :cond_7
    const-string v1, "group"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 164
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    :cond_8
    const-string v1, "zsl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 167
    const/16 v0, 0x8

    goto :goto_0

    .line 169
    :cond_9
    const-string v1, "lowlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/16 v0, 0x9

    goto :goto_0
.end method
