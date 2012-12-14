.class Lcom/scalado/hwcamera/rewind/RewindActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$3;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 723
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, action:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/hwcamera/Util;->checkUsbStorageIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$3;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-virtual {v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->finish()V

    goto :goto_0
.end method
