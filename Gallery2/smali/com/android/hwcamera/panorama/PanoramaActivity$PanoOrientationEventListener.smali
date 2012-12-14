.class Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method public constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    .line 254
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 262
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-static {p1}, Lcom/android/hwcamera/Util;->roundOrientation(I)I

    move-result v2

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v1, v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$002(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I

    .line 266
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mDeviceOrientation:I
    invoke-static {v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$000(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-static {v2}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int v0, v1, v2

    .line 268
    .local v0, orientationCompensation:I
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$100(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$102(Lcom/android/hwcamera/panorama/PanoramaActivity;I)I

    .line 270
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$PanoOrientationEventListener;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mOrientationCompensation:I
    invoke-static {v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$100(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v2

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->setOrientationIndicator(I)V
    invoke-static {v1, v2}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$200(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V

    goto :goto_0
.end method
