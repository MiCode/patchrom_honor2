.class public Lcom/android/hwcamera/BlueToothMediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlueToothMediaButtonReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    const-string v0, "BlueToothTest"

    iput-object v0, p0, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;->isOrderedBroadcast()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;->abortBroadcast()V

    .line 18
    const-string v4, "BlueToothTest"

    const-string v5, "abortBroadcast"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 25
    .local v1, event:Landroid/view/KeyEvent;
    if-nez v1, :cond_2

    .line 26
    const-string v4, "BlueToothTest"

    const-string v5, "event is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v1           #event:Landroid/view/KeyEvent;
    :cond_1
    :goto_0
    return-void

    .line 30
    .restart local v1       #event:Landroid/view/KeyEvent;
    :cond_2
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 31
    .local v3, keyCode:I
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 32
    .local v2, keyAction:I
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 36
    :sswitch_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 37
    invoke-static {}, Lcom/android/hwcamera/BlueToothMediaButton;->getInstance()Lcom/android/hwcamera/BlueToothMediaButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/BlueToothMediaButton;->blueToothMediaButtonUp()V

    goto :goto_0

    .line 38
    :cond_3
    if-nez v2, :cond_1

    .line 39
    invoke-static {}, Lcom/android/hwcamera/BlueToothMediaButton;->getInstance()Lcom/android/hwcamera/BlueToothMediaButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/BlueToothMediaButton;->blueToothMediaButtonDown()V

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
    .end sparse-switch
.end method
