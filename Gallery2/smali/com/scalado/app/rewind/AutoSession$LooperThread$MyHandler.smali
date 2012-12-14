.class Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession$LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;Lcom/scalado/app/rewind/AutoSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/AutoSession$LooperThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 257
    const-string v0, "AutoSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget v3, p1, Landroid/os/Message;->what:I

    #calls: Lcom/scalado/app/rewind/AutoSession$LooperThread;->whatName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/scalado/app/rewind/AutoSession$LooperThread;->access$500(Lcom/scalado/app/rewind/AutoSession$LooperThread;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 260
    :sswitch_0
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    #calls: Lcom/scalado/app/rewind/AutoSession;->privateAddJpeg(Ljava/nio/ByteBuffer;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/AutoSession;->access$600(Lcom/scalado/app/rewind/AutoSession;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 263
    :sswitch_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/scalado/app/rewind/AutoSession;->renderOutput(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/AutoSession;->access$700(Lcom/scalado/app/rewind/AutoSession;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :sswitch_2
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #calls: Lcom/scalado/app/rewind/AutoSession;->privateGetMergedImage()V
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$800(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    .line 269
    :sswitch_3
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/scalado/app/rewind/AutoSession;->privateGetSourceImage(I)V
    invoke-static {v1, v0}, Lcom/scalado/app/rewind/AutoSession;->access$900(Lcom/scalado/app/rewind/AutoSession;I)V

    goto :goto_0

    .line 272
    :sswitch_4
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #calls: Lcom/scalado/app/rewind/AutoSession;->privateRecycle()V
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$1000(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    .line 275
    :sswitch_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 276
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v0, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #calls: Lcom/scalado/app/rewind/AutoSession;->privateRecycle()V
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$1000(Lcom/scalado/app/rewind/AutoSession;)V

    goto :goto_0

    .line 279
    :sswitch_6
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/AutoSession$LooperThread;

    iget-object v1, v0, Lcom/scalado/app/rewind/AutoSession$LooperThread;->this$0:Lcom/scalado/app/rewind/AutoSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/scalado/app/rewind/AutoSession;->doSaveSourceJpeg(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/scalado/app/rewind/AutoSession;->access$1100(Lcom/scalado/app/rewind/AutoSession;ILjava/lang/String;)V

    goto :goto_0

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
