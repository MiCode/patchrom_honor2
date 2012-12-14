.class abstract Lcom/scalado/app/rewind/RewindApp$State;
.super Ljava/lang/Object;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 0
    .parameter

    .prologue
    .line 863
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected acceptsImages()Z
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method protected beforeSwitching()V
    .locals 0

    .prologue
    .line 865
    return-void
.end method

.method protected end()V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 879
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1200(Lcom/scalado/app/rewind/RewindApp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    const/4 v0, 0x1

    .line 884
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 891
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mPreviewEnabled:Z
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1200(Lcom/scalado/app/rewind/RewindApp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->reset()V

    .line 894
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCurSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$700(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mRewindSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindApp;->access$1100(Lcom/scalado/app/rewind/RewindApp;)Landroid/view/SurfaceView;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$StartingUpPreview;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    .line 900
    :goto_0
    const/4 v0, 0x1

    .line 903
    :goto_1
    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$State;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$PendingPreviewStartUp;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #calls: Lcom/scalado/app/rewind/RewindApp;->switchTask(Lcom/scalado/app/rewind/RewindApp$State;)V
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$1400(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$State;)V

    goto :goto_0

    .line 903
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 874
    return-void
.end method
