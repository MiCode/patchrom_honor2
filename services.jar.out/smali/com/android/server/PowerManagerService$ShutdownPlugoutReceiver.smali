.class final Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownPlugoutReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    const-string v1, "ro.config.hw_quickpoweron"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 548
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->isSetInChargeEnable:Z

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService;->setBatteryLight(ZI)V

    .line 551
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ShutdownPlugoutReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    :goto_0
    :try_start_2
    const-string v0, "PowerManagerService OoO"

    const-string v1, "onReceive::ShutdownPlugout E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->destroyPowerOffCharge()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->isSetInChargeEnable:Z

    .line 561
    const-string v0, "PowerManagerService OoO"

    const-string v1, "onReceive::ShutdownPlugout X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    return-void

    .line 559
    :catchall_0
    move-exception v0

    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->isSetInChargeEnable:Z

    throw v0

    .line 554
    :catch_0
    move-exception v0

    goto :goto_0
.end method
