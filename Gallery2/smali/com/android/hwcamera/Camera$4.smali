.class Lcom/android/hwcamera/Camera$4;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1783
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, action:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/hwcamera/Util;->checkUsbStorageIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1789
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1790
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->stopCaptureIfNeed()V
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$6200(Lcom/android/hwcamera/Camera;)V

    .line 1791
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v4, 0x0

    #setter for: Lcom/android/hwcamera/Camera;->mPicturesRemaining:I
    invoke-static {v3, v4}, Lcom/android/hwcamera/Camera;->access$6302(Lcom/android/hwcamera/Camera;I)I

    .line 1794
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$6400(Lcom/android/hwcamera/Camera;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1795
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 1798
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    const-wide/16 v4, -0x1

    #calls: Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V
    invoke-static {v3, v4, v5}, Lcom/android/hwcamera/Camera;->access$6500(Lcom/android/hwcamera/Camera;J)V

    .line 1803
    :cond_4
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1804
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateThumbnailButton()V
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$5200(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 1807
    :cond_5
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1809
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$6400(Lcom/android/hwcamera/Camera;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1812
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v1

    .line 1813
    .local v1, sdAvailableSpace:J
    const-wide/32 v3, 0x1400000

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1814
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v4, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkRemaining(J)I
    invoke-static {v4, v1, v2}, Lcom/android/hwcamera/Camera;->access$6600(Lcom/android/hwcamera/Camera;J)I

    move-result v4

    #setter for: Lcom/android/hwcamera/Camera;->mPicturesRemaining:I
    invoke-static {v3, v4}, Lcom/android/hwcamera/Camera;->access$6302(Lcom/android/hwcamera/Camera;I)I

    .line 1815
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v3}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    goto :goto_0

    .line 1823
    .end local v1           #sdAvailableSpace:J
    :cond_6
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2004

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1826
    :cond_7
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1828
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1830
    iget-object v3, p0, Lcom/android/hwcamera/Camera$4;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2006

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
