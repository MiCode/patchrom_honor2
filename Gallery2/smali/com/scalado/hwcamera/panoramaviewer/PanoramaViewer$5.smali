.class Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;
.super Ljava/lang/Thread;
.source "PanoramaViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->setPanoramaData(Landroid/content/res/Resources;Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    :goto_0
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v0, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    iget-boolean v0, v0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->isOnRendered:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->messageHandlerCircle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$100(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    return-void

    .line 314
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$5;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method
