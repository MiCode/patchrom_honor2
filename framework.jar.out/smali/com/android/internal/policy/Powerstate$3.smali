.class final Lcom/android/internal/policy/Powerstate$3;
.super Ljava/lang/Object;
.source "Powerstate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/Powerstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 916
    const-string v0, "Powerstate"

    const-string/jumbo v1, "turn off the screen after 9.0s"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-nez v0, :cond_0

    .line 919
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->access$200()Landroid/os/IPowerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->SetScreenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :goto_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/internal/policy/Powerstate;->access$302(I)I

    .line 926
    :cond_0
    return-void

    .line 922
    :catch_0
    move-exception v0

    goto :goto_0
.end method
