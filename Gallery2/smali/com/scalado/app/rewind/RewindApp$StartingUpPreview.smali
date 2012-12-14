.class Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;
.super Lcom/scalado/app/rewind/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingUpPreview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 968
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 972
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected start()V
    .locals 3

    .prologue
    .line 957
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v1, 0x0

    const/4 v2, 0x4

    #calls: Lcom/scalado/app/rewind/RewindApp;->setViewVisibilities(II)V
    invoke-static {v0, v1, v2}, Lcom/scalado/app/rewind/RewindApp;->access$1800(Lcom/scalado/app/rewind/RewindApp;II)V

    .line 958
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->hideTopbar()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1700(Lcom/scalado/app/rewind/RewindApp;)V

    .line 959
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 962
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$800(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$Previewing;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$Previewing;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 965
    :cond_0
    return-void
.end method
