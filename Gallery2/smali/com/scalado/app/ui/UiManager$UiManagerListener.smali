.class public interface abstract Lcom/scalado/app/ui/UiManager$UiManagerListener;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiManagerListener"
.end annotation


# virtual methods
.method public abstract needsDrawing()Z
.end method

.method public abstract onDeselect(Lcom/scalado/app/ui/Widget;)V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onIndexFocused(Lcom/scalado/app/ui/Widget;I)V
.end method

.method public abstract onIndexSelected(Lcom/scalado/app/ui/Widget;I)V
.end method

.method public abstract onNoneSelected()V
.end method

.method public abstract onSelected(Lcom/scalado/app/ui/Widget;)V
.end method
