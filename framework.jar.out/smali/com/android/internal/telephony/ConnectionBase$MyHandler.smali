.class Lcom/android/internal/telephony/ConnectionBase$MyHandler;
.super Landroid/os/Handler;
.source "ConnectionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ConnectionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ConnectionBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ConnectionBase;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;->this$0:Lcom/android/internal/telephony/ConnectionBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;->this$0:Lcom/android/internal/telephony/ConnectionBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ConnectionBase;->processNextPostDialChar()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase$MyHandler;->this$0:Lcom/android/internal/telephony/ConnectionBase;

    #calls: Lcom/android/internal/telephony/ConnectionBase;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/internal/telephony/ConnectionBase;->access$000(Lcom/android/internal/telephony/ConnectionBase;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
