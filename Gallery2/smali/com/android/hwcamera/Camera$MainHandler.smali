.class Lcom/android/hwcamera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$MainHandler;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 674
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1095
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 676
    :sswitch_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1100(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 677
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f0c0014

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 678
    .local v2, mReviewImg:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 679
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4}, Lcom/android/hwcamera/Camera;->gotoGalleryWithOutAnimation()V

    .line 680
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 683
    .end local v2           #mReviewImg:Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4, v8}, Lcom/android/hwcamera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0

    .line 686
    :sswitch_2
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mIsHomeExit:Z
    invoke-static {v4, v8}, Lcom/android/hwcamera/Camera;->access$1302(Lcom/android/hwcamera/Camera;Z)Z

    .line 687
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, mHomeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const/high16 v4, 0x1020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4, v1}, Lcom/android/hwcamera/Camera;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 696
    .end local v1           #mHomeIntent:Landroid/content/Intent;
    :sswitch_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v10, :cond_2

    .line 697
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsGroupFinish:Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1500(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 698
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1601(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1701(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 707
    :sswitch_4
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v4}, Lcom/android/hwcamera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 708
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4}, Lcom/android/hwcamera/Camera;->finish()V

    .line 710
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 713
    :sswitch_5
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x63

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 741
    :sswitch_6
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 742
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    goto/16 :goto_0

    .line 760
    :sswitch_7
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 766
    :sswitch_8
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->initializeFirstTime()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1900(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 771
    :sswitch_9
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/android/hwcamera/hwui/FaceInfo;

    check-cast v4, [Lcom/android/hwcamera/hwui/FaceInfo;

    invoke-virtual {v5, v4}, Lcom/android/hwcamera/hwui/FaceView;->setFaces([Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 772
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 773
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$2100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HWExtCameraHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/HWExtCameraHandler;->getBlinkState()Z

    move-result v5

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$2200(Lcom/android/hwcamera/Camera;Z)V

    goto/16 :goto_0

    .line 778
    :sswitch_a
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->clearFaceRectangles()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)V

    .line 779
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v4, v9}, Lcom/android/hwcamera/Camera;->access$2200(Lcom/android/hwcamera/Camera;Z)V

    goto/16 :goto_0

    .line 783
    :sswitch_b
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 784
    .local v0, bFocused:Z
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/hwcamera/FocusManager;->onAutoFocus(Z)V

    .line 785
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 786
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraAutoFocusController;->startGSensorDetection()V

    goto/16 :goto_0

    .line 788
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/CameraAutoFocusController;->setAfFinishState()V

    goto/16 :goto_0

    .line 794
    .end local v0           #bFocused:Z
    :sswitch_c
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4}, Lcom/android/hwcamera/Camera;->startFaceDetectionUI()V

    goto/16 :goto_0

    .line 798
    :sswitch_d
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4}, Lcom/android/hwcamera/Camera;->stopFaceDetectionUI()V

    goto/16 :goto_0

    .line 804
    :sswitch_e
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2001

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateDelayTakePictureTime()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2500(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 813
    :sswitch_f
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 814
    :cond_4
    const-string v4, "Camera"

    const-string v5, "Decode completed but bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 817
    :cond_5
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->updateBGAndThumbnailUI(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 822
    :sswitch_10
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 823
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v5, v4}, Lcom/android/hwcamera/Camera$ImageSaver;->updateThumbnail(Lcom/android/hwcamera/Thumbnail;)V

    goto/16 :goto_0

    .line 829
    :sswitch_11
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z
    invoke-static {v4, v10}, Lcom/android/hwcamera/Camera;->access$2800(Lcom/android/hwcamera/Camera;I)Z

    goto/16 :goto_0

    .line 834
    :sswitch_12
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const/4 v5, 0x4

    #calls: Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$2800(Lcom/android/hwcamera/Camera;I)Z

    goto/16 :goto_0

    .line 839
    :sswitch_13
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->hideReview(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/hwcamera/Camera;->access$2900(Lcom/android/hwcamera/Camera;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 852
    :sswitch_14
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayReview()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3000(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 856
    :sswitch_15
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchReview()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3100(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 862
    :sswitch_16
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->hideGrid()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3200(Lcom/android/hwcamera/Camera;)V

    .line 865
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showPostCaptureAlert()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3300(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 869
    :sswitch_17
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPicNum:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-boolean v4, v4, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v4, :cond_0

    .line 871
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->releaseBurstSound()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3500(Lcom/android/hwcamera/Camera;)V

    .line 874
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 875
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    :cond_6
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x18

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 878
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-nez v4, :cond_0

    .line 882
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v7, 0x7f0f002c

    invoke-direct {v5, v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$3602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 883
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 884
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 885
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 886
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    const v5, 0x7f040032

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 889
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/Camera$MainHandler$1;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/Camera$MainHandler$1;-><init>(Lcom/android/hwcamera/Camera$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 902
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 903
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mIsGroupFinish:Z
    invoke-static {v4, v9}, Lcom/android/hwcamera/Camera;->access$1502(Lcom/android/hwcamera/Camera;Z)Z

    goto/16 :goto_0

    .line 911
    :sswitch_18
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;)V

    .line 912
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v8, :cond_8

    .line 913
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-boolean v4, v4, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v4, :cond_7

    .line 915
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->startPanoramaViewer()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3800(Lcom/android/hwcamera/Camera;)V

    .line 937
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 938
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mIsGroupFinish:Z
    invoke-static {v4, v8}, Lcom/android/hwcamera/Camera;->access$1502(Lcom/android/hwcamera/Camera;Z)Z

    goto/16 :goto_0

    .line 917
    :cond_8
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    .line 918
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x25

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 919
    :cond_9
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v10, :cond_a

    .line 920
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1e

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 922
    :cond_a
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v7, :cond_b

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 923
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 924
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/android/hwcamera/Camera;->access$3602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 926
    :cond_b
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V
    invoke-static {v4, v8}, Lcom/android/hwcamera/Camera;->access$3900(Lcom/android/hwcamera/Camera;Z)V

    .line 928
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->needSnapShotAnim()Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$4000(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 929
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v4, v8, v8}, Lcom/android/hwcamera/Camera;->access$4100(Lcom/android/hwcamera/Camera;ZZ)V

    .line 932
    :cond_c
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mReviewTime:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$4200(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$4300(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 933
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V
    invoke-static {v4, v9}, Lcom/android/hwcamera/Camera;->access$4400(Lcom/android/hwcamera/Camera;I)V

    goto/16 :goto_1

    .line 944
    :sswitch_19
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f0c0018

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V
    invoke-static {v4, v9}, Lcom/android/hwcamera/Camera;->access$2200(Lcom/android/hwcamera/Camera;Z)V

    .line 946
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->clearFaceRectangles()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$2300(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 950
    :sswitch_1a
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->needLoadingAnim()Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$4500(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 951
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x63

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 954
    :cond_d
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-nez v4, :cond_0

    .line 961
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v7, 0x7f0f002c

    invoke-direct {v5, v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$3602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 963
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 964
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 965
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 966
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    const v5, 0x7f040032

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 969
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    new-instance v5, Lcom/android/hwcamera/Camera$MainHandler$2;

    invoke-direct {v5, p0}, Lcom/android/hwcamera/Camera$MainHandler$2;-><init>(Lcom/android/hwcamera/Camera$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    .line 984
    :sswitch_1b
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 985
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->cancel()V

    .line 986
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/android/hwcamera/Camera;->access$3602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 992
    :sswitch_1c
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V
    invoke-static {v4, v8, v9}, Lcom/android/hwcamera/Camera;->access$4100(Lcom/android/hwcamera/Camera;ZZ)V

    goto/16 :goto_0

    .line 996
    :sswitch_1d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 997
    .local v3, size:Landroid/hardware/Camera$Size;
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$4600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;

    move-result-object v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v5

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto/16 :goto_0

    .line 1000
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :sswitch_1e
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    goto/16 :goto_0

    .line 1003
    :sswitch_1f
    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v7}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;)I

    move-result v7

    #calls: Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    invoke-static {v5, v4, v6, v7}, Lcom/android/hwcamera/Camera;->access$4800(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V

    goto/16 :goto_0

    .line 1006
    :sswitch_20
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->switchCameraUI()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$4900(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 1009
    :sswitch_21
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setTimerpromptIcon()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5000(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 1015
    :sswitch_22
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v4, v6}, Lcom/android/hwcamera/Camera;->access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1016
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateThumbnailButton()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5200(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 1023
    :sswitch_23
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$5100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;

    move-result-object v5

    #setter for: Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$5302(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1024
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;
    invoke-static {v4, v6}, Lcom/android/hwcamera/Camera;->access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;

    .line 1025
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateThumbnailButton()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5200(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 1032
    :sswitch_24
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f0c000b

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v6, 0x7f0c0010

    invoke-virtual {v5, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->slideInControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 1033
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f0c0056

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    const v6, 0x7f0c0056

    invoke-virtual {v4, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1041
    :sswitch_25
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsActivityExit:Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5400(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1042
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)V

    .line 1046
    :goto_2
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mIsActivityExit:Z
    invoke-static {v4, v9}, Lcom/android/hwcamera/Camera;->access$5402(Lcom/android/hwcamera/Camera;Z)Z

    goto/16 :goto_0

    .line 1044
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;)V

    goto :goto_2

    .line 1053
    :sswitch_26
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2004

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1054
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2004

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1056
    :cond_f
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5600(Lcom/android/hwcamera/Camera;)I

    move-result v4

    if-ne v4, v8, :cond_10

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->isSavePic:Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5700(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1057
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)V

    .line 1060
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5800(Lcom/android/hwcamera/Camera;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1062
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2006

    const-wide/16 v6, 0x2007

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1066
    :cond_10
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2004

    const-wide/16 v6, 0x2005

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1073
    :sswitch_27
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/ZoomControl;->changeZoomIndexSmoothly()V

    goto/16 :goto_0

    .line 1078
    :sswitch_28
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x2001

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1079
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    invoke-virtual {v4}, Lcom/android/hwcamera/Camera;->zoomStateSwitch()V

    goto/16 :goto_0

    .line 1084
    :sswitch_29
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/ZoomControl;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    goto/16 :goto_0

    .line 1090
    :sswitch_2a
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->stopSmileCapture()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$6000(Lcom/android/hwcamera/Camera;)V

    .line 1091
    iget-object v4, p0, Lcom/android/hwcamera/Camera$MainHandler;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v4, v8}, Lcom/android/hwcamera/Camera;->access$5602(Lcom/android/hwcamera/Camera;I)I

    goto/16 :goto_0

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_25
        0x6 -> :sswitch_1f
        0x7 -> :sswitch_6
        0x8 -> :sswitch_10
        0x9 -> :sswitch_e
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_f
        0xe -> :sswitch_13
        0xf -> :sswitch_1c
        0x10 -> :sswitch_15
        0x12 -> :sswitch_14
        0x13 -> :sswitch_16
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_1b
        0x16 -> :sswitch_19
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x1b -> :sswitch_b
        0x1c -> :sswitch_c
        0x1d -> :sswitch_d
        0x1e -> :sswitch_11
        0x20 -> :sswitch_1d
        0x21 -> :sswitch_1e
        0x22 -> :sswitch_20
        0x24 -> :sswitch_21
        0x25 -> :sswitch_12
        0x26 -> :sswitch_22
        0x27 -> :sswitch_0
        0x28 -> :sswitch_22
        0x29 -> :sswitch_1
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_2
        0x67 -> :sswitch_5
        0x69 -> :sswitch_2a
        0x2000 -> :sswitch_27
        0x2001 -> :sswitch_28
        0x2002 -> :sswitch_29
        0x2003 -> :sswitch_24
        0x2004 -> :sswitch_26
        0x2006 -> :sswitch_23
    .end sparse-switch
.end method
