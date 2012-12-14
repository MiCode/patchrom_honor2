.class Lcom/scalado/app/rewind/RewindSession$MagnifierParams;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierParams"
.end annotation


# instance fields
.field mDims:Lcom/scalado/base/Size;

.field mScreenRect:Lcom/scalado/base/Rect;

.field mSrcRect:Lcom/scalado/base/Rect;

.field final synthetic this$0:Lcom/scalado/app/rewind/RewindSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession;)V
    .locals 1
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    .line 1108
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    .line 1109
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;-><init>(Lcom/scalado/app/rewind/RewindSession;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/app/rewind/RewindSession$MagnifierParams;
    .locals 4

    .prologue
    .line 1112
    new-instance v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;-><init>(Lcom/scalado/app/rewind/RewindSession;)V

    .line 1113
    .local v0, newParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    iget-object v2, v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mScreenRect:Lcom/scalado/base/Rect;

    #calls: Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RewindSession;->access$2600(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1114
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    iget-object v2, v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mSrcRect:Lcom/scalado/base/Rect;

    #calls: Lcom/scalado/app/rewind/RewindSession;->copyRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    invoke-static {v1, v2}, Lcom/scalado/app/rewind/RewindSession;->access$2600(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V

    .line 1115
    new-instance v1, Lcom/scalado/base/Size;

    iget-object v2, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v1, v0, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->mDims:Lcom/scalado/base/Size;

    .line 1116
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/scalado/app/rewind/RewindSession$MagnifierParams;->clone()Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    move-result-object v0

    return-object v0
.end method
