.class Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/scalado/app/rewind/RectTracker$RectTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRectTrackerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public onAnalyzeComplete()V
    .locals 2

    .prologue
    .line 1303
    const-string v0, "ManualRewindViewer"

    const-string v1, "onAnalyzeComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectTrackerListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->asyncFaceDetectionComplete()V
    invoke-static {v0}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2900(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    .line 1305
    return-void
.end method

.method public onImageAnalyzed(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1294
    const-string v0, "ManualRewindViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImageAnalyzed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-void
.end method
