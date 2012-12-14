.class public interface abstract Lcom/scalado/app/ui/SelectionRect$RectListener;
.super Ljava/lang/Object;
.source "SelectionRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/SelectionRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RectListener"
.end annotation


# virtual methods
.method public abstract onRectChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onSelected(Lcom/scalado/app/ui/SelectionRect;)V
.end method

.method public abstract validateRect(Landroid/graphics/Rect;)Z
.end method
