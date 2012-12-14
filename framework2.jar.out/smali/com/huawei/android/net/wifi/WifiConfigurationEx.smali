.class public Lcom/huawei/android/net/wifi/WifiConfigurationEx;
.super Ljava/lang/Object;
.source "WifiConfigurationEx.java"


# instance fields
.field private final mConfig:Landroid/net/wifi/WifiConfiguration;

.field public wapiAsCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 55
    return-void
.end method


# virtual methods
.method public getWapiAsCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiAsCert:Ljava/lang/String;

    return-object v0
.end method

.method public getWapiCertIndex()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiCertIndex:I

    return v0
.end method

.method public getWapiPskType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiPskType:I

    return v0
.end method

.method public getWapiUserCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiUserCert:Ljava/lang/String;

    return-object v0
.end method

.method public setWapiAsCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapiAsCert"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiAsCert:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setWapiCertIndex(I)V
    .locals 0
    .parameter "wapiCertIndex"

    .prologue
    .line 78
    iput p1, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiCertIndex:I

    .line 79
    return-void
.end method

.method public setWapiPskType(I)V
    .locals 0
    .parameter "wapiPskType"

    .prologue
    .line 86
    iput p1, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiPskType:I

    .line 87
    return-void
.end method

.method public setWapiUserCert(Ljava/lang/String;)V
    .locals 0
    .parameter "wapiUserCert"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huawei/android/net/wifi/WifiConfigurationEx;->wapiUserCert:Ljava/lang/String;

    .line 71
    return-void
.end method
