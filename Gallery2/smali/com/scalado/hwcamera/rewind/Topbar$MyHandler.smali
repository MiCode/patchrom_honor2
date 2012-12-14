.class Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;
.super Landroid/os/Handler;
.source "Topbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/Topbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/Topbar;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/Topbar;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/Topbar;Lcom/scalado/hwcamera/rewind/Topbar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;-><init>(Lcom/scalado/hwcamera/rewind/Topbar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Topbar$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/Topbar;

    #calls: Lcom/scalado/hwcamera/rewind/Topbar;->fadeOut()V
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/Topbar;->access$500(Lcom/scalado/hwcamera/rewind/Topbar;)V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
