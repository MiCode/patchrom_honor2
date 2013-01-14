.class public Lcom/huawei/android/os/PowerManagerEx;
.super Ljava/lang/Object;
.source "PowerManagerEx.java"


# instance fields
.field mService:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/os/PowerManagerEx;->mService:Landroid/os/IPowerManager;

    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IPowerManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/huawei/android/os/PowerManagerEx;->mService:Landroid/os/IPowerManager;

    return-object v0
.end method

.method public setAcl(I)I
    .locals 2
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
