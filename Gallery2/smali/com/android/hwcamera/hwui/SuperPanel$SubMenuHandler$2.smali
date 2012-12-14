.class Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;
.super Ljava/lang/Object;
.source "SuperPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method
