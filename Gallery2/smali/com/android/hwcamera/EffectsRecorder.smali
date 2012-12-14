.class public Lcom/android/hwcamera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# instance fields
.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mCurrentEffect:I

.field private mEffect:I

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOrientationHint:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mCaptureRate:D

    .line 92
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mOrientationHint:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxFileSize:J

    .line 94
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mMaxDurationMs:I

    .line 95
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCameraFacing:I

    .line 97
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mEffect:I

    .line 98
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mCurrentEffect:I

    .line 119
    iput v2, p0, Lcom/android/hwcamera/EffectsRecorder;->mState:I

    .line 121
    const-string v0, "effectsrecorder"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/EffectsRecorder;->mLogVerbose:Z

    return-void
.end method
