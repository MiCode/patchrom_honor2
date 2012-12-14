.class Lcom/android/hwcamera/hwui/ListSubSettingView$1;
.super Ljava/lang/Object;
.source "ListSubSettingView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/ListSubSettingView;->initModeView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/ListSubSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move v1, p3

    .line 77
    .local v1, index:I
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$100(Lcom/android/hwcamera/hwui/ListSubSettingView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_video_quality_key"

    if-ne v4, v5, :cond_0

    .line 80
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$200(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v4

    invoke-static {v4}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, defaultValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$200(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ComboPreferences;

    move-result-object v4

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 86
    .local v2, oldIndex:I
    if-eq v2, v1, :cond_1

    .line 87
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    monitor-enter v5

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/hwcamera/ListPreference;->setValueIndex(I)V

    .line 89
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$300(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$100(Lcom/android/hwcamera/hwui/ListSubSettingView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    #getter for: Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v6}, Lcom/android/hwcamera/hwui/ListSubSettingView;->access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;->ChangeRadioImg(IZ)V

    .line 94
    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView$1;->this$0:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const/4 v5, 0x1

    invoke-virtual {v4, p3, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;->ChangeRadioImg(IZ)V

    .line 95
    return-void

    .line 89
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
