.class Lcom/android/hwcamera/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/FocusManager;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/FocusManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/hwcamera/FocusManager$MainHandler;-><init>(Lcom/android/hwcamera/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 147
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    #calls: Lcom/android/hwcamera/FocusManager;->resetFocusUIbyGsensor()V
    invoke-static {v0}, Lcom/android/hwcamera/FocusManager;->access$200(Lcom/android/hwcamera/FocusManager;)V

    goto :goto_0

    .line 151
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    #calls: Lcom/android/hwcamera/FocusManager;->updatePreviewStoppedUi()V
    invoke-static {v0}, Lcom/android/hwcamera/FocusManager;->access$300(Lcom/android/hwcamera/FocusManager;)V

    goto :goto_0

    .line 159
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus(Z)V

    goto :goto_0

    .line 163
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$MainHandler;->this$0:Lcom/android/hwcamera/FocusManager;

    iget-object v0, v0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
