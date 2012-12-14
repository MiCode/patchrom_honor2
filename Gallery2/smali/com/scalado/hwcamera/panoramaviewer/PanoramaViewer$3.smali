.class Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;
.super Ljava/lang/Object;
.source "PanoramaViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;
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
    .line 115
    iput-object p1, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    .line 119
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget v2, v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->xClick:F

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget v2, v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->xClick:F

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v2, v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {v2, v1}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->setFlatMode(Z)V

    .line 130
    :goto_1
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v2, v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->glview:Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;

    invoke-virtual {v2}, Lcom/scalado/hwcamera/panoramaviewer/MyGLSurfaceView;->initWall()V

    .line 131
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v3}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$200(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    #setter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeFlat:Z
    invoke-static {v2, v0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$202(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;Z)Z

    goto :goto_0

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    #getter for: Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->modeSwitchBtn:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->access$300(Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer$3;->this$0:Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;

    iget-object v2, v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaViewer;->panoramaData:Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;

    invoke-virtual {v2, v0}, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->setFlatMode(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 131
    goto :goto_2
.end method
