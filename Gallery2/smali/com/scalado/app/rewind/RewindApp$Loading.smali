.class Lcom/scalado/app/rewind/RewindApp$Loading;
.super Lcom/scalado/app/rewind/RewindApp$ReceivingImages;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loading"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$Loading;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$ReceivingImages;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$Loading;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected end()V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method protected start()V
    .locals 4

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Loading;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v1, 0x1

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mSourcesLoaded:Z
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$2302(Lcom/scalado/app/rewind/RewindApp;Z)Z

    .line 1003
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Loading;->this$0:Lcom/scalado/app/rewind/RewindApp;

    new-instance v1, Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindApp$Loading;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    #setter for: Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;
    invoke-static {v0, v1}, Lcom/scalado/app/rewind/RewindApp;->access$2402(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$JpegLoader;)Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    .line 1004
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Loading;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #getter for: Lcom/scalado/app/rewind/RewindApp;->mJpegLoader:Lcom/scalado/app/rewind/RewindApp$JpegLoader;
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$2400(Lcom/scalado/app/rewind/RewindApp;)Lcom/scalado/app/rewind/RewindApp$JpegLoader;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/RewindApp$JpegLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1005
    return-void
.end method
