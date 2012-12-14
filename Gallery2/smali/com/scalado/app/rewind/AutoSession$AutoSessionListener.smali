.class public interface abstract Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
.super Ljava/lang/Object;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoSessionListener"
.end annotation


# virtual methods
.method public abstract onAllImagesAdded()V
.end method

.method public abstract onOutputted(Ljava/lang/String;)V
.end method

.method public abstract onRects(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onScreenRendered(Lcom/scalado/base/Image;)V
.end method

.method public abstract onSourceImage(Lcom/scalado/base/Image;)V
.end method
