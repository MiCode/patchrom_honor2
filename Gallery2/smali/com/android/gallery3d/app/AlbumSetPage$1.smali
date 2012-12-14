.class Lcom/android/gallery3d/app/AlbumSetPage$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowToast:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$002(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    .line 151
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #setter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowToast:Z
    invoke-static {v0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$002(Lcom/android/gallery3d/app/AlbumSetPage;Z)Z

    .line 156
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v0, v0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 161
    :cond_1
    return-void
.end method
