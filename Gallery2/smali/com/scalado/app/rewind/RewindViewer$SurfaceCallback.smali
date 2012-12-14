.class public Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;
.super Ljava/lang/Object;
.source "RewindViewer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindViewer;


# direct methods
.method protected constructor <init>(Lcom/scalado/app/rewind/RewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    if-ge p3, p4, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    iput-object p1, v0, Lcom/scalado/app/rewind/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 129
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v1, v1, Lcom/scalado/app/rewind/RewindViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 130
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    invoke-virtual {v0, p3, p4}, Lcom/scalado/app/rewind/RewindViewer;->onSurfaceChanged(II)V

    .line 131
    const-string v0, "RewindViewer"

    const-string v1, "surfaceChanged: %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 118
    const-string v0, "RewindViewer"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v0}, Lcom/scalado/app/ui/UiManager;->start()V

    .line 120
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 112
    const-string v0, "kangwei"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindViewer$SurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/RewindViewer;->mUiMgr:Lcom/scalado/app/ui/UiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scalado/app/ui/UiManager;->stop(Z)V

    .line 114
    return-void
.end method
