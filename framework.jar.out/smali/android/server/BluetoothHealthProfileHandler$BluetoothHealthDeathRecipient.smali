.class Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;
.super Ljava/lang/Object;
.source "BluetoothHealthProfileHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothHealthProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthDeathRecipient"
.end annotation


# instance fields
.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mService:Landroid/server/BluetoothService;


# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V
    .locals 0
    .parameter "service"
    .parameter "config"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mService:Landroid/server/BluetoothService;

    iput-object p2, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    const-string v0, "BluetoothHealthProfileHandler"

    const-string v1, "Binder is dead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mService:Landroid/server/BluetoothService;

    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mService:Landroid/server/BluetoothService;

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-void
.end method
