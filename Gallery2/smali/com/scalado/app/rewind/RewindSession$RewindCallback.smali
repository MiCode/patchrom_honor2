.class public interface abstract Lcom/scalado/app/rewind/RewindSession$RewindCallback;
.super Ljava/lang/Object;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RewindCallback"
.end annotation


# virtual methods
.method public abstract onBackgroundReady(ILcom/scalado/base/Image;)V
.end method

.method public abstract onEntryReady(I)V
.end method

.method public abstract onSaved(Ljava/lang/String;)V
.end method

.method public abstract onScreen(Landroid/graphics/Bitmap;Lcom/scalado/caps/screen/Screen;I)V
.end method

.method public abstract onScreenChanged(Lcom/scalado/caps/screen/Screen;)V
.end method

.method public abstract onUpdateComplete(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onUpdateMagnifiedComplete(Landroid/graphics/Bitmap;)V
.end method
