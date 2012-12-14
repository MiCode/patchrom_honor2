.class Lcom/scalado/app/rewind/RewindApp$ToUiHandler;
.super Landroid/os/Handler;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1313
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1315
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp$State;->acceptsImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3800(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/SourceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->createSourceManager()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3900(Lcom/scalado/app/rewind/RewindApp;)V

    .line 1326
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3800(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/SourceManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/scalado/base/Buffer;

    invoke-virtual {v1, v0}, Lcom/scalado/app/rewind/SourceManager;->addJpeg(Lcom/scalado/base/Buffer;)I

    .line 1328
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3800(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/SourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/SourceManager;->size()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mBurstSize:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$4000(Lcom/scalado/app/rewind/RewindApp;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$Rewinding;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$Rewinding;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    goto :goto_0

    .line 1333
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3200(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    const-string v1, "Merging..."

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindViewer;->clearDisplay(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->shutterButton:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$ToUiHandler;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$3300(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindViewerConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewerConfig;->shutterButton:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v0}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    goto :goto_0

    .line 1313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
