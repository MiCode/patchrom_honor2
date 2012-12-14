.class Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->onFaceDetecionComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->this$1:Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    iput p2, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->this$1:Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mIndexSelector:Lcom/scalado/hwcamera/rewind/IndexSelector;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1300(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/IndexSelector;

    move-result-object v0

    iget v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/IndexSelector;->check(I)V

    .line 524
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->this$1:Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mTopbar:Lcom/scalado/hwcamera/rewind/Topbar;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1400(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Topbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/hwcamera/rewind/Topbar;->show()V

    .line 525
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->this$1:Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1500(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/hwcamera/rewind/Button;->show()V

    .line 526
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;->this$1:Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;

    iget-object v0, v0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1600(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/hwcamera/rewind/Button;->show()V

    .line 527
    return-void
.end method
