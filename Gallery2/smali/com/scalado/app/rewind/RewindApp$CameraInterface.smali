.class public interface abstract Lcom/scalado/app/rewind/RewindApp$CameraInterface;
.super Ljava/lang/Object;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraInterface"
.end annotation


# virtual methods
.method public abstract getPostview()[B
.end method

.method public abstract previewRunning()Z
.end method

.method public abstract release()V
.end method

.method public abstract startPreview(Z)Z
.end method

.method public abstract stopPreview()Z
.end method

.method public abstract takeBurst()V
.end method
