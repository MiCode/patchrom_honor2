.class Lcom/huawei/android/hardware/fmradio/FmTxEventListner;
.super Ljava/lang/Object;
.source "FmTxEventListner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMTxEventListner"


# instance fields
.field private final EVENT_LISTEN:I

.field private final TUNE_EVENT:I

.field private final TXRDSDAT_EVENT:I

.field private final TXRDSDONE_EVENT:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->EVENT_LISTEN:I

    .line 40
    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->TUNE_EVENT:I

    .line 41
    const/16 v0, 0x10

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->TXRDSDAT_EVENT:I

    .line 42
    const/16 v0, 0x11

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->TXRDSDONE_EVENT:I

    return-void
.end method


# virtual methods
.method public startListner(ILcom/huawei/android/hardware/fmradio/FmTransmitterCallbacks;)V
    .locals 1
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 50
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/android/hardware/fmradio/FmTxEventListner$1;-><init>(Lcom/huawei/android/hardware/fmradio/FmTxEventListner;ILcom/huawei/android/hardware/fmradio/FmTransmitterCallbacks;)V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method public stopListener()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "FMTxEventListner"

    const-string v1, "Thread Stopped\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "FMTxEventListner"

    const-string v1, "stopping the Listener\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 107
    :cond_0
    const-string v0, "FMTxEventListner"

    const-string v1, "Thread Stopped\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
