.class Lcom/android/hwcamera/Camera$SuperPanelListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/SuperPanel$Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperPanelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 7741
    iput-object p1, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7741
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera$SuperPanelListener;-><init>(Lcom/android/hwcamera/Camera;)V

    return-void
.end method


# virtual methods
.method public gallerExEntry(Ljava/lang/String;)V
    .locals 1
    .parameter "entryKey"

    .prologue
    .line 7901
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->galleryExStart(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/Camera;->access$14600(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V

    .line 7902
    return-void
.end method

.method public onPanelStateChange(Z)V
    .locals 4
    .parameter "isPanelOpen"

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 7905
    if-eqz p1, :cond_1

    .line 7906
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$14700(Lcom/android/hwcamera/Camera;I)V

    .line 7907
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$14800(Lcom/android/hwcamera/Camera;I)V

    .line 7914
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 7915
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$14900(Lcom/android/hwcamera/Camera;I)V

    .line 7939
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$4700(Lcom/android/hwcamera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->updateShutterButtonBackground(I)V

    .line 7941
    :goto_1
    return-void

    .line 7924
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1100(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCurrentState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1100(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 7925
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->galleryExInit()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$15000(Lcom/android/hwcamera/Camera;)V

    goto :goto_1

    .line 7928
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$14700(Lcom/android/hwcamera/Camera;I)V

    .line 7929
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$14800(Lcom/android/hwcamera/Camera;I)V

    .line 7932
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShootingMode:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$1400(Lcom/android/hwcamera/Camera;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 7933
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V
    invoke-static {v0, v2}, Lcom/android/hwcamera/Camera;->access$14900(Lcom/android/hwcamera/Camera;I)V

    goto :goto_0
.end method

.method public onRestorePreferencesClicked()V
    .locals 1

    .prologue
    .line 7897
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->restorePreferences()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$14500(Lcom/android/hwcamera/Camera;)V

    .line 7898
    return-void
.end method

.method public onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "KEY"
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 7743
    if-nez p1, :cond_0

    .line 7744
    const-string v4, "Camera"

    const-string v5, "onSharedPreferencesChanged err,KEY is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7894
    :goto_0
    return-void

    .line 7748
    :cond_0
    const-string v4, "pref_camera_save_location_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7749
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/hwcamera/CameraSettings;->writPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 7750
    const-string v4, "phone"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7751
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 7755
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$5500(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 7753
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_1

    .line 7757
    :cond_2
    const-string v4, "pref_camera_gps_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7758
    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7760
    const-string v4, "ro.camera.show.eula"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7761
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13500(Lcom/android/hwcamera/Camera;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/CameraSettings;->getFirstTime(Landroid/content/SharedPreferences;)Z

    move-result v1

    .line 7762
    .local v1, isFirstTime:Z
    if-eqz v1, :cond_3

    .line 7763
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showEulaDialog()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13700(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 7766
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$10900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$10200(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 7767
    .local v3, state:Z
    if-nez v3, :cond_5

    .line 7768
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13600(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 7773
    .end local v1           #isFirstTime:Z
    .end local v3           #state:Z
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$10900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$10200(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 7774
    .restart local v3       #state:Z
    if-nez v3, :cond_5

    .line 7775
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13600(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 7784
    .end local v3           #state:Z
    :cond_5
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7785
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7786
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 7830
    :cond_6
    :goto_2
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7831
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7832
    const-string v4, "pref_camera_shootmode_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 7833
    const-string v4, "panorama"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 7834
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$14002(Lcom/android/hwcamera/Camera;Z)Z

    .line 7836
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$12902(Lcom/android/hwcamera/Camera;Z)Z

    .line 7837
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    .line 7838
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    const-string v5, "pref_camera_shootmode_key"

    const v6, 0x7f0c005c

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7839
    const-string v4, "panorama"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/hwcamera/Util;->isPanoramaSupportedByScalado()Z

    move-result v4

    if-nez v4, :cond_10

    .line 7840
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 7841
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->goToPanoromaMode()Z
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$14100(Lcom/android/hwcamera/Camera;)Z

    goto/16 :goto_0

    .line 7787
    :cond_8
    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 7788
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 7790
    const-string v4, "pref_camera_distortion_key"

    const-string v5, "none"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7792
    :cond_9
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_camera_distortion_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_6

    .line 7793
    const/4 v3, 0x1

    .line 7795
    .restart local v3       #state:Z
    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_camera_scenemode_key"

    iget-object v6, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$13800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$13800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 7799
    :cond_a
    const/4 v3, 0x0

    .line 7802
    :cond_b
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto/16 :goto_2

    .line 7804
    .end local v3           #state:Z
    :cond_c
    const-string v4, "pref_camera_distortion_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 7805
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 7807
    const-string v4, "pref_camera_coloreffect_key"

    const-string v5, "none"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 7810
    :cond_d
    const-string v4, "pref_camera_sound_state_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 7811
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    const-string v5, "off"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    #setter for: Lcom/android/hwcamera/Camera;->mIsMute:Z
    invoke-static {v4, v5}, Lcom/android/hwcamera/Camera;->access$6902(Lcom/android/hwcamera/Camera;Z)Z

    .line 7812
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mIsMute:Z
    invoke-static {v5}, Lcom/android/hwcamera/Camera;->access$6900(Lcom/android/hwcamera/Camera;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/FocusManager;->setSoundState(Z)V

    .line 7814
    const-string v4, "pref_video_sound_state_key"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 7817
    :cond_e
    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7818
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    invoke-static {v4, p2}, Lcom/android/hwcamera/CameraSettings;->isWideScreenSize(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 7819
    const-string v4, "pref_camera_widescreen_key"

    const-string v5, "on"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7824
    :goto_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$12902(Lcom/android/hwcamera/Camera;Z)Z

    .line 7825
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In sharepreference, mRestartPreviewNeed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$12900(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7821
    :cond_f
    const-string v4, "pref_camera_widescreen_key"

    const-string v5, "off"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 7844
    :cond_10
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/android/hwcamera/Camera;->access$14200(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V

    .line 7847
    :cond_11
    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 7849
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;)V

    .line 7893
    :cond_12
    :goto_4
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13400(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_0

    .line 7862
    :cond_13
    const-string v4, "pref_camera_grid_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 7863
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    const v5, 0x7f0c0017

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/hwui/GridLines;

    .line 7864
    .local v2, mGridLinesView:Lcom/android/hwcamera/hwui/GridLines;
    const-string v4, "on"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 7865
    invoke-virtual {v2, v8}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto/16 :goto_0

    .line 7867
    :cond_14
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto/16 :goto_0

    .line 7870
    .end local v2           #mGridLinesView:Lcom/android/hwcamera/hwui/GridLines;
    :cond_15
    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "pref_camera_distortion_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 7873
    :cond_16
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;)V

    .line 7875
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashModeEnable()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$14300(Lcom/android/hwcamera/Camera;)V

    goto :goto_4

    .line 7876
    :cond_17
    const-string v4, "pref_camera_auto_focusmode_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 7877
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setAutoFocus(Ljava/lang/String;)V
    invoke-static {v4, p2}, Lcom/android/hwcamera/Camera;->access$14400(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V

    goto :goto_4

    .line 7878
    :cond_18
    const-string v4, "pref_camera_whitebalance_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 7879
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$13900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v4

    const-string v5, "pref_camera_distortion_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_12

    .line 7880
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v4

    const v5, 0x7f0c005a

    invoke-virtual {v4, p2, p1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 7882
    :cond_19
    const-string v4, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 7884
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->checkCurrentStorage()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$3700(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_4

    .line 7886
    :cond_1a
    const-string v4, "pref_camera_scenemode_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 7887
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->setFlashModeEnable()V
    invoke-static {v4}, Lcom/android/hwcamera/Camera;->access$14300(Lcom/android/hwcamera/Camera;)V

    goto/16 :goto_4

    .line 7888
    :cond_1b
    const-string v4, "pref_camera_widescreen_key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 7889
    iget-object v4, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #setter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v4, v7}, Lcom/android/hwcamera/Camera;->access$12902(Lcom/android/hwcamera/Camera;Z)Z

    .line 7890
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In sharepreference, mRestartPreviewNeed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z
    invoke-static {v6}, Lcom/android/hwcamera/Camera;->access$12900(Lcom/android/hwcamera/Camera;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSubPanelClosed()V
    .locals 2

    .prologue
    .line 7944
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7945
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7946
    iget-object v0, p0, Lcom/android/hwcamera/Camera$SuperPanelListener;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->initPanorama()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$15100(Lcom/android/hwcamera/Camera;)V

    .line 7948
    :cond_0
    return-void
.end method
