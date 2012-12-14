.class Lcom/android/hwcamera/VideoCamera$16;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->showEulaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 5397
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5401
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$10100(Lcom/android/hwcamera/VideoCamera;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/hwcamera/CameraSettings;->writeFirstTime(Landroid/content/SharedPreferences;Z)V

    .line 5402
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$10300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/hwcamera/VideoCamera;->access$10200(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 5403
    .local v0, state:Z
    if-nez v0, :cond_0

    .line 5404
    const-string v1, "gpsstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " the current gps state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5405
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$10400(Lcom/android/hwcamera/VideoCamera;)V

    .line 5413
    :goto_0
    return-void

    .line 5407
    :cond_0
    const-string v1, "gpsstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " the current gps state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_video_gps_key"

    const-string v3, "on"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5410
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setGPSstatus(Z)V

    .line 5411
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera$16;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V
    invoke-static {v1}, Lcom/android/hwcamera/VideoCamera;->access$9800(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0
.end method
