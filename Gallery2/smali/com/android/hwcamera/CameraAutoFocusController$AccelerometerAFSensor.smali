.class public Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;
.super Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;
.source "CameraAutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraAutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccelerometerAFSensor"
.end annotation


# instance fields
.field private mPrevgSensorStatus:[F

.field private nStableTimes:I

.field final synthetic this$0:Lcom/android/hwcamera/CameraAutoFocusController;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraAutoFocusController;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->this$0:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;-><init>(Lcom/android/hwcamera/CameraAutoFocusController;)V

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->nStableTimes:I

    .line 98
    #getter for: Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {p1}, Lcom/android/hwcamera/CameraAutoFocusController;->access$000(Lcom/android/hwcamera/CameraAutoFocusController;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mSensor:Landroid/hardware/Sensor;

    .line 99
    const-string v0, "accelerometer"

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mSensorName:Ljava/lang/String;

    .line 100
    return-void

    .line 94
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public initialize(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->reset()V

    .line 145
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mInitialize:Z

    .line 150
    return-void
.end method

.method public isMoving([F)Z
    .locals 6
    .parameter "paramArrayOfFloat"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    iget-boolean v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    if-nez v4, :cond_5

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, change:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 106
    aget v4, p1, v1

    iget-object v5, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f99999a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 107
    const/4 v0, 0x1

    .line 112
    :cond_0
    if-eqz v0, :cond_3

    .line 113
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 114
    iget-object v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    aget v5, p1, v1

    aput v5, v4, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iget-boolean v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    if-nez v4, :cond_4

    :goto_2
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    .line 138
    :cond_3
    :goto_3
    iget-boolean v2, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    return v2

    :cond_4
    move v2, v3

    .line 116
    goto :goto_2

    .line 119
    .end local v0           #change:Z
    .end local v1           #i:I
    :cond_5
    const/4 v0, 0x1

    .line 120
    .restart local v0       #change:Z
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 121
    aget v4, p1, v1

    iget-object v5, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    aget v5, v5, v1

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 122
    const/4 v0, 0x0

    .line 125
    :cond_6
    iget-object v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mPrevgSensorStatus:[F

    aget v5, p1, v1

    aput v5, v4, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 128
    :cond_7
    if-eqz v0, :cond_9

    .line 129
    iget v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->nStableTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->nStableTimes:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 130
    iput v3, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->nStableTimes:I

    .line 131
    iget-boolean v4, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    if-nez v4, :cond_8

    :goto_5
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_5

    .line 134
    :cond_9
    iput v3, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->nStableTimes:I

    goto :goto_3
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->mMovingState:Z

    .line 154
    iput v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AccelerometerAFSensor;->nStableTimes:I

    .line 155
    return-void
.end method
