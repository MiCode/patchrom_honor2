.class Lcom/android/hwcamera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/Camera;->initCameraSwitcher()V
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
    .line 3785
    iput-object p1, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraState:I
    invoke-static {v0}, Lcom/android/hwcamera/Camera;->access$5600(Lcom/android/hwcamera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mCameraId:I
    invoke-static {v1}, Lcom/android/hwcamera/Camera;->access$7900(Lcom/android/hwcamera/Camera;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/hwcamera/Camera$7;->this$0:Lcom/android/hwcamera/Camera;

    #getter for: Lcom/android/hwcamera/Camera;->mNumberOfCameras:I
    invoke-static {v2}, Lcom/android/hwcamera/Camera;->access$12000(Lcom/android/hwcamera/Camera;)I

    move-result v2

    rem-int/2addr v1, v2

    #calls: Lcom/android/hwcamera/Camera;->switchCameraId(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->access$12100(Lcom/android/hwcamera/Camera;I)V

    .line 3791
    :cond_0
    return-void
.end method
