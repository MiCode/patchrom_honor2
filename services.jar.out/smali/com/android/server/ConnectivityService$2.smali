.class Lcom/android/server/ConnectivityService$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3367
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3370
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3372
    .local v2, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "keyguard"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    .line 3374
    .local v9, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isLockScreenDisabled()Z

    move-result v4

    .line 3375
    .local v4, disable:Z
    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v11

    .line 3376
    .local v11, locked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "max_level"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    if-nez v4, :cond_0

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v11, v0, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3379
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "max_level"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-nez v4, :cond_4

    .line 3380
    const-string v17, "android.intent.action.KEYGUARD_UNLOCK"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 3382
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "receive keyguard unlock intent!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 3385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "stop powersaving action!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)V

    .line 3387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3389
    :cond_1
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3404
    :cond_2
    :goto_0
    const-string v17, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 3406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 3407
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "receive screen off intent!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3408
    const/4 v6, 0x0

    .line 3410
    .local v6, isDataConnected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v10, v3

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v10, :cond_7

    aget-object v13, v3, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3411
    .local v13, nt:Landroid/net/NetworkStateTracker;
    if-nez v13, :cond_6

    .line 3410
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3389
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isDataConnected:Z
    .end local v10           #len$:I
    .end local v13           #nt:Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 3392
    :cond_4
    const-string v17, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 3394
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "receive screen on intent!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "stop powersaving action!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3401
    :cond_5
    monitor-exit v18

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v17

    .line 3414
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v5       #i$:I
    .restart local v6       #isDataConnected:Z
    .restart local v10       #len$:I
    .restart local v13       #nt:Landroid/net/NetworkStateTracker;
    :cond_6
    :try_start_4
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    .line 3415
    .local v12, netType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 3416
    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v13}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3417
    const/4 v6, 0x1

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "mobile data connected!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3424
    .end local v12           #netType:I
    .end local v13           #nt:Landroid/net/NetworkStateTracker;
    :cond_7
    const/4 v8, 0x0

    .line 3425
    .local v8, isWifiApOn:Z
    const-string v17, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 3426
    .local v16, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v16, :cond_8

    .line 3427
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    .line 3430
    :cond_8
    if-eqz v8, :cond_e

    .line 3431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "Wifi Ap is on"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3439
    :goto_2
    const/4 v7, 0x0

    .line 3440
    .local v7, isUsbTetheringOn:Z
    const-string v17, "sys.isusbtetheringon"

    const-string v19, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3441
    .local v15, usbTetheringState:Ljava/lang/String;
    if-eqz v15, :cond_9

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3442
    const/4 v7, 0x1

    .line 3446
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 3447
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "max_level"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    if-nez v4, :cond_c

    .line 3449
    :cond_a
    if-nez v8, :cond_c

    if-nez v7, :cond_c

    .line 3450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "start powersaving action!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 3451
    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mSmartKeyguardLevel:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v17

    const-string v19, "min_level"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 3452
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)V

    .line 3456
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3463
    :cond_c
    monitor-exit v18

    .line 3488
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isDataConnected:Z
    .end local v7           #isUsbTetheringOn:Z
    .end local v8           #isWifiApOn:Z
    .end local v10           #len$:I
    .end local v15           #usbTetheringState:Ljava/lang/String;
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_d
    :goto_4
    return-void

    .line 3433
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v5       #i$:I
    .restart local v6       #isDataConnected:Z
    .restart local v8       #isWifiApOn:Z
    .restart local v10       #len$:I
    .restart local v16       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    const-string v19, "Wifi Ap is off"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3463
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isDataConnected:Z
    .end local v8           #isWifiApOn:Z
    .end local v10           #len$:I
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v17

    .line 3454
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v5       #i$:I
    .restart local v6       #isDataConnected:Z
    .restart local v7       #isUsbTetheringOn:Z
    .restart local v8       #isWifiApOn:Z
    .restart local v10       #len$:I
    .restart local v15       #usbTetheringState:Ljava/lang/String;
    .restart local v16       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSavingI(Z)V
    invoke-static {v0, v11}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 3464
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v6           #isDataConnected:Z
    .end local v7           #isUsbTetheringOn:Z
    .end local v8           #isWifiApOn:Z
    .end local v10           #len$:I
    .end local v15           #usbTetheringState:Ljava/lang/String;
    .end local v16           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_10
    const-string v17, "android.telephony.turnoff_DC"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3466
    sget-boolean v17, Lcom/android/server/ConnectivityService;->useCtrlSocket:Z

    if-eqz v17, :cond_11

    .line 3469
    const/16 v17, 0x64

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Ldalvik/system/Zygote;->ctrlSockets(II)I

    move-result v14

    .line 3470
    .local v14, retVal:I
    const-string v17, "ConnectivityService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "INTENT_TURNOFF_DC retVal: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    if-nez v14, :cond_d

    .line 3473
    const-string v17, "ConnectivityService"

    const-string v18, "turn off Data Connection!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)V

    goto :goto_4

    .line 3478
    .end local v14           #retVal:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/ConnectivityService;->mPowerSavingLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 3479
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 3481
    const-string v17, "ConnectivityService"

    const-string v19, "turn off Data Connection!"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v17, v0

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static/range {v17 .. v17}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)V

    .line 3484
    :cond_12
    monitor-exit v18

    goto/16 :goto_4

    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v17
.end method
