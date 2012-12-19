.class public Lcom/android/gallery3d/photoeditor/PhotoView;
.super Landroid/opengl/GLSurfaceView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/photoeditor/PhotoView$1;,
        Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;
    }
.end annotation


# instance fields
.field private final renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;-><init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/PhotoView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setEGLContextClientVersion(I)V

    .line 42
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->setRenderMode(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public flipPhoto(FF)V
    .locals 1
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->flipPhoto(FF)V

    .line 96
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 75
    return-void
.end method

.method public getPhotoBounds()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v2, v1, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    monitor-enter v2

    .line 49
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v1, v1, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->photoBounds:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 50
    .local v0, photoBounds:Landroid/graphics/RectF;
    monitor-exit v2

    .line 51
    return-object v0

    .line 50
    .end local v0           #photoBounds:Landroid/graphics/RectF;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queue(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/PhotoView;->requestRender()V

    .line 61
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public rotatePhoto(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->rotatePhoto(F)V

    .line 89
    return-void
.end method

.method public setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V
    .locals 1
    .parameter "photo"
    .parameter "clearTransform"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoView;->renderer:Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/PhotoView$PhotoRenderer;->setPhoto(Lcom/android/gallery3d/photoeditor/Photo;Z)V

    .line 82
    return-void
.end method
