.class public Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;
.super Ljava/lang/Object;
.source "RewindApp.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 759
    if-ge p3, p4, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mDisplayWidth:I
    invoke-static {v0, p3}, Lcom/scalado/app/rewind/RewindApp;->access$502(Lcom/scalado/app/rewind/RewindApp;I)I

    .line 763
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mDisplayHeight:I
    invoke-static {v0, p4}, Lcom/scalado/app/rewind/RewindApp;->access$602(Lcom/scalado/app/rewind/RewindApp;I)I

    .line 764
    const-string v0, "RewindApp"

    const-string v1, "*** surfaceChanged: %dx%d"

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

    .line 765
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$702(Lcom/scalado/app/rewind/RewindApp;Landroid/view/SurfaceView;)Landroid/view/SurfaceView;

    .line 766
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$State;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindApp$State;->surfaceChanged(Landroid/view/SurfaceView;)V

    .line 767
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1000(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PreviewSurfaceCallback;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mAutoReplacer:Lcom/scalado/app/rewind/AutoSession;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1000(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/AutoSession;

    move-result-object v0

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, p3, p4}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 749
    const-string v0, "RewindApp"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 753
    const-string v0, "RewindApp"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method
