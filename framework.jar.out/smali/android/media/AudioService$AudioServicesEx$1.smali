.class Landroid/media/AudioService$AudioServicesEx$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$AudioServicesEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioService$AudioServicesEx;


# direct methods
.method constructor <init>(Landroid/media/AudioService$AudioServicesEx;)V
    .locals 0
    .parameter

    .prologue
    .line 5500
    iput-object p1, p0, Landroid/media/AudioService$AudioServicesEx$1;->this$1:Landroid/media/AudioService$AudioServicesEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 5503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 5504
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.intent.action.RINGTONE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5506
    const-string v0, "AudioServicesEx"

    const-string v1, "Receive ringtone changed broadcast."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5508
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx$1;->this$1:Landroid/media/AudioService$AudioServicesEx;

    const-string v1, "KEYTOUCH_AUDIOEFFECT_PATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/media/AudioService$AudioServicesEx;->mSysKeyEffectFile:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioService$AudioServicesEx;->access$8802(Landroid/media/AudioService$AudioServicesEx;Ljava/lang/String;)Ljava/lang/String;

    .line 5509
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx$1;->this$1:Landroid/media/AudioService$AudioServicesEx;

    #getter for: Landroid/media/AudioService$AudioServicesEx;->mSysKeyEffectFile:Ljava/lang/String;
    invoke-static {v0}, Landroid/media/AudioService$AudioServicesEx;->access$8800(Landroid/media/AudioService$AudioServicesEx;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5510
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx$1;->this$1:Landroid/media/AudioService$AudioServicesEx;

    #getter for: Landroid/media/AudioService$AudioServicesEx;->mHwThemeHandler:Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;
    invoke-static {v0}, Landroid/media/AudioService$AudioServicesEx;->access$8900(Landroid/media/AudioService$AudioServicesEx;)Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;

    move-result-object v0

    const/16 v1, 0x63

    const/4 v2, 0x1

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    #calls: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5514
    :cond_0
    return-void
.end method
