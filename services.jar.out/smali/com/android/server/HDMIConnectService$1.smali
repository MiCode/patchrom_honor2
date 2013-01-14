.class Lcom/android/server/HDMIConnectService$1;
.super Landroid/content/BroadcastReceiver;
.source "HDMIConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HDMIConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HDMIConnectService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIConnectService;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/HDMIConnectService$1;->this$0:Lcom/android/server/HDMIConnectService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/HDMIConnectService$1;->this$0:Lcom/android/server/HDMIConnectService;

    #getter for: Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;
    invoke-static {v2}, Lcom/android/server/HDMIConnectService;->access$000(Lcom/android/server/HDMIConnectService;)Lcom/android/server/HDMIEventListener;

    move-result-object v2

    const-class v3, Lcom/android/server/HDMIEventListener;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 230
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 232
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
