.class public Lcom/huawei/telephony/HuaweiTelephonyManager;
.super Ljava/lang/Object;
.source "HuaweiTelephonyManager.java"


# static fields
.field private static final CDMA_AND_HDR_ONLY:I = 0x13

.field public static final CT_NATIONAL_ROAMING_CARD:I = 0x29

.field public static final CU_DUAL_MODE_CARD:I = 0x2a

.field private static final DUAL_CARD_MODE_CDMA:I = 0x0

.field private static final DUAL_CARD_MODE_GSM:I = 0x1

.field public static final DUAL_MODE_CG_CARD:I = 0x28

.field public static final DUAL_MODE_UG_CARD:I = 0x32

.field private static final GSM_ONLY:I = 0xd

.field public static final SINGLE_MODE_RUIM_CARD:I = 0x1e

.field public static final SINGLE_MODE_SIM_CARD:I = 0xa

.field public static final SINGLE_MODE_USIM_CARD:I = 0x14

.field private static final TAG:Ljava/lang/String; = "HuaweiTelephonyManager"

.field public static final UNKNOWN_CARD:I = -0x1

.field private static isHwDSDAEnabled:Z

.field private static isMultiSimEnabled:Z

.field private static sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string/jumbo v0, "persist.dsds.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled:Z

    .line 52
    const-string/jumbo v0, "ro.config.hw_dsda"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isHwDSDAEnabled:Z

    .line 61
    new-instance v0, Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-direct {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;-><init>()V

    sput-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-object v0
.end method

.method private getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;
    .locals 1

    .prologue
    .line 70
    const-string v0, "huaweiphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "ATCommand"

    .prologue
    .line 173
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v1, v3

    .line 175
    .local v1, response:[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 184
    .end local v1           #response:[Ljava/lang/String;
    .local v2, response:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 179
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HuaweiTelephonyManager"

    const-string v4, "ATDirectChannel remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    move-object v2, v1

    .line 184
    .end local v1           #response:[Ljava/lang/String;
    .restart local v2       #response:[Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 182
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ATDirectChannel NullPointerException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getCardType(I)I
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, -0x1

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getCardType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCardType Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "HuaweiTelephonyManager"

    const-string v3, "getCardType getIHuaweiTelephony=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 242
    :goto_0
    return-object v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 241
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDSDARadioState(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    const/4 v1, 0x0

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getDSDARadioState(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 353
    :goto_0
    return v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDSDARadioState Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "HuaweiTelephonyManager"

    const-string v3, "getDSDARadioState getIHuaweiTelephony=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDemoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    return-object v0
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 80
    const-string v1, "HuaweiTelephonyManager"

    const-string v2, "getDemoStringAsync in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HuaweiTelephonyManager"

    const-string v2, "getDemoStringAsync remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDualCardMode()I
    .locals 7

    .prologue
    .line 326
    const/4 v1, -0x1

    .line 327
    .local v1, cardSwitchMode:S
    const/4 v0, -0x1

    .line 328
    .local v0, cardPrefMode:S
    const/4 v3, 0x0

    .line 331
    .local v3, setResult:Z
    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/huawei/telephony/HuaweiTelephonyManager;->isHwDSDAEnabled:Z

    if-eqz v4, :cond_0

    .line 333
    const-string/jumbo v4, "persist.radio.hw.ctmode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v1, v4

    .line 334
    const-string v4, "HuaweiTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDualCardMode  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 339
    .end local v1           #cardSwitchMode:S
    .local v2, cardSwitchMode:I
    :goto_0
    return v2

    .end local v2           #cardSwitchMode:I
    .restart local v1       #cardSwitchMode:S
    :cond_0
    move v2, v1

    .restart local v2       #cardSwitchMode:I
    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, esnStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 275
    goto :goto_0

    .line 272
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 274
    .local v1, ex:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 253
    .local v1, mString:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 263
    :cond_0
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 261
    goto :goto_0

    .line 258
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 260
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 220
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/telephony/IHuaweiTelephony;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 226
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 225
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 200
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/telephony/IHuaweiTelephony;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 206
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 205
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 206
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 5
    .parameter "subId"

    .prologue
    const/4 v1, -0x1

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getSlotIdFromSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSlotIdFromSubId RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSlotIdFromSubId NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, -0x1

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getSubidFromSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubidFromSlotId RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubidFromSlotId NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCTNationRoamingEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->isCTNationRoamingEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCTNationRoamingEnable Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "HuaweiTelephonyManager"

    const-string v3, "isCTNationRoamingEnable getIHuaweiTelephony=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCardPresent(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->isCardPresent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCardPresent RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCardPresent NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->isSubActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubActive RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 386
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubActive NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDualCardMode(I)Z
    .locals 6
    .parameter "nMode"

    .prologue
    const/4 v2, 0x1

    .line 297
    const/4 v0, -0x1

    .line 299
    .local v0, dualCardMode:S
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDualCardMode, nMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/huawei/telephony/HuaweiTelephonyManager;->isHwDSDAEnabled:Z

    if-eqz v3, :cond_1

    .line 302
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->clearUserPrefWhenChangeMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    const-string/jumbo v3, "persist.radio.hw.ctmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_1
    return v2

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearUserPrefWhenChangeMode Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    if-nez p1, :cond_2

    .line 315
    const/16 v0, 0x13

    goto :goto_1

    .line 316
    :cond_2
    if-ne v2, p1, :cond_3

    .line 317
    const/16 v0, 0xd

    goto :goto_1

    .line 319
    :cond_3
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v2, 0x0

    goto :goto_1
.end method
