.class Lcom/android/hwcamera/hwui/PanoramaBar$1;
.super Landroid/os/Handler;
.source "PanoramaBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/PanoramaBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/PanoramaBar;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 309
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 321
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 322
    return-void

    .line 312
    :pswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setMiniPanorama(Z)Z

    .line 313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, submessage:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 315
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$000(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 318
    .end local v0           #submessage:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar$1;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #setter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mBControlAble:Z
    invoke-static {v1, v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$102(Lcom/android/hwcamera/hwui/PanoramaBar;Z)Z

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
