.class public abstract Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;
.super Ljava/lang/Object;
.source "CameraAutoFocusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraAutoFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AFSensor"
.end annotation


# instance fields
.field protected mInitialize:Z

.field protected mMovingState:Z

.field protected mSensor:Landroid/hardware/Sensor;

.field protected mSensorName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/hwcamera/CameraAutoFocusController;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraAutoFocusController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->this$0:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mSensor:Landroid/hardware/Sensor;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mSensorName:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mMovingState:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mInitialize:Z

    return-void
.end method


# virtual methods
.method public getSensor()Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public getSensorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mSensorName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract initialize(Landroid/hardware/SensorEvent;)V
.end method

.method public isInitialize()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/hwcamera/CameraAutoFocusController$AFSensor;->mInitialize:Z

    return v0
.end method

.method public abstract isMoving([F)Z
.end method

.method public abstract reset()V
.end method
