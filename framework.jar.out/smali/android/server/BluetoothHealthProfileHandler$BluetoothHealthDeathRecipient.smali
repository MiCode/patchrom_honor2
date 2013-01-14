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
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mService:Landroid/server/BluetoothService;

    .line 359
    iput-object p2, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 360
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 362
    const-string v0, "BluetoothHealthProfileHandler"

    const-string v1, "Binder is dead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mService:Landroid/server/BluetoothService;

    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    .line 364
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mService:Landroid/server/BluetoothService;

    .line 367
    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 368
    return-void
.end method
