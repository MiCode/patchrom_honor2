.class Lcom/android/server/wm/InputMonitor$2;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/InputMonitor;->isFastPowerisRun:Z

    new-instance v16, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v2, v2, Lcom/android/server/wm/InputMonitor;->mSetModemPowerOn:Ljava/lang/Runnable;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v16, setModemOnThread:Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    #getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    .local v13, mContext:Landroid/content/Context;
    const-string v2, "persist.sys.quickpoweron"

    const-string v4, "startpoweron"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "true"

    const-string v4, "ro.poweroff_alarm"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v13}, Lcom/android/internal/policy/Powerstate;->restorePhoneState(Landroid/content/Context;)V

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v15

    .local v15, mPowerManagerService:Landroid/os/IPowerManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v15, v2}, Landroid/os/IPowerManager;->SetScreenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->destroyPowerOffCharge()V

    const-wide/16 v4, 0x12c

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    #calls: Lcom/android/server/wm/InputMonitor;->quitNatuallySleep()V
    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$100(Lcom/android/server/wm/InputMonitor;)V

    sget-object v2, Lcom/android/server/pm/ShutdownThread;->mH:Landroid/os/Handler;

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v2, "input monitor OoO"

    const-string v4, "I am going to Powerstate.showAnimationAgain"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v14, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v14, mHomeIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1020

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v13, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {v13}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    const-string v2, "persist.sys.actualpoweron"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v3, bootComIntent:Landroid/content/Intent;
    const-string v2, "hwbootcompleted"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .local v1, mActivityManager:Landroid/app/IActivityManager;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1           #mActivityManager:Landroid/app/IActivityManager;
    :goto_2
    invoke-static {v13}, Lcom/android/internal/policy/Powerstate;->restoreSensorState(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/InputMonitor;->isFastPowerisRun:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v2, v2, Lcom/android/server/wm/InputMonitor;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/wm/InputMonitor;->access$200()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/wm/InputMonitor$2$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/wm/InputMonitor$2$1;-><init>(Lcom/android/server/wm/InputMonitor$2;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    .end local v3           #bootComIntent:Landroid/content/Intent;
    .end local v14           #mHomeIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    .restart local v3       #bootComIntent:Landroid/content/Intent;
    .restart local v14       #mHomeIntent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    goto :goto_2
.end method
