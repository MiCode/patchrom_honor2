.class public Lcom/huawei/telephony/HuaweiPhoneService;
.super Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.source "HuaweiPhoneService.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;,
        Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;
    }
.end annotation


# static fields
.field private static final CMD_HANDLE_DEMO:I = 0x1

.field private static final DBG:Z = false

.field private static final EVENT_OEM_RIL_MESSAGE_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HuaweiPhoneService"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"


# instance fields
.field private mATResponse:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

.field private mPhone:Lcom/huawei/telephony/HuaweiPhone;

.field private mPhones:[Lcom/huawei/telephony/HuaweiPhone;

.field private mbATReady:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    iput-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HuaweiPhoneTempService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMessageThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;-><init>(Lcom/huawei/telephony/HuaweiPhoneService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    const-string v0, "huaweiphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$002(Lcom/huawei/telephony/HuaweiPhoneService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mATResponse:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/telephony/HuaweiPhoneService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/telephony/HuaweiPhoneService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    return p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "HuaweiPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .local v1, request:Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v2, p1, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "ATCommand"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v7

    .local v5, response:[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    aput-object p1, v0, v7

    .local v0, ATCommands:[Ljava/lang/String;
    iput-boolean v7, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .local v4, myLooper:Landroid/os/Looper;
    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    iget-object v7, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v6, v0, v3}, Lcom/huawei/telephony/HuaweiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    iget-boolean v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    :try_start_2
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "interrupted while trying to send command from ATDirectChannel"

    invoke-direct {p0, v6}, Lcom/huawei/telephony/HuaweiPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v4           #myLooper:Landroid/os/Looper;
    :catch_1
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "HuaweiPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATDirectChannel Exception ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #ex:Ljava/lang/Exception;
    :goto_1
    return-object v5

    .restart local v3       #msg:Landroid/os/Message;
    .restart local v4       #myLooper:Landroid/os/Looper;
    :cond_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v5, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mATResponse:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method public clearUserPrefWhenChangeMode(I)V
    .locals 4
    .parameter "nMode"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->clearUserPrefWhenChangeMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubActive Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCardType(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccManager;->getCardType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardType Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSDARadioState(I)Z
    .locals 4
    .parameter "subId"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .local v0, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    return v1
.end method

.method public getDemoString(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;->getDemoString(Ljava/lang/Object;)V

    return-void
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    invoke-virtual {p0, p1}, Lcom/huawei/telephony/HuaweiPhoneService;->getDemoString(Ljava/lang/Object;)V

    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSignalStrength()Landroid/os/Bundle;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 2
    .parameter "subId"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->getSlotIdFromSubId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->getSubidFromSlotId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isCTNationRoamingEnable()Z
    .locals 4

    .prologue
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->isCTNationRoamingEnable(Lcom/android/internal/telephony/IHuaweiMsim;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCTNationRoamingEnable Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCardPresent(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->isCardPresent(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isSubActive(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->isSubActive(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubActive Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHuaweiMsim(Lcom/android/internal/telephony/IHuaweiMsim;)V
    .locals 0
    .parameter "msim"

    .prologue
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 1
    .parameter "phone"
    .parameter "context"

    .prologue
    new-instance v0, Lcom/huawei/telephony/HuaweiPhone;

    invoke-direct {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setPhone([Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 5
    .parameter "phones"
    .parameter "context"

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .local v1, numPhones:I
    new-array v2, v1, [Lcom/huawei/telephony/HuaweiPhone;

    iput-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    const-string v2, "HuaweiPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating huaweiphone sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    new-instance v3, Lcom/huawei/telephony/HuaweiPhone;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/huawei/telephony/HuaweiPhone;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    return-void
.end method
