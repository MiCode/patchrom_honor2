.class Lcom/android/hwcamera/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MainHandler;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method

.method private displayReview()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 899
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z
    invoke-static {v0, v6}, Lcom/android/hwcamera/VideoCamera;->access$4202(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 900
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4300(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v6}, Lcom/android/hwcamera/VideoCamera;->updateCameraAppView(Z)V

    .line 903
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReviewTime:I
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$4400(Lcom/android/hwcamera/VideoCamera;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 904
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 905
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v6}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    .line 906
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera;->displayReviewOnGallery()V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0, v6}, Lcom/android/hwcamera/VideoCamera;->access$702(Lcom/android/hwcamera/VideoCamera;I)I

    goto :goto_0
.end method

.method private hideReview(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 913
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera;->exitGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VideoCamera;->updateCameraAppView(Z)V

    .line 915
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->hideReviewUI()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4500(Lcom/android/hwcamera/VideoCamera;)V

    .line 919
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$702(Lcom/android/hwcamera/VideoCamera;I)I

    .line 921
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$4600(Lcom/android/hwcamera/VideoCamera;)V

    .line 923
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3700(Lcom/android/hwcamera/VideoCamera;)V

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    .line 926
    return-void
.end method

.method private slideBarandPanel()V
    .locals 7

    .prologue
    const v6, 0x7f0c0056

    const v5, 0x7f0c000b

    .line 885
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 886
    .local v0, dt:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 887
    .local v1, dt1:I
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slideBarandPanel dt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dt1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v4, 0x7f0c0010

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->slideInControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 889
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v2, v6}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 890
    return-void
.end method

