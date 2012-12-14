.class Lcom/android/hwcamera/hwui/GPSDailog$1;
.super Ljava/lang/Object;
.source "GPSDailog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/GPSDailog;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/GPSDailog;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GPSDailog$1;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 54
    const-string v0, "android.settings.SECURITY_SETTINGS"

    .line 55
    .local v0, actionStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 58
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, myIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GPSDailog$1;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/GPSDailog;->access$000(Lcom/android/hwcamera/hwui/GPSDailog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GPSDailog$1;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/GPSDailog;->access$100(Lcom/android/hwcamera/hwui/GPSDailog;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GPSDailog$1;->this$0:Lcom/android/hwcamera/hwui/GPSDailog;

    #getter for: Lcom/android/hwcamera/hwui/GPSDailog;->mKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/GPSDailog;->access$200(Lcom/android/hwcamera/hwui/GPSDailog;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
