.class public Lcom/huawei/android/net/wifi/WifiManagerEx;
.super Ljava/lang/Object;
.source "WifiManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApLinkedStaList(Landroid/net/wifi/WifiManager;)Ljava/util/List;
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getApLinkedStaList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setSoftapDisassociateSta(Ljava/lang/String;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "mac"
    .parameter "obj"

    .prologue
    .line 84
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->setSoftapDisassociateSta(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static setSoftapMacFilter(Ljava/lang/String;Landroid/net/wifi/WifiManager;)V
    .locals 0
    .parameter "macFilter"
    .parameter "obj"

    .prologue
    .line 74
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->setSoftapMacFilter(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static setWifiApMaxSCB(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 2
    .parameter "obj"
    .parameter "wifiConfig"
    .parameter "maxNum"

    .prologue
    .line 60
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
