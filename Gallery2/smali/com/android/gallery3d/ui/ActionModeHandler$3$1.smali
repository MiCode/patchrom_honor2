.class Lcom/android/gallery3d/ui/ActionModeHandler$3$1;
.super Ljava/lang/Object;
.source "ActionModeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/ActionModeHandler$3;->run(Lcom/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ActionModeHandler$3;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iput-object p2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    iput p3, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->val$operation:I

    iput-object p4, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v2, 0x0

    #setter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenuTask:Lcom/android/gallery3d/util/Future;
    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$302(Lcom/android/gallery3d/ui/ActionModeHandler;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;

    .line 346
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->val$jc:Lcom/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$400(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/view/Menu;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->val$operation:I

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    .line 348
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-boolean v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->val$supportShare:Z

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->val$item:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->this$1:Lcom/android/gallery3d/ui/ActionModeHandler$3;

    iget-object v1, v1, Lcom/android/gallery3d/ui/ActionModeHandler$3;->this$0:Lcom/android/gallery3d/ui/ActionModeHandler;

    #getter for: Lcom/android/gallery3d/ui/ActionModeHandler;->mShareActionProvider:Landroid/widget/ShareActionProvider;
    invoke-static {v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->access$500(Lcom/android/gallery3d/ui/ActionModeHandler;)Landroid/widget/ShareActionProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/ActionModeHandler$3$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActionModeHandler"

    const-string v2, "Exception in ShareActionProvider.setShareIntent()"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
