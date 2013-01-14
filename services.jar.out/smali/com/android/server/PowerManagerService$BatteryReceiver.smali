.class final Lcom/android/server/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v8, 0x3f80

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    .local v2, wasPowered:Z
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$802(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighLight:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1100(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Lcom/android/server/PowerManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .local v1, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)F

    move-result v5

    add-float/2addr v5, v8

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCurAutoBrightnessLevel:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1600(Lcom/android/server/PowerManagerService;)F

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mSavedCurAutoBrightnessLevel:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1502(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighLightValue:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)I

    move-result v5

    int-to-float v5, v5

    #setter for: Lcom/android/server/PowerManagerService;->mCurAutoBrightnessLevel:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1602(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mCalled:Z
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1802(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSavedLightValue:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v5

    const/4 v6, 0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v3, v5, v6}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;IZ)V

    .end local v1           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2500(Lcom/android/server/PowerManagerService;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/BatteryService;->getPlugType()I

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mPlugType:I
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$2602(Lcom/android/server/PowerManagerService;I)I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateCallingLimit()V
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v3, v3, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;)V

    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    monitor-exit v4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/android/server/PowerManagerService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .restart local v1       #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v6, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSavedLightValue:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->access$2200(Lcom/android/server/PowerManagerService;)[I

    move-result-object v7

    #calls: Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I
    invoke-static {v5, v6, v7}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I[I)I

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$2102(Lcom/android/server/PowerManagerService;I)I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1400(Lcom/android/server/PowerManagerService;)F

    move-result v5

    add-float/2addr v5, v8

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;F)F

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mCalled:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSavedCurAutoBrightnessLevel:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v3

    const/high16 v5, -0x4080

    cmpl-float v3, v3, v5

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2400(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_auto_brightness_adj"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .local v0, adj:F
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    add-float v5, v0, v8

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    #setter for: Lcom/android/server/PowerManagerService;->mCurAutoBrightnessLevel:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1602(Lcom/android/server/PowerManagerService;F)F

    .end local v0           #adj:F
    :goto_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mCalled:Z
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1802(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSavedLightValue:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)I

    move-result v5

    const/4 v6, 0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v3, v5, v6}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;IZ)V

    goto/16 :goto_0

    .end local v1           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    .end local v2           #wasPowered:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    .restart local v2       #wasPowered:Z
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSavedCurAutoBrightnessLevel:F
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)F

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mCurAutoBrightnessLevel:F
    invoke-static {v3, v5}, Lcom/android/server/PowerManagerService;->access$1602(Lcom/android/server/PowerManagerService;F)F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
