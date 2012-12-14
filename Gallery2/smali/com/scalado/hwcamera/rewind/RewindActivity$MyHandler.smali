.class Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;
.super Landroid/os/Handler;
.source "RewindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 718
    :goto_0
    return-void

    .line 694
    :pswitch_0
    const-string v0, "ManualRewindViewer"

    const-string v1, "mRotateProgress.hideWaitDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v2}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2200(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)V

    goto :goto_0

    .line 701
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->removeMessages(I)V

    .line 702
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2600(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    .line 703
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v2}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2200(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)V

    .line 704
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->finish()V

    goto :goto_0

    .line 708
    :pswitch_2
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2600(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    goto :goto_0

    .line 712
    :pswitch_3
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-virtual {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->finish()V

    goto :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
