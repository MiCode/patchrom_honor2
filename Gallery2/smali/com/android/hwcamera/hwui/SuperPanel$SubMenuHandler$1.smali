.class Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;
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
    .line 193
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;->this$1:Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$402(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    .line 200
    return-void
.end method
