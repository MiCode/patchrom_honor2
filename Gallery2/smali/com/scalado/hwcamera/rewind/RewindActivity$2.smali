.class Lcom/scalado/hwcamera/rewind/RewindActivity$2;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity;->deleteFolderSilently()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$2;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$2;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2500(Lcom/scalado/hwcamera/rewind/RewindActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$2;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    const/4 v1, 0x1

    #setter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z
    invoke-static {v0, v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2502(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)Z

    .line 682
    invoke-static {}, Lcom/android/hwcamera/Storage;->getRewindPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Storage;->delAllFile(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$2;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    const/4 v1, 0x0

    #setter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mIsDeletingFiles:Z
    invoke-static {v0, v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2502(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)Z

    .line 685
    :cond_0
    return-void
.end method
