.class public Lcom/android/internal/telephony/msim/MSimProxyManager;
.super Ljava/lang/Object;
.source "MSimProxyManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PROXY"

.field private static sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;


# instance fields
.field private mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mMSimIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;

.field private mMSimIccSmsInterfaceManager:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

.field private mMSimPhoneSubInfoProxy:Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;

.field private mProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "context"
    .parameter "phoneProxy"
    .parameter "uiccManager"
    .parameter "ci"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 76
    iput-object p3, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 77
    iput-object p4, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mMSimIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mMSimPhoneSubInfoProxy:Lcom/android/internal/telephony/msim/MSimPhoneSubInfoProxy;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mMSimIccSmsInterfaceManager:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    .line 83
    invoke-static {p1, p3, p4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 84
    invoke-static {p1, p3, p4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 86
    const-string v0, "Constructor - Exit"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/MSimProxyManager;
    .locals 1
    .parameter "context"
    .parameter "phoneProxy"
    .parameter "uiccMgr"
    .parameter "ci"

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/internal/telephony/msim/MSimProxyManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimProxyManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 122
    const-string v0, "PROXY"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method


# virtual methods
.method public checkAndUpdatePhoneObject(Lcom/android/internal/telephony/msim/Subscription;)V
    .locals 3
    .parameter "userSub"

    .prologue
    .line 107
    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 108
    .local v0, subId:I
    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    const-string v1, "gets New GSM phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    const-string v1, "gets New CDMA phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    goto :goto_0
.end method

.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .parameter "sub"
    .parameter "dataCleanedUpMsg"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 100
    return-void
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .parameter "sub"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->setInternalDataEnabled(Z)V

    .line 95
    return-void
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "sub"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 104
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->updateDataConnectionTracker()V

    .line 91
    return-void
.end method
