.class Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;
.super Lcom/scalado/app/rewind/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingPreviewStartUp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 976
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 985
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
    .line 989
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1100(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->hideTopbar()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1700(Lcom/scalado/app/rewind/RewindApp;)V

    .line 982
    return-void
.end method
