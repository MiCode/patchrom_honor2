.class public Lcom/android/hwcamera/hwui/TimerImageView;
.super Ljava/lang/Object;
.source "TimerImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;
    }
.end annotation


# instance fields
.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mOnTimerStateListener:Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;

.field private mResources:Landroid/content/res/Resources;

.field private mRotateImageView:Lcom/android/hwcamera/RotateImageView;

.field private mTimerState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V
    .locals 1
    .parameter "context"
    .parameter "rotateImageView"
    .parameter "isOnCamera"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mResources:Landroid/content/res/Resources;

    .line 17
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 18
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 19
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mOnTimerStateListener:Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;

    .line 20
    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 39
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    .line 41
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mResources:Landroid/content/res/Resources;

    .line 44
    :cond_0
    return-void
.end method

.method private update()V
    .locals 6

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 82
    .local v1, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 83
    .local v0, timerModeImageResId:I
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_timer_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0200

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 87
    const v0, 0x7f0200de

    .line 95
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 88
    :cond_1
    const-string v2, "5000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 90
    const v0, 0x7f0200dd

    goto :goto_1

    .line 92
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 93
    const v0, 0x7f0200dc

    goto :goto_1
.end method


# virtual methods
.method public init(I)V
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/TimerImageView;->update()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mOnTimerStateListener:Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;

    invoke-interface {v3}, Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;->onTimerStateChange()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    .line 115
    .local v1, timerStateImageResId:I
    const/4 v2, 0x0

    .line 116
    .local v2, value:Ljava/lang/String;
    iget v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    if-nez v3, :cond_2

    .line 117
    iput v4, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 118
    const-string v2, "5000"

    .line 119
    const v1, 0x7f0200dd

    .line 129
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 131
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v3, :cond_0

    .line 132
    const-string v0, "pref_camera_timer_key"

    .line 133
    .local v0, KEY:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v3, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0           #KEY:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    if-ne v4, v3, :cond_3

    .line 121
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 122
    const-string v2, "10000"

    .line 123
    const v1, 0x7f0200dc

    goto :goto_1

    .line 125
    :cond_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mTimerState:I

    .line 126
    const-string v2, "0"

    .line 127
    const v1, 0x7f0200de

    goto :goto_1
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 56
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 48
    return-void
.end method

.method public setEnableEx(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 66
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/TimerImageView;->update()V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mRotateImageView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setTimerStateChangeListener(Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;)V
    .locals 0
    .parameter "timerStateChangeListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mOnTimerStateListener:Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;

    .line 60
    return-void
.end method

.method public unsetComboPreferences()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/TimerImageView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 52
    return-void
.end method
