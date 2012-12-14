.class Lcom/android/hwcamera/panorama/PanoramaActivity$5;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->onMosaicSurfaceCreated(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

.field final synthetic val$textureID:I


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iput p2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->val$textureID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->val$textureID:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0, v1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1202(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 614
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1200(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$5;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 617
    :cond_1
    return-void
.end method
