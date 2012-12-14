.class public Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;
.super Landroid/os/Handler;
.source "AsyncTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AsyncTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/AsyncTracker;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/AsyncTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/scalado/app/rewind/AsyncTracker;->access$200(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/scalado/app/rewind/AsyncTracker;->access$200(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onImageAnalyzed(I)V

    goto :goto_0

    .line 94
    :pswitch_2
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/scalado/app/rewind/AsyncTracker;->access$200(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/scalado/app/rewind/AsyncTracker$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AsyncTracker;

    #getter for: Lcom/scalado/app/rewind/AsyncTracker;->mListener:Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;
    invoke-static {v0}, Lcom/scalado/app/rewind/AsyncTracker;->access$200(Lcom/scalado/app/rewind/AsyncTracker;)Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;->onAnalyzeComplete()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
