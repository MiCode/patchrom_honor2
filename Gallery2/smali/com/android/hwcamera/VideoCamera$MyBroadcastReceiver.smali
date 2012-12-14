.class Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 931
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 934
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, action:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/hwcamera/Util;->checkUsbStorageIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 940
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 943
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V
    invoke-static {v1, v2, v2}, Lcom/android/hwcamera/VideoCamera;->access$4700(Lcom/android/hwcamera/VideoCamera;ZZ)V

    .line 948
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->stopReviewIfNeed()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$4900(Lcom/android/hwcamera/VideoCamera;)V

    .line 952
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$5000(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 953
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 960
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$3500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$3700(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 946
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    const-wide/16 v2, -0x1

    #calls: Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V
    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/VideoCamera;->access$4800(Lcom/android/hwcamera/VideoCamera;J)V

    goto :goto_1

    .line 964
    :cond_5
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 966
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$5000(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2004

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 975
    :cond_6
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    const-string v1, "videocamera"

    const-string v2, "file scanner_finished"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$3500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2006

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
