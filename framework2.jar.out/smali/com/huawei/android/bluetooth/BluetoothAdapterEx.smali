.class public final Lcom/huawei/android/bluetooth/BluetoothAdapterEx;
.super Ljava/lang/Object;
.source "BluetoothAdapterEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static sAdapter:Lcom/huawei/android/bluetooth/BluetoothAdapterEx;


# instance fields
.field private mService:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;->mService:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method public static declared-synchronized getDefaultAdapter()Lcom/huawei/android/bluetooth/BluetoothAdapterEx;
    .locals 2

    .prologue
    const-class v1, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;->sAdapter:Lcom/huawei/android/bluetooth/BluetoothAdapterEx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;

    invoke-direct {v0}, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;-><init>()V

    sput-object v0, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;->sAdapter:Lcom/huawei/android/bluetooth/BluetoothAdapterEx;

    :cond_0
    sget-object v0, Lcom/huawei/android/bluetooth/BluetoothAdapterEx;->sAdapter:Lcom/huawei/android/bluetooth/BluetoothAdapterEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public fetchRemoteDiInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "remoteAddress"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRemoteServices(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
