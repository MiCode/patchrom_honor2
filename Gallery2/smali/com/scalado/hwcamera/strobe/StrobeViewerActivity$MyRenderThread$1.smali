.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread$1;
.super Landroid/os/Handler;
.source "StrobeViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;)V
    .locals 0
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread$1;->this$1:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 998
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1006
    :goto_0
    return-void

    .line 1000
    :pswitch_0
    const-string v0, "StrobeViewerActivity"

    const-string v1, "start scan file1 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread$1;->this$1:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    iget-object v0, v0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread$1;->this$1:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;

    iget-object v1, v1, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyRenderThread;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mRenderCallback:Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;
    invoke-static {v1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/strobe/SessionStore;->doRender(Lcom/scalado/hwcamera/strobe/SessionStore$RenderCallback;)V

    goto :goto_0

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
