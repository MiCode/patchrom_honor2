.class Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;
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
    .line 227
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$402(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    .line 231
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$600(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSubPanelClosed()V

    .line 232
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$700(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$700(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 234
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$702(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/view/View;)Landroid/view/View;

    .line 236
    :cond_0
    return-void
.end method
