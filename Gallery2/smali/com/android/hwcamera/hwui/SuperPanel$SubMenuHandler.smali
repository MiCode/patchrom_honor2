.class Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;
.super Landroid/os/Handler;
.source "SuperPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/SuperPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SuperPanel;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 154
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 155
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, subMenuContentLength:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 170
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$200(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 176
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #calls: Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V
    invoke-static {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->access$300(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->access$402(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    .line 180
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 182
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x0

    #setter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z
    invoke-static {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$402(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z

    goto :goto_1

    .line 188
    :pswitch_1
    if-lez v0, :cond_3

    .line 190
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$200(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 191
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x2

    #calls: Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$300(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    goto :goto_1

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    new-instance v2, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$1;-><init>(Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 206
    :pswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    new-instance v2, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$2;-><init>(Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 222
    :pswitch_3
    if-lez v0, :cond_4

    .line 224
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$200(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V

    .line 225
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v2, 0x4

    #calls: Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->access$300(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    goto/16 :goto_1

    .line 227
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    new-instance v2, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler$3;-><init>(Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
