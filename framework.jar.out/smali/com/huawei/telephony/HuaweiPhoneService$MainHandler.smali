.class final Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;
.super Landroid/os/Handler;
.source "HuaweiPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/telephony/HuaweiPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/telephony/HuaweiPhoneService;


# direct methods
.method constructor <init>(Lcom/huawei/telephony/HuaweiPhoneService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->this$0:Lcom/huawei/telephony/HuaweiPhoneService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->this$0:Lcom/huawei/telephony/HuaweiPhoneService;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    #setter for: Lcom/huawei/telephony/HuaweiPhoneService;->mATResponse:[Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/huawei/telephony/HuaweiPhoneService;->access$002(Lcom/huawei/telephony/HuaweiPhoneService;[Ljava/lang/String;)[Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->this$0:Lcom/huawei/telephony/HuaweiPhoneService;

    #getter for: Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/telephony/HuaweiPhoneService;->access$100(Lcom/huawei/telephony/HuaweiPhoneService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->this$0:Lcom/huawei/telephony/HuaweiPhoneService;

    const/4 v3, 0x1

    #setter for: Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z
    invoke-static {v1, v3}, Lcom/huawei/telephony/HuaweiPhoneService;->access$202(Lcom/huawei/telephony/HuaweiPhoneService;Z)Z

    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->this$0:Lcom/huawei/telephony/HuaweiPhoneService;

    #getter for: Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/huawei/telephony/HuaweiPhoneService;->access$100(Lcom/huawei/telephony/HuaweiPhoneService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const-string v1, "HuaweiPhoneService"

    const-string v2, "ATDirectChannel RUN failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
