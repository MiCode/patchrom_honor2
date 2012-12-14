.class Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"

# interfaces
.implements Lcom/scalado/app/ui/SelectionRect$RectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRectListener"
.end annotation


# instance fields
.field private mSrcRect:Lcom/scalado/base/Rect;

.field private mTmpRect:Lcom/scalado/base/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 1
    .parameter

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->mSrcRect:Lcom/scalado/base/Rect;

    .line 1269
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->mTmpRect:Lcom/scalado/base/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    return-void
.end method


# virtual methods
.method public onRectChanged(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 1277
    return-void
.end method

.method public onSelected(Lcom/scalado/app/ui/SelectionRect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 1280
    const-string v0, "ManualRewindViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face rect pressed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mFaceRects:Ljava/util/Vector;
    invoke-static {v2}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2700(Lcom/scalado/app/rewind/ManualRewindViewer;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #calls: Lcom/scalado/app/rewind/ManualRewindViewer;->startShowWheel(Lcom/scalado/app/ui/SelectionRect;)V
    invoke-static {v0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2800(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/ui/SelectionRect;)V

    .line 1282
    return-void
.end method

.method public validateRect(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 1272
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenWidth:I
    invoke-static {v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2500(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$MyRectListener;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    #getter for: Lcom/scalado/app/rewind/ManualRewindViewer;->mMinScreenHeight:I
    invoke-static {v1}, Lcom/scalado/app/rewind/ManualRewindViewer;->access$2600(Lcom/scalado/app/rewind/ManualRewindViewer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
