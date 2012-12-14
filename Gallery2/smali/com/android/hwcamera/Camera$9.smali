.class Lcom/android/hwcamera/Camera$9;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera;->showEulaDialog()V
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
    .line 7721
    iput-object p1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 7725
    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$13500(Lcom/android/hwcamera/Camera;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraSettings;->writeFirstTime(Landroid/content/SharedPreferences;Z)V

    .line 7726
    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$10900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$10200(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 7727
    .local v0, state:Z
    if-nez v0, :cond_0

    .line 7728
    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$13600(Lcom/android/hwcamera/Camera;)V

    .line 7735
    :goto_0
    return-void

    .line 7730
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$13000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_gps_key"

    const-string v3, "on"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 7732
    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setGPSstatus(Z)V

    .line 7733
    iget-object v1, p0, Lcom/android/hwcamera/Camera$9;->this$0:Lcom/android/hwcamera/Camera;

    #calls: Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$13400(Lcom/android/hwcamera/Camera;)V

    goto :goto_0
.end method
