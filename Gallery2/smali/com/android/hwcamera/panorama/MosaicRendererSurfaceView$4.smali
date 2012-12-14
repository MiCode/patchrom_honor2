.class Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;
.super Ljava/lang/Object;
.source "MosaicRendererSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->setWarping(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;->this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    iput-boolean p2, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;->this$0:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;

    #getter for: Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->mRenderer:Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;->access$200(Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView;)Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceView$4;->val$flag:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/panorama/MosaicRendererSurfaceViewRenderer;->setWarping(Z)V

    .line 372
    return-void
.end method
