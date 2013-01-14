.class public Lcom/huawei/android/os/storage/IMountServiceEx;
.super Ljava/lang/Object;
.source "IMountServiceEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchParamInit(Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter "obj"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-interface {p0, p1}, Landroid/os/storage/IMountService;->switchParamInit(Ljava/lang/String;)V

    return-void
.end method
