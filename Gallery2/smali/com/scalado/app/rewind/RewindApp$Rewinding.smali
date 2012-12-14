.class Lcom/scalado/app/rewind/RewindApp$Rewinding;
.super Lcom/scalado/app/rewind/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rewinding"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$Rewinding;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$Rewinding;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected beforeSwitching()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Rewinding;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$State;

    move-result-object v0

    instance-of v0, v0, Lcom/scalado/app/rewind/RewindApp$Loading;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Rewinding;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mCurTask:Lcom/scalado/app/rewind/RewindApp$State;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$900(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$State;

    move-result-object v0

    instance-of v0, v0, Lcom/scalado/app/rewind/RewindApp$Capturing;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current task not load or capture!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_0
    return-void
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method protected surfaceChanged(Landroid/view/SurfaceView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1070
    return-void
.end method
