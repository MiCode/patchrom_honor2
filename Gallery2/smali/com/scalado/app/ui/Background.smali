.class public Lcom/scalado/app/ui/Background;
.super Lcom/scalado/app/ui/Widget;
.source "Background.java"


# instance fields
.field private mBBox:Landroid/graphics/Rect;

.field private mIsMoving:Z


# direct methods
.method public constructor <init>(Lcom/scalado/app/ui/UiManager;)V
    .locals 1
    .parameter "uiMgr"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/Widget;-><init>(Lcom/scalado/app/ui/UiManager;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/ui/Background;->mIsMoving:Z

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/ui/Background;->mBBox:Landroid/graphics/Rect;

    .line 17
    return-void
.end method


# virtual methods
.method public isMoving()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/scalado/app/ui/Background;->mIsMoving:Z

    return v0
.end method

.method public setMoving(Z)V
    .locals 0
    .parameter "moving"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/scalado/app/ui/Background;->mIsMoving:Z

    .line 29
    return-void
.end method
