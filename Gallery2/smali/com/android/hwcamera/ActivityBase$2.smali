.class Lcom/android/hwcamera/ActivityBase$2;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ActivityBase;->setSwipingEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/ActivityBase;->mIsSwitchStorage:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase;->access$102(Lcom/android/hwcamera/ActivityBase;Z)Z

    .line 95
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mPausing:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->changeMediaSetPath()V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ActivityBase;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$2;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ActivityBase;->updateThumbnailButton(Z)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