.method private switchReview()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/16 v8, 0x2004

    const/4 v7, 0x1

    .line 619
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 878
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 621
    :sswitch_0
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->initializeZoom()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$800(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 624
    :sswitch_1
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mReviewState:I
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 625
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v6, 0x7f0c00c8

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 626
    .local v3, mReviewImg:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 627
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v5}, Lcom/android/hwcamera/VideoCamera;->gotoGalleryWithOutAnimation()V

    .line 628
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    .end local v3           #mReviewImg:Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v5, v7}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 634
    :sswitch_2
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z
    invoke-static {v5, v7}, Lcom/android/hwcamera/VideoCamera;->access$902(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 635
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v1, mHomeIntent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const/high16 v5, 0x1020

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v5, v1}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 642
    .end local v1           #mHomeIntent:Landroid/content/Intent;
    :sswitch_3
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 643
    .local v2, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-nez v5, :cond_2

    .line 644
    const-string v5, "videocamera"

    const-string v6, "SNAP_SHOT_ANIM_MESSAGE press HomeExit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z
    invoke-static {v5, v9}, Lcom/android/hwcamera/VideoCamera;->access$902(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 646
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x63

    const-wide/16 v7, 0x12c

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 648
    :cond_2
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x68

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 655
    .end local v2           #mKeyguardManager:Landroid/app/KeyguardManager;
    :sswitch_4
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->isBackPressed:Z
    invoke-static {v5, v7}, Lcom/android/hwcamera/VideoCamera;->access$1102(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 656
    invoke-static {v11}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 658
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1201(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 661
    :sswitch_5
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v5}, Lcom/android/hwcamera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 662
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v5}, Lcom/android/hwcamera/VideoCamera;->finish()V

    .line 663
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 682
    :sswitch_6
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1300(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 686
    :sswitch_7
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 688
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 695
    :sswitch_8
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v5}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 701
    :sswitch_9
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1700(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 711
    :sswitch_a
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-static {v5}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$1800(Lcom/android/hwcamera/VideoCamera;)I

    move-result v6

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 713
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restartPreview()Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2000(Lcom/android/hwcamera/VideoCamera;)Z

    .line 715
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mOnResumeTime:J
    invoke-static {v7}, Lcom/android/hwcamera/VideoCamera;->access$2100(Lcom/android/hwcamera/VideoCamera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 716
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 722
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$MainHandler;->hideReview(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 736
    :sswitch_c
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->displayReview()V

    goto/16 :goto_0

    .line 740
    :sswitch_d
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2200(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 744
    :sswitch_e
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->switchReview()V

    goto/16 :goto_0

    .line 749
    :sswitch_f
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->doSwitchCamera()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2300(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 753
    :sswitch_10
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->switchCameraUI()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2400(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 761
    :sswitch_11
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->isDisplayStateFromThirdParty()Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 762
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V
    invoke-static {v5, v10}, Lcom/android/hwcamera/VideoCamera;->access$2600(Lcom/android/hwcamera/VideoCamera;I)V

    goto/16 :goto_0

    .line 764
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera$MainHandler;->slideBarandPanel()V

    goto/16 :goto_0

    .line 773
    :sswitch_12
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 774
    .local v0, bFocused:Z
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/hwcamera/FocusManager;->onAutoFocus(Z)V

    goto/16 :goto_0

    .line 783
    .end local v0           #bFocused:Z
    :sswitch_13
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->preUpdateThumbnailPriority:I
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$2700(Lcom/android/hwcamera/VideoCamera;)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 784
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/hwcamera/VideoCamera;->preUpdateThumbnailPriority:I
    invoke-static {v5, v6}, Lcom/android/hwcamera/VideoCamera;->access$2702(Lcom/android/hwcamera/VideoCamera;I)I

    .line 785
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/hwcamera/Thumbnail;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v6, v5}, Lcom/android/hwcamera/VideoCamera;->access$2802(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 787
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 788
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$2800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 789
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v5

    const v6, 0x7f02001c

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/RotateImageView;->setBackgroundResource(I)V

    .line 790
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v5

    const/high16 v6, 0x4000

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 791
    .local v4, thumbPadding:I
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v4, v4, v4, v4}, Lcom/android/hwcamera/RotateImageView;->setPadding(IIII)V

    .line 792
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$3000(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 801
    .end local v4           #thumbPadding:I
    :sswitch_14
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateStopRecordingUI()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3100(Lcom/android/hwcamera/VideoCamera;)V

    .line 803
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v7, :cond_0

    .line 804
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    #calls: Lcom/android/hwcamera/VideoCamera;->doAfterStopVideoRecording(Z)V
    invoke-static {v6, v5}, Lcom/android/hwcamera/VideoCamera;->access$3200(Lcom/android/hwcamera/VideoCamera;Z)V

    goto/16 :goto_0

    .line 816
    :sswitch_15
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/ZoomControl;->changeZoomIndexSmoothly()V

    goto/16 :goto_0

    .line 821
    :sswitch_16
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2001

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v5}, Lcom/android/hwcamera/VideoCamera;->zoomStateSwitch()V

    goto/16 :goto_0

    .line 827
    :sswitch_17
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    goto/16 :goto_0

    .line 833
    :sswitch_18
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 834
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    :cond_5
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 837
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3400(Lcom/android/hwcamera/VideoCamera;)V

    .line 840
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3500(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 842
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2006

    const-wide/16 v7, 0x2007

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 846
    :cond_6
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x2005

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 853
    :sswitch_19
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$2800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v6

    #setter for: Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v5, v6}, Lcom/android/hwcamera/VideoCamera;->access$3602(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 854
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #setter for: Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v5, v11}, Lcom/android/hwcamera/VideoCamera;->access$2802(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 855
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3700(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 861
    :sswitch_1a
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$1600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 865
    :sswitch_1b
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPauseImageView:Lcom/android/hwcamera/RotateImageView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;

    move-result-object v5

    const v6, 0x7f0200e2

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 869
    :sswitch_1c
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->resumeVideoRecording()V
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$3900(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 874
    :sswitch_1d
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/hwcamera/VideoCamera;->access$4100(Lcom/android/hwcamera/VideoCamera;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget v8, p1, Landroid/os/Message;->arg1:I

    int-to-long v8, v8

    #calls: Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lcom/android/hwcamera/VideoCamera;->access$4000(Lcom/android/hwcamera/VideoCamera;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$MainHandler;->this$0:Lcom/android/hwcamera/VideoCamera;

    iget v8, p1, Landroid/os/Message;->arg2:I

    int-to-long v8, v8

    #calls: Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;
    invoke-static {v7, v8, v9}, Lcom/android/hwcamera/VideoCamera;->access$4000(Lcom/android/hwcamera/VideoCamera;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_a
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_13
        0x9 -> :sswitch_14
        0xe -> :sswitch_b
        0x10 -> :sswitch_e
        0x12 -> :sswitch_c
        0x13 -> :sswitch_d
        0x14 -> :sswitch_12
        0x19 -> :sswitch_f
        0x1a -> :sswitch_10
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1a
        0x1e -> :sswitch_1b
        0x1f -> :sswitch_1d
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
        0x66 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
        0x2000 -> :sswitch_15
        0x2001 -> :sswitch_16
        0x2002 -> :sswitch_17
        0x2003 -> :sswitch_11
        0x2004 -> :sswitch_18
        0x2006 -> :sswitch_19
    .end sparse-switch
.end method
