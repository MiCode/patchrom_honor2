.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$Injector;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApnType(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;II)Ljava/lang/String;
    .locals 2
    .parameter "tracker"
    .parameter "enabled"
    .parameter "apnId"

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->callApnIdToType(I)Ljava/lang/String;

    move-result-object v0

    .local v0, requestedApnType:Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0           #requestedApnType:Ljava/lang/String;
    :cond_0
    const-string v0, "default"

    .restart local v0       #requestedApnType:Ljava/lang/String;
    goto :goto_0
.end method

.method static isDataAllowed(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/ApnContext;)Z
    .locals 2
    .parameter "tracker"
    .parameter "apnContext"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getInternalDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getUserDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPolicyDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "mms"

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->callIsMmsDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->callIsDataAllowed()Z

    move-result v0

    goto :goto_0
.end method

.method static onDataSetupComplete(Lcom/android/internal/telephony/ApnContext;)V
    .locals 6
    .parameter "apnContext"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lmiui/net/FirewallManager;->onDataConnected(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static onDisconnectDone(Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v0
    
    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/net/FirewallManager;->getInstance()Lmiui/net/FirewallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/DataProfile;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnSetting;

    invoke-static {v2}, Lmiui/net/FirewallManager;->encodeApnSetting(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/net/FirewallManager;->onDataDisconnected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
