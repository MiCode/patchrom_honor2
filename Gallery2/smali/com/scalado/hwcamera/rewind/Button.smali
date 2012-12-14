.class public Lcom/scalado/hwcamera/rewind/Button;
.super Landroid/widget/ImageView;
.source "Button.java"

# interfaces
.implements Lcom/scalado/app/rewind/ExtWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/hwcamera/rewind/Button$1;,
        Lcom/scalado/hwcamera/rewind/Button$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/scalado/hwcamera/rewind/Button$MyHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/scalado/hwcamera/rewind/Button$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/scalado/hwcamera/rewind/Button$MyHandler;-><init>(Lcom/scalado/hwcamera/rewind/Button;Lcom/scalado/hwcamera/rewind/Button$1;)V

    iput-object v0, p0, Lcom/scalado/hwcamera/rewind/Button;->mHandler:Lcom/scalado/hwcamera/rewind/Button$MyHandler;

    .line 23
    return-void
.end method


# virtual methods
.method public getRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dst"

    .prologue
    .line 35
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Button;->mHandler:Lcom/scalado/hwcamera/rewind/Button$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/Button$MyHandler;->sendEmptyMessage(I)Z

    .line 31
    return-void
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/Button;->mHandler:Lcom/scalado/hwcamera/rewind/Button$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/Button$MyHandler;->sendEmptyMessage(I)Z

    .line 27
    return-void
.end method
