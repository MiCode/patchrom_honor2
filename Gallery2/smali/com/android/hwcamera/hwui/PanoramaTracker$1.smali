.class Lcom/android/hwcamera/hwui/PanoramaTracker$1;
.super Landroid/os/Handler;
.source "PanoramaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/PanoramaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/PanoramaTracker;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/PanoramaTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 450
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PanoramaTracker$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaTracker;

    iget-boolean v1, v1, Lcom/android/hwcamera/hwui/PanoramaTracker;->bFlash:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, v3, Lcom/android/hwcamera/hwui/PanoramaTracker;->bFlash:Z

    .line 453
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaTracker;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->invalidate()V

    .line 454
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 455
    .local v0, submessage:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 456
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaTracker$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaTracker;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/PanoramaTracker;->access$000(Lcom/android/hwcamera/hwui/PanoramaTracker;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 452
    .end local v0           #submessage:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
