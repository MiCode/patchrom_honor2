.class Lcom/android/hwcamera/VideoCamera$SuperPanelListener;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/SuperPanel$Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperPanelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 5468
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5468
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public gallerExEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "entryKey"

    .prologue
    .line 5571
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->galleryExStart(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/VideoCamera;->access$11000(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V

    .line 5572
    return-void
.end method

.method public onPanelStateChange(Z)V
    .locals 4
    .parameter "isPanelOpen"

    .prologue
    const v3, 0x7f0c0046

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 5575
    if-eqz p1, :cond_1

    .line 5576
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$11100(Lcom/android/hwcamera/VideoCamera;I)V

    .line 5577
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5579
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$11200(Lcom/android/hwcamera/VideoCamera;I)V

    .line 5598
    :cond_0
    :goto_0
    return-void

    .line 5581
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$11300(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5583
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->access$11200(Lcom/android/hwcamera/VideoCamera;I)V

    .line 5585
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->galleryExInit()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$11400(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 5589
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$1900(Lcom/android/hwcamera/VideoCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5590
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoCamera;->access$11100(Lcom/android/hwcamera/VideoCamera;I)V

    .line 5591
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5593
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/VideoCamera;->access$11200(Lcom/android/hwcamera/VideoCamera;I)V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 5567
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->restorePreferences()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$10900(Lcom/android/hwcamera/VideoCamera;)V

    .line 5568
    return-void
.end method

.method public onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "KEY"
    .parameter "value"

    .prologue
    .line 5470
    if-nez p1, :cond_1

    .line 5471
    const-string v6, "videocamera"

    const-string v7, " KEY is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    :cond_0
    :goto_0
    return-void

    .line 5475
    :cond_1
    const-string v6, "pref_camera_save_location_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5476
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/hwcamera/CameraSettings;->writPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 5477
    const-string v6, "phone"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5478
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 5482
    :goto_1
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$3400(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 5480
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_1

    .line 5484
    :cond_3
    const-string v6, "pref_video_gps_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5485
    const-string v6, "on"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5487
    const-string v6, "ro.camera.show.eula"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 5488
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10100(Lcom/android/hwcamera/VideoCamera;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/android/hwcamera/CameraSettings;->getFirstTime(Landroid/content/SharedPreferences;)Z

    move-result v3

    .line 5489
    .local v3, isFirstTime:Z
    if-eqz v3, :cond_4

    .line 5490
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showEulaDialog()V
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10500(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 5493
    :cond_4
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/hwcamera/VideoCamera;->access$10200(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 5494
    .local v4, state:Z
    if-nez v4, :cond_5

    .line 5495
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10400(Lcom/android/hwcamera/VideoCamera;)V

    .line 5508
    .end local v3           #isFirstTime:Z
    .end local v4           #state:Z
    :cond_5
    const-string v6, "pref_video_shutter_sound_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5509
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$5700(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v6

    const-string v7, "off"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 5513
    :cond_6
    const-string v6, "pref_video_quality_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 5514
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->getSupportedVideoQuality()Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10600(Lcom/android/hwcamera/VideoCamera;)Ljava/util/ArrayList;

    move-result-object v5

    .line 5515
    .local v5, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->isVideoQualitySupport(Ljava/lang/String;Ljava/util/ArrayList;)Z
    invoke-static {v6, p2, v5}, Lcom/android/hwcamera/VideoCamera;->access$10700(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5521
    .end local v5           #supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 5523
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_video_sound_state_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5524
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const-string v7, "off"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    #setter for: Lcom/android/hwcamera/VideoCamera;->mIsMute:Z
    invoke-static {v6, v7}, Lcom/android/hwcamera/VideoCamera;->access$9702(Lcom/android/hwcamera/VideoCamera;Z)Z

    .line 5526
    const-string v6, "pref_camera_sound_state_key"

    invoke-interface {v2, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5531
    :cond_8
    const-string v6, "pref_video_coloreffect_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 5532
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v6

    const-string v7, "pref_video_coloreffect_key"

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v9, 0x7f0e0186

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5534
    .local v0, colorvalue:Ljava/lang/String;
    const-string v6, "none"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "none"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 5536
    const-string v6, "pref_video_distortion_key"

    const-string v7, "none"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5538
    :cond_9
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v6

    const-string v7, "pref_video_distortion_key"

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v6

    if-nez v6, :cond_a

    .line 5539
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "none"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 5550
    .end local v0           #colorvalue:Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5551
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5552
    const-string v6, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 5553
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$6600(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5562
    :cond_b
    :goto_3
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9800(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 5499
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_c
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/hwcamera/VideoCamera;->access$10200(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 5500
    .restart local v4       #state:Z
    if-nez v4, :cond_5

    .line 5501
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$10400(Lcom/android/hwcamera/VideoCamera;)V

    goto/16 :goto_0

    .line 5542
    .end local v4           #state:Z
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_d
    const-string v6, "pref_video_distortion_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5543
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v6

    const-string v7, "pref_video_distortion_key"

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    const v9, 0x7f0e0222

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5545
    .local v1, distortion:Ljava/lang/String;
    const-string v6, "none"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "none"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 5547
    const-string v6, "pref_video_coloreffect_key"

    const-string v7, "none"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 5554
    .end local v1           #distortion:Ljava/lang/String;
    :cond_e
    const-string v6, "pref_video_quality_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 5555
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 5556
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const-string v7, "pref_video_quality_key"

    const v8, 0x7f0c005c

    invoke-virtual {v6, p2, v7, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 5559
    :cond_f
    const-string v6, "pref_video_whitebalance_key"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 5560
    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v6}, Lcom/android/hwcamera/VideoCamera;->access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    goto/16 :goto_3
.end method

.method public onSubPanelClosed()V
    .locals 0

    .prologue
    .line 5600
    return-void
.end method
