.class Lcom/android/server/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9500(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    float-to-int v2, v3

    .local v2, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, milliseconds:J
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSmartSensorValue:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)F

    move-result v3

    const/high16 v5, -0x4080

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9700(Lcom/android/server/PowerManagerService;)J

    move-result-wide v5

    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    cmp-long v3, v0, v5

    if-gez v3, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    const-string v3, "PowerManagerService"

    const-string v5, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    .end local v0           #milliseconds:J
    .end local v2           #value:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #milliseconds:J
    .restart local v2       #value:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSmartSensorValue:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)F

    move-result v3

    int-to-float v5, v2

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    #setter for: Lcom/android/server/PowerManagerService;->mSmartSensorValue:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$9602(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSmartBackLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/LightsService$Light;->sendSmartBackLight(I)V

    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    const-string v3, "PowerManagerService"

    const-string v5, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSmartSensorValue:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)F

    move-result v3

    int-to-float v5, v2

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v2

    #setter for: Lcom/android/server/PowerManagerService;->mSmartSensorValue:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$9602(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSmartBackLight:Lcom/android/server/LightsService$Light;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$9900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/LightsService$Light;->sendSmartBackLight(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
