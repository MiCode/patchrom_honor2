.class public Lcom/android/hwcamera/CameraAutoFocusController$GyroscopeAFSensor;
.super Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;
.source "CameraAutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraAutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GyroscopeAFSensor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraAutoFocusController;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraAutoFocusController;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/CameraAutoFocusController$GyroscopeAFSensor;->this$0:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {p0, p1}, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;-><init>(Lcom/android/hwcamera/CameraAutoFocusController;)V

    .line 164
    #getter for: Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {p1}, Lcom/android/hwcamera/CameraAutoFocusController;->access$000(Lcom/android/hwcamera/CameraAutoFocusController;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    #getter for: Lcom/android/hwcamera/CameraAutoFocusController;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/hwcamera/CameraAutoFocusController;->access$100(Lcom/android/hwcamera/CameraAutoFocusController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensor.TYPE_GYROSCOPE list num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    #getter for: Lcom/android/hwcamera/CameraAutoFocusController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {p1}, Lcom/android/hwcamera/CameraAutoFocusController;->access$000(Lcom/android/hwcamera/CameraAutoFocusController;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController$GyroscopeAFSensor;->mSensor:Landroid/hardware/Sensor;

    .line 167
    const-string v1, "gyroscope"

    iput-object v1, p0, Lcom/android/hwcamera/CameraAutoFocusController$GyroscopeAFSensor;->mSensorName:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public initialize(Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 178
    return-void
.end method

.method public isMoving([F)Z
    .locals 1
    .parameter "paramArrayOfFloat"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$GyroscopeAFSensor;->mMovingState:Z

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
