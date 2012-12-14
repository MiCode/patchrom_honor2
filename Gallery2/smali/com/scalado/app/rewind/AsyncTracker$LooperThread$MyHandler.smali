.class Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AsyncTracker$LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;Lcom/scalado/app/rewind/AsyncTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 127
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 168
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 132
    :sswitch_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$400(Lcom/scalado/app/rewind/AsyncTracker;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mJobListener:Lcom/scalado/app/rewind/JobListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$500(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/JobListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mJobListener:Lcom/scalado/app/rewind/JobListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$500(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/JobListener;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v2, v2, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mJobId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/AsyncTracker;->access$600(Lcom/scalado/app/rewind/AsyncTracker;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/scalado/app/rewind/JobListener;->onJobStarted(I)V

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$700(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$700(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/RectTracker;->trackImage(I)V

    .line 139
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$800(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, backMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$800(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$408(Lcom/scalado/app/rewind/AsyncTracker;)I

    .line 143
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$400(Lcom/scalado/app/rewind/AsyncTracker;)I

    move-result v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v2, v2, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mSize:I
    invoke-static {v2}, Lcom/scalado/app/rewind/AsyncTracker;->access$900(Lcom/scalado/app/rewind/AsyncTracker;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$700(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RectTracker;->analyzeImages()Lcom/scalado/app/rewind/RectTracker$State;

    .line 145
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mJobListener:Lcom/scalado/app/rewind/JobListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$500(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/JobListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mJobListener:Lcom/scalado/app/rewind/JobListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$500(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/JobListener;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v2, v2, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mJobId:I
    invoke-static {v2}, Lcom/scalado/app/rewind/AsyncTracker;->access$600(Lcom/scalado/app/rewind/AsyncTracker;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/scalado/app/rewind/JobListener;->onJobEnded(I)V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$800(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$800(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 154
    .end local v0           #backMsg:Landroid/os/Message;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/scalado/app/rewind/RectTracker;

    if-nez v1, :cond_4

    .line 155
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v2, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/app/rewind/RectTracker;

    #setter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v2, v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$702(Lcom/scalado/app/rewind/AsyncTracker;Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/app/rewind/RectTracker;

    goto/16 :goto_0

    .line 160
    :sswitch_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 161
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$700(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 162
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$700(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scalado/app/rewind/RectTracker;->recycle()V

    .line 163
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    const/4 v2, 0x0

    #setter for: Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/AsyncTracker;->access$702(Lcom/scalado/app/rewind/AsyncTracker;Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/app/rewind/RectTracker;

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    iget-object v1, v1, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker;->access$800(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x32 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
