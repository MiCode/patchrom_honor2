.class final Lcom/android/server/pm/ShutdownThread$1;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 199
    const-string v8, "ShutdownThread"

    const-string v9, "begin shutdownThread"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->savePhoneState(Landroid/content/Context;)V

    .line 202
    const-string v8, "persist.sys.quickpoweron"

    const-string v9, "startshutdown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V

    .line 206
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->setPoweroffState(Landroid/content/Context;)V

    .line 207
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->killRunningProcess(Landroid/content/Context;)V

    .line 208
    const-string v8, "ShutdownThread"

    const-string v9, " before setModemPower(false)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 212
    .local v4, modePhone:Lcom/android/internal/telephony/ITelephony;
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4, v8}, Lcom/android/internal/telephony/ITelephony;->setModemPower(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    const-string v8, "ShutdownThread"

    const-string v9, " after setModemPower(false)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, p0, Lcom/android/server/pm/ShutdownThread$1;->val$context:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 221
    .local v6, vibrator:Landroid/os/Vibrator;
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-virtual {v6, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_1
    const-wide/16 v8, 0x1f4

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 231
    :goto_2
    const-string v8, "persist.sys.quickpoweron"

    const-string v9, "shutdown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :try_start_3
    const-string v8, "persist.sys.quickpoweron"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, tmp1:Ljava/lang/String;
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 237
    .local v3, mPowerManagerService:Landroid/os/IPowerManager;
    const-string v8, "startpoweron"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-interface {v3, v8, v9}, Landroid/os/IPowerManager;->goToSleep(J)V

    .line 242
    :cond_0
    const-string v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 244
    .local v7, windowManager:Landroid/view/IWindowManager;
    const/4 v8, 0x0

    :try_start_4
    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->resetHdmiState(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 249
    :goto_3
    const-wide/16 v8, 0x1f4

    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 253
    :goto_4
    const/4 v0, 0x0

    .line 255
    .local v0, bBattery:Z
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$000()Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IBatteryStats;->isOnBattery()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v0

    .line 260
    :goto_5
    if-nez v0, :cond_3

    .line 262
    :try_start_7
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 263
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 264
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/pm/ShutdownThread;->access$102(Ljava/lang/Process;)Ljava/lang/Process;

    .line 266
    :cond_1
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 267
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
    :cond_2
    sget-object v8, Lcom/android/server/pm/ShutdownThread;->mH:Landroid/os/Handler;

    sget-object v9, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    const-wide/16 v10, 0x2328

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    const-string v8, "ShutdownThread"

    const-string v9, "going to showPoweroffCharge"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->showPowerOffCharge()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 278
    .end local v0           #bBattery:Z
    .end local v3           #mPowerManagerService:Landroid/os/IPowerManager;
    .end local v5           #tmp1:Ljava/lang/String;
    .end local v7           #windowManager:Landroid/view/IWindowManager;
    :cond_3
    :goto_6
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 279
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 281
    :cond_4
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$300()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 282
    const/4 v8, 0x0

    :try_start_8
    invoke-static {v8}, Lcom/android/server/pm/ShutdownThread;->access$402(Z)Z

    .line 283
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 284
    return-void

    .line 213
    .end local v6           #vibrator:Landroid/os/Vibrator;
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 222
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v6       #vibrator:Landroid/os/Vibrator;
    :catch_1
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to vibrate during shutdown."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 256
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bBattery:Z
    .restart local v3       #mPowerManagerService:Landroid/os/IPowerManager;
    .restart local v5       #tmp1:Ljava/lang/String;
    .restart local v7       #windowManager:Landroid/view/IWindowManager;
    :catch_2
    move-exception v1

    .line 257
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 258
    const/4 v0, 0x0

    goto :goto_5

    .line 274
    .end local v0           #bBattery:Z
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #mPowerManagerService:Landroid/os/IPowerManager;
    .end local v5           #tmp1:Ljava/lang/String;
    .end local v7           #windowManager:Landroid/view/IWindowManager;
    :catch_3
    move-exception v2

    .line 275
    .local v2, ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "go to sleep error "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 283
    .end local v2           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v8

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v8

    .line 229
    :catch_4
    move-exception v8

    goto/16 :goto_2

    .line 245
    .restart local v3       #mPowerManagerService:Landroid/os/IPowerManager;
    .restart local v5       #tmp1:Ljava/lang/String;
    .restart local v7       #windowManager:Landroid/view/IWindowManager;
    :catch_5
    move-exception v8

    goto/16 :goto_3

    .line 250
    :catch_6
    move-exception v8

    goto/16 :goto_4
.end method
