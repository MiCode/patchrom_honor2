.class Lcom/scalado/hwcamera/rewind/Button$MyHandler;
.super Landroid/os/Handler;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/Button;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/Button;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/Button$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/Button;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/Button;Lcom/scalado/hwcamera/rewind/Button$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/Button$MyHandler;-><init>(Lcom/scalado/hwcamera/rewind/Button;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Button$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/Button;->setVisibility(I)V

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Button$MyHandler;->this$0:Lcom/scalado/hwcamera/rewind/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/Button;->setVisibility(I)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
