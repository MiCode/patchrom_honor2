.class Lcom/android/hwcamera/CameraMovedController$SensorValue;
.super Ljava/lang/Object;
.source "CameraMovedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/CameraMovedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorValue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/CameraMovedController;

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/CameraMovedController;FFF)V
    .locals 0
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->this$0:Lcom/android/hwcamera/CameraMovedController;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->x:F

    .line 183
    iput p3, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->y:F

    .line 184
    iput p4, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->z:F

    .line 185
    return-void
.end method


# virtual methods
.method public init(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 171
    iput p1, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->x:F

    .line 172
    iput p2, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->y:F

    .line 173
    iput p3, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->z:F

    .line 174
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/CameraMovedController$SensorValue;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
