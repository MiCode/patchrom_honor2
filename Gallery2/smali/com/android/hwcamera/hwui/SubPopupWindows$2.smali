.class Lcom/android/hwcamera/hwui/SubPopupWindows$2;
.super Ljava/lang/Object;
.source "SubPopupWindows.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeySettingView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 128
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move v0, p3

    .line 129
    .local v0, index:I
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, oldIndex:I
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$000(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->updatePanelIdleState()Z

    .line 132
    if-eq v1, v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    monitor-enter v3

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/hwcamera/ListPreference;->setValueIndex(I)V

    .line 135
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$300(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$200(Lcom/android/hwcamera/hwui/SubPopupWindows;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;->onItemSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/hwcamera/hwui/SubPopupWindows;->ChangeRadioImg(IZ)V

    .line 140
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    const/4 v3, 0x1

    invoke-virtual {v2, p3, v3}, Lcom/android/hwcamera/hwui/SubPopupWindows;->ChangeRadioImg(IZ)V

    .line 141
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$2;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v2}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$000(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 142
    return-void

    .line 135
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
