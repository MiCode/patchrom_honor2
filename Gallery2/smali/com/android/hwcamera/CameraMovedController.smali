.class public Lcom/android/hwcamera/CameraMovedController;
.super Ljava/lang/Object;
.source "CameraMovedController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/CameraMovedController$SensorValue;,
        Lcom/android/hwcamera/CameraMovedController$CalculateMove;,
        Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;
    }
.end annotation


# static fields
.field public static MOVE_THRESHOLD:F


# instance fields
.field private TAG:Ljava/lang/String;

.field private calculateMove:Lcom/android/hwcamera/CameraMovedController$CalculateMove;

.field private isRegisted:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private onCameraMovedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/hwcamera/CameraMovedController;->MOVE_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const-string v0, "accelerometer"

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/CameraMovedController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "sensorType"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "CameraMovedController"

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController;->isRegisted:Z

    .line 31
    new-instance v0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraMovedController$CalculateMove;-><init>(Lcom/android/hwcamera/CameraMovedController;)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->calculateMove:Lcom/android/hwcamera/CameraMovedController$CalculateMove;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    .line 40
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 42
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/CameraMovedController;->createSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensor:Landroid/hardware/Sensor;

    .line 43
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "accelerometer"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/CameraMovedController;->createSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensor:Landroid/hardware/Sensor;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V
    .locals 3
    .parameter "cameraMovedListener"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController;->isRegisted:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/hwcamera/CameraMovedController;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor register failed, sensor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/CameraMovedController;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController;->isRegisted:Z

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController;->isRegisted:Z

    goto :goto_0
.end method

.method public createSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 3
    .parameter "type"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, sensor:Landroid/hardware/Sensor;
    const-string v1, "accelerometer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    const-string v1, "gyroscope"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "line_accelerometer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 98
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 116
    :cond_0
    return-void

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController;->calculateMove:Lcom/android/hwcamera/CameraMovedController$CalculateMove;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->isMoving([F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    .line 107
    .local v2, listener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;
    if-eqz v2, :cond_2

    .line 109
    :try_start_0
    invoke-interface {v2}, Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;->onCameraMoved()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController;->isRegisted:Z

    .line 200
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 201
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->TAG:Ljava/lang/String;

    const-string v1, "CameraMovedController unregisted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 204
    :cond_0
    return-void
.end method

.method public removeOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V
    .locals 3
    .parameter "cameraMovedListener"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOnCameraMovedListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->onCameraMovedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->TAG:Ljava/lang/String;

    const-string v1, "listener sizes is 0  unregisterListener!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/hwcamera/CameraMovedController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController;->isRegisted:Z

    .line 93
    :cond_1
    return-void
.end method
