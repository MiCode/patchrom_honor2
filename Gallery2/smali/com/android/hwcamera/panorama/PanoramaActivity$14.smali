.class Lcom/android/hwcamera/panorama/PanoramaActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/32 v9, 0x1400000

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 1634
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1635
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1637
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1638
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->stopCaptureIfNeed()V
    invoke-static {v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3200(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 1639
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I
    invoke-static {v5, v8}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3302(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I

    .line 1641
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z
    invoke-static {v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3400(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1642
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 1644
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    const-wide/16 v6, -0x1

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->updateSDCardStorageHint(J)V
    invoke-static {v5, v6, v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3500(Lcom/android/hwcamera/panorama/PanoramaActivity;J)V

    .line 1680
    :cond_2
    :goto_0
    return-void

    .line 1646
    :cond_3
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1647
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I
    invoke-static {v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3300(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v5

    if-gt v5, v7, :cond_2

    .line 1652
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :goto_1
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mIsInternalStorageExist:Z
    invoke-static {v5}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3400(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1659
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v2

    .line 1660
    .local v2, sdAvailableSpace:J
    cmp-long v5, v2, v9

    if-lez v5, :cond_2

    .line 1661
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->checkRemaining(J)I
    invoke-static {v6, v2, v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3600(Lcom/android/hwcamera/panorama/PanoramaActivity;J)I

    move-result v6

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I
    invoke-static {v5, v6}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3302(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I

    goto :goto_0

    .line 1653
    .end local v2           #sdAvailableSpace:J
    :catch_0
    move-exception v1

    .line 1654
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1666
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v4, 0x0

    .line 1667
    .local v4, sdCardRemaining:I
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v2

    .line 1668
    .restart local v2       #sdAvailableSpace:J
    cmp-long v5, v2, v9

    if-lez v5, :cond_5

    .line 1669
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->checkRemaining(J)I
    invoke-static {v5, v2, v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3600(Lcom/android/hwcamera/panorama/PanoramaActivity;J)I

    move-result v4

    .line 1671
    :cond_5
    if-le v4, v7, :cond_6

    .line 1672
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1673
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPicturesRemaining:I
    invoke-static {v5, v4}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3302(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I

    .line 1674
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v6, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    const v7, 0x7f0e0257

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$100(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v7

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->makeToastifNeeded(Ljava/lang/CharSequence;II)V
    invoke-static {v5, v6, v8, v7}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3700(Lcom/android/hwcamera/panorama/PanoramaActivity;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 1677
    :cond_6
    iget-object v5, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$14;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->updateSDCardStorageHint(J)V
    invoke-static {v5, v2, v3}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$3500(Lcom/android/hwcamera/panorama/PanoramaActivity;J)V

    goto :goto_0
.end method
