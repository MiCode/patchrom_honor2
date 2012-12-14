.class public Lcom/scalado/app/rewind/AsyncTracker;
.super Ljava/lang/Object;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AsyncTracker$1;,
        Lcom/scalado/app/rewind/AsyncTracker$LooperThread;,
        Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    }
.end annotation


# instance fields
.field private mCompleted:I

.field private mJobId:I

.field private mJobListener:Lcom/scalado/app/rewind/JobListener;

.field private mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

.field private mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

.field private mRectTracker:Lcom/scalado/app/rewind/RectTracker;

.field private mSize:I

.field private final mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;-><init>(Lcom/scalado/app/rewind/AsyncTracker;Lcom/scalado/app/rewind/AsyncTracker$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I

    .line 25
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AsyncTracker;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    .line 31
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->start()V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;-><init>(Lcom/scalado/app/rewind/AsyncTracker;Lcom/scalado/app/rewind/AsyncTracker$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I

    .line 25
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    invoke-direct {v0, p0}, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;-><init>(Lcom/scalado/app/rewind/AsyncTracker;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    .line 35
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->start()V

    .line 36
    iput p1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mSize:I

    .line 37
    return-void
.end method

.method static synthetic access$200(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/scalado/app/rewind/AsyncTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I

    return v0
.end method

.method static synthetic access$408(Lcom/scalado/app/rewind/AsyncTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mCompleted:I

    return v0
.end method

.method static synthetic access$500(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/JobListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mJobListener:Lcom/scalado/app/rewind/JobListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/scalado/app/rewind/AsyncTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mJobId:I

    return v0
.end method

.method static synthetic access$700(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    return-object v0
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/AsyncTracker;Lcom/scalado/app/rewind/RectTracker;)Lcom/scalado/app/rewind/RectTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mRectTracker:Lcom/scalado/app/rewind/RectTracker;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mToUiHandler:Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/scalado/app/rewind/AsyncTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/scalado/app/rewind/AsyncTracker;->mSize:I

    return v0
.end method


# virtual methods
.method public addImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 72
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    .line 77
    return-void
.end method

.method public setTracker(Lcom/scalado/app/rewind/RectTracker;)V
    .locals 3
    .parameter "tracker"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2, p1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 47
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/scalado/app/rewind/AsyncTracker;->mLooperThread:Lcom/scalado/app/rewind/AsyncTracker$LooperThread;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    invoke-static {v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method
