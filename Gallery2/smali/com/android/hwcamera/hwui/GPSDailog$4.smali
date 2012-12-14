.class Lcom/android/hwcamera/hwui/GPSDailog$4;
.super Ljava/lang/Object;
.source "GPSDailog.java"

# interfaces
.implements Lcom/android/hwcamera/hwui/RotateDailog$RotateDailogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/GPSDailog;

.field final synthetic val$cameraSettingKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/GPSDailog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GPSDailog$4;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    iput-object p2, p0, Lcom/android/hwcamera/hwui/GPSDailog$4;->val$cameraSettingKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelGpsStateByDailogDismiss()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GPSDailog$4;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->access$100(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/hwui/GPSDailog$4;->val$cameraSettingKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, recordLocation:Z
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GPSDailog$4;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->access$300(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setGPSstatus(Z)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GPSDailog$4;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->access$300(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setGPSstatus(Z)V

    goto :goto_0
.end method
