.class Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VnReaderHandler"
.end annotation


# instance fields
.field ar:Landroid/os/AsyncResult;

.field data:[B

.field fileid:I

.field iccException:Lcom/android/internal/telephony/IccException;

.field response:Landroid/os/Message;

.field result:Lcom/android/internal/telephony/IccIoResult;

.field size:I

.field final synthetic this$0:Lcom/android/internal/telephony/IccFileHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccFileHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 675
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 741
    :goto_0
    return-void

    .line 677
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccIoResult;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->result:Lcom/android/internal/telephony/IccIoResult;

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v10

    .line 735
    .local v10, exc:Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    if-eqz v0, :cond_6

    .line 736
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2, v10}, Lcom/android/internal/telephony/IccFileHandler;->access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 686
    .end local v10           #exc:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->result:Lcom/android/internal/telephony/IccIoResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->iccException:Lcom/android/internal/telephony/IccException;

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->iccException:Lcom/android/internal/telephony/IccException;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->iccException:Lcom/android/internal/telephony/IccException;

    #calls: Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->result:Lcom/android/internal/telephony/IccIoResult;

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->data:[B

    .line 695
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->fileid:I

    .line 696
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "file_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, filePath:Ljava/lang/String;
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->data:[B

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_2

    .line 699
    new-instance v0, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->data:[B

    const/16 v1, 0xd

    aget-byte v0, v0, v1

    if-eqz v0, :cond_3

    .line 703
    new-instance v0, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 706
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->data:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->data:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->size:I

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    iget v2, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->fileid:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->size:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x4b1

    iget v11, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->fileid:I

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    invoke-virtual {p0, v9, v11, v12, v13}, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 715
    .end local v3           #filePath:Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccIoResult;

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->result:Lcom/android/internal/telephony/IccIoResult;

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->ar:Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 724
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->result:Lcom/android/internal/telephony/IccIoResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->iccException:Lcom/android/internal/telephony/IccException;

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->iccException:Lcom/android/internal/telephony/IccException;

    if-eqz v0, :cond_5

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->iccException:Lcom/android/internal/telephony/IccException;

    #calls: Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 731
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->response:Landroid/os/Message;

    iget-object v2, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->result:Lcom/android/internal/telephony/IccIoResult;

    iget-object v2, v2, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v4, 0x0

    #calls: Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    invoke-static {v0, v1, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->access$100(Lcom/android/internal/telephony/IccFileHandler;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 738
    .restart local v10       #exc:Ljava/lang/Exception;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler$VnReaderHandler;->this$0:Lcom/android/internal/telephony/IccFileHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uncaught exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
