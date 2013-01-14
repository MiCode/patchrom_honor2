.class Lcom/android/hwcamera/FocusManager$1;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/FocusManager;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager$1;->this$0:Lcom/android/hwcamera/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraMoved()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "FocusManager"

    const-string v1, "onCameraMoved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setIsCafEnded(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$1;->this$0:Lcom/android/hwcamera/FocusManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->setFocusPolicy(I)V

    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$1;->this$0:Lcom/android/hwcamera/FocusManager;

    #getter for: Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/FocusManager;->access$000(Lcom/android/hwcamera/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$1;->this$0:Lcom/android/hwcamera/FocusManager;

    #getter for: Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/hwcamera/FocusManager;->access$000(Lcom/android/hwcamera/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager$1;->this$0:Lcom/android/hwcamera/FocusManager;

    #getter for: Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;
    invoke-static {v0}, Lcom/android/hwcamera/FocusManager;->access$100(Lcom/android/hwcamera/FocusManager;)Lcom/android/hwcamera/CameraMovedController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/CameraMovedController;->removeOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V

    .line 114
    return-void
.end method
