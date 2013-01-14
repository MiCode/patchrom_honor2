.class Lcom/android/server/location/GpsLocationProvider$BroadcastHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;-><init>(Lcom/android/server/location/GpsLocationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;

.field final synthetic val$this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper$1;->this$1:Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper$1;->val$this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1733
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1734
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_AGPS_SERVERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper$1;->this$1:Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;

    #calls: Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->checkAGpsServer(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->access$2400(Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;Landroid/content/Intent;)V

    .line 1737
    :cond_0
    return-void
.end method
