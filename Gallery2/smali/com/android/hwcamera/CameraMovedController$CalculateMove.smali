.class public Lcom/android/hwcamera/CameraMovedController$CalculateMove;
.super Ljava/lang/Object;
.source "CameraMovedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraMovedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalculateMove"
.end annotation


# instance fields
.field private currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

.field private isMoveReady:Z

.field private prevSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

.field final synthetic this$0:Lcom/android/hwcamera/CameraMovedController;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraMovedController;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    iput-object p1, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->this$0:Lcom/android/hwcamera/CameraMovedController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->isMoveReady:Z

    .line 122
    new-instance v0, Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget-object v1, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->this$0:Lcom/android/hwcamera/CameraMovedController;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/hwcamera/CameraMovedController$SensorValue;-><init>(Lcom/android/hwcamera/CameraMovedController;FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->prevSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    .line 123
    new-instance v0, Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget-object v1, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->this$0:Lcom/android/hwcamera/CameraMovedController;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/hwcamera/CameraMovedController$SensorValue;-><init>(Lcom/android/hwcamera/CameraMovedController;FFF)V

    iput-object v0, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    return-void
.end method

.method private calculateMove(Lcom/android/hwcamera/CameraMovedController$SensorValue;Lcom/android/hwcamera/CameraMovedController$SensorValue;)Z
    .locals 3
    .parameter "sensorValue1"
    .parameter "sensorValue2"

    .prologue
    const/4 v0, 0x1

    .line 152
    iget v1, p1, Lcom/android/hwcamera/CameraMovedController$SensorValue;->x:F

    iget v2, p2, Lcom/android/hwcamera/CameraMovedController$SensorValue;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/hwcamera/CameraMovedController;->MOVE_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget v1, p1, Lcom/android/hwcamera/CameraMovedController$SensorValue;->y:F

    iget v2, p2, Lcom/android/hwcamera/CameraMovedController$SensorValue;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/hwcamera/CameraMovedController;->MOVE_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 160
    iget v1, p1, Lcom/android/hwcamera/CameraMovedController$SensorValue;->z:F

    iget v2, p2, Lcom/android/hwcamera/CameraMovedController$SensorValue;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/android/hwcamera/CameraMovedController;->MOVE_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isMoving([F)Z
    .locals 7
    .parameter "paramArrayOfFloat"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    iget-boolean v3, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->isMoveReady:Z

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->prevSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    aget v4, p1, v1

    aget v2, p1, v2

    aget v5, p1, v6

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/hwcamera/CameraMovedController$SensorValue;->init(FFF)V

    .line 130
    iput-boolean v1, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->isMoveReady:Z

    .line 146
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    aget v4, p1, v1

    aget v5, p1, v2

    aget v6, p1, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/hwcamera/CameraMovedController$SensorValue;->init(FFF)V

    .line 138
    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->prevSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget-object v4, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->calculateMove(Lcom/android/hwcamera/CameraMovedController$SensorValue;Lcom/android/hwcamera/CameraMovedController$SensorValue;)Z

    move-result v0

    .line 139
    .local v0, change:Z
    if-eqz v0, :cond_1

    .line 140
    iput-boolean v2, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->isMoveReady:Z

    move v1, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->prevSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget-object v3, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget v3, v3, Lcom/android/hwcamera/CameraMovedController$SensorValue;->x:F

    iget-object v4, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget v4, v4, Lcom/android/hwcamera/CameraMovedController$SensorValue;->y:F

    iget-object v5, p0, Lcom/android/hwcamera/CameraMovedController$CalculateMove;->currentSensorValue:Lcom/android/hwcamera/CameraMovedController$SensorValue;

    iget v5, v5, Lcom/android/hwcamera/CameraMovedController$SensorValue;->z:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/hwcamera/CameraMovedController$SensorValue;->init(FFF)V

    goto :goto_0
.end method
