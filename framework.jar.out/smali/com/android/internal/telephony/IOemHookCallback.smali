.class public interface abstract Lcom/android/internal/telephony/IOemHookCallback;
.super Ljava/lang/Object;
.source "IOemHookCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IOemHookCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onOemHookResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
