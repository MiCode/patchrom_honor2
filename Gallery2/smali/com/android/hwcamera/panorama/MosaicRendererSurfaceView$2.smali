.class Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->preprocess([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

.field final synthetic val$transformMatrix:[F


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;[F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;->this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iput-object p2, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;->val$transformMatrix:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;->this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->access$200(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$2;->val$transformMatrix:[F

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->preprocess([F)V

    .line 351
    return-void
.end method
