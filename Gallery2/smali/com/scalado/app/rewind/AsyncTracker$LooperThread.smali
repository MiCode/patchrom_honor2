.class Lcom/scalado/app/rewind/AsyncTracker$LooperThread;
.super Ljava/lang/Thread;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AsyncTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

.field final synthetic this$0:Lcom/scalado/app/rewind/AsyncTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AsyncTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AsyncTracker;Lcom/scalado/app/rewind/AsyncTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;-><init>(Lcom/scalado/app/rewind/AsyncTracker;)V

    return-void
.end method

.method static synthetic access$100(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;)Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 120
    new-instance v0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/AsyncTracker$LooperThread;Lcom/scalado/app/rewind/AsyncTracker$1;)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker$LooperThread;->mHandler:Lcom/scalado/app/rewind/AsyncTracker$LooperThread$MyHandler;

    .line 121
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 122
    return-void
.end method
