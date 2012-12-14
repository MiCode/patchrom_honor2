.class Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoadingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 877
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1900(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->clearLoadingBit(I)V
    invoke-static {v0, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1800(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 880
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    if-nez v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/MediaSet;->requestSync(Lcom/android/gallery3d/data/MediaSet$SyncListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2102(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mGetAlbum:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2300(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 890
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/ActionModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->getSelectedString()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2500(Lcom/android/gallery3d/app/AlbumSetPage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSyncTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 900
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 902
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;

    if-nez v0, :cond_4

    .line 906
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowToast:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2200(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 908
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0e008d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 911
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowToast:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$002(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 918
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/StateManager;->finishState(Lcom/android/gallery3d/app/ActivityState;)V

    .line 924
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowToast:Z
    invoke-static {v0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$002(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    goto/16 :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->setLoadingBit(I)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$2000(Lcom/android/gallery3d/app/AlbumSetPage;I)V

    .line 873
    return-void
.end method
