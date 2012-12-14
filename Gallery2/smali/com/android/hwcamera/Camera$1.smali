.class Lcom/android/hwcamera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/Camera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/hwcamera/Camera$1;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/hwcamera/Camera$1;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$1;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ShutterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 529
    return-void
.end method
