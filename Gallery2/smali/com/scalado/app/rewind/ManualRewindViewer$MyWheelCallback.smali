.class Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/scalado/app/ui/Wheel$WheelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWheelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1285
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public getImage()Lcom/scalado/base/Image;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyWheelCallback;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    iget-object v0, v0, Lcom/scalado/app/rewind/ManualRewindViewer;->mRewind:Lcom/scalado/app/rewind/RewindSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindSession;->getMagnifiedPreview()Lcom/scalado/base/Image;

    move-result-object v0

    return-object v0
.end method
