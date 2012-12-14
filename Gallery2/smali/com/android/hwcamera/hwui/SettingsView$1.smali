.class Lcom/android/hwcamera/hwui/SettingsView$1;
.super Landroid/os/Handler;
.source "SettingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SettingsView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView$1;->this$0:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 863
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/hwcamera/hwui/SubPopupWindows;

    .line 864
    .local v0, subPopupWindows:Lcom/android/hwcamera/hwui/SubPopupWindows;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 865
    return-void
.end method
