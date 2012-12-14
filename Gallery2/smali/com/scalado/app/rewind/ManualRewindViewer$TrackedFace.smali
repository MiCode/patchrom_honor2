.class Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;
.super Ljava/lang/Object;
.source "ManualRewindViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/ManualRewindViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedFace"
.end annotation


# instance fields
.field mCurIndex:I

.field mId:I

.field mRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/ManualRewindViewer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V
    .locals 1
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->this$0:Lcom/scalado/app/rewind/ManualRewindViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mRect:Landroid/graphics/Rect;

    .line 830
    const/4 v0, -0x1

    iput v0, p0, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;->mCurIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/ManualRewindViewer;Lcom/scalado/app/rewind/ManualRewindViewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/ManualRewindViewer$TrackedFace;-><init>(Lcom/scalado/app/rewind/ManualRewindViewer;)V

    return-void
.end method
