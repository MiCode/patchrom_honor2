.class public Lcom/android/hwcamera/hwui/TargetTrackingToggleView;
.super Ljava/lang/Object;
.source "TargetTrackingToggleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mIsOnCamera:Z

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mResources:Landroid/content/res/Resources;

.field private mRotateImageView:Lcom/android/hwcamera/RotateImageView;

.field private mTargetTrackingEnable:Z

.field private mTargetTrackingModeState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V
    .locals 1
    .parameter "context"
    .parameter "rotateImageView"
    .parameter "isOnCamera"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mResources:Landroid/content/res/Resources;

    .line 17
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 18
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 19
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingModeState:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingEnable:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mIsOnCamera:Z

    .line 33
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 35
    iput-boolean p3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mIsOnCamera:Z

    .line 36
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mResources:Landroid/content/res/Resources;

    .line 39
    :cond_0
    return-void
.end method

.method private update()V
    .locals 6

    .prologue
    const v5, 0x7f0e0175

    .line 67
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 90
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    .line 71
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 72
    .local v0, targetTrackingModeImageResId:I
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mIsOnCamera:Z

    if-eqz v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_targettrackingmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_1
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingModeState:I

    .line 83
    const v0, 0x7f0200e0

    .line 89
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_video_targettrackingmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 84
    :cond_3
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingModeState:I

    .line 86
    const v0, 0x7f0200df

    goto :goto_2
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 64
    return-void
.end method

.method public getTargetTrackingEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z
    .locals 2
    .parameter "preference"
    .parameter "shootmodeValue"

    .prologue
    .line 129
    new-instance v0, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 130
    .local v0, shootCommon:Lcom/android/hwcamera/hwui/ShootCommon;
    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/ShootCommon;->getTargetTrackingEnableByShootmode(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingEnable:Z

    .line 131
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingEnable:Z

    return v1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->update()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, targetTrackingModeImageResId:I
    const/4 v2, 0x0

    .line 104
    .local v2, value:Ljava/lang/String;
    iget v3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingModeState:I

    if-ne v4, v3, :cond_1

    .line 105
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingModeState:I

    .line 106
    const-string v2, "off"

    .line 107
    const v1, 0x7f0200df

    .line 114
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 116
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v3, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, KEY:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mIsOnCamera:Z

    if-eqz v3, :cond_2

    .line 119
    const-string v0, "pref_camera_targettrackingmode_key"

    .line 124
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v3, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0           #KEY:Ljava/lang/String;
    :cond_0
    return-void

    .line 109
    :cond_1
    iput v4, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mTargetTrackingModeState:I

    .line 110
    const-string v2, "on"

    .line 111
    const v1, 0x7f0200e0

    goto :goto_0

    .line 121
    .restart local v0       #KEY:Ljava/lang/String;
    :cond_2
    const-string v0, "pref_video_targettrackingmode_key"

    goto :goto_1
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 47
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 43
    return-void
.end method

.method public setEnableEx(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 55
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->update()V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method
