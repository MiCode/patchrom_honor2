.class Lcom/android/hwcamera/ActivityBase$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/hwcamera/ActivityBase$1;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    const-string v0, "ActivityBase"

    const-string v1, "mDeletePictureReceiver has delete pic"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$1;->this$0:Lcom/android/hwcamera/ActivityBase;

    iget-boolean v0, v0, Lcom/android/hwcamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$1;->this$0:Lcom/android/hwcamera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/hwcamera/ActivityBase;->updateRemaining()V

    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$1;->this$0:Lcom/android/hwcamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ActivityBase;->updateThumbnailButton(Z)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ActivityBase$1;->this$0:Lcom/android/hwcamera/ActivityBase;

    const/4 v1, 0x1

    #setter for: Lcom/android/hwcamera/ActivityBase;->mIsDeletePicOnGallery:Z
    invoke-static {v0, v1}, Lcom/android/hwcamera/ActivityBase;->access$002(Lcom/android/hwcamera/ActivityBase;Z)Z

    goto :goto_0
.end method
