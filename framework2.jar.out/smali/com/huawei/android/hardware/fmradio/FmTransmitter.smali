.class public Lcom/huawei/android/hardware/fmradio/FmTransmitter;
.super Lcom/huawei/android/hardware/fmradio/FmTransceiver;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;
    }
.end annotation


# static fields
.field public static final FM_TX_LOW_POWER_MODE:I = 0x1

.field public static final FM_TX_MAX_PS_LEN:I = 0x61

.field public static final FM_TX_MAX_RT_LEN:I = 0x41

.field public static final FM_TX_NORMAL_POWER_MODE:I = 0x0

.field public static final FM_TX_PWR_LEVEL_0:I = 0x0

.field public static final FM_TX_PWR_LEVEL_1:I = 0x1

.field public static final FM_TX_PWR_LEVEL_2:I = 0x2

.field public static final FM_TX_PWR_LEVEL_3:I = 0x3

.field public static final FM_TX_PWR_LEVEL_4:I = 0x4

.field public static final FM_TX_PWR_LEVEL_5:I = 0x5

.field public static final FM_TX_PWR_LEVEL_6:I = 0x6

.field public static final FM_TX_PWR_LEVEL_7:I = 0x7

.field private static final MAX_PS_CHARS:I = 0x61

.field private static final MAX_PS_REP_COUNT:I = 0xf

.field private static final MAX_RDS_GROUP_BUF_SIZE:I = 0x3e

.field public static final RDS_GRPS_TX_PAUSE:I = 0x0

.field public static final RDS_GRPS_TX_RESUME:I = 0x1

.field public static final RDS_GRPS_TX_STOP:I = 0x2

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mPSStarted:Z

.field private mRTStarted:Z

.field private mTxCallbacks:Lcom/huawei/android/hardware/fmradio/FmTransmitterCallbacksAdaptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/huawei/android/hardware/fmradio/FmTransmitterCallbacksAdaptor;)V
    .locals 2
    .parameter "path"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;-><init>()V

    .line 40
    const-string v0, "FmTransmitter"

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->TAG:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 76
    iput-boolean v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 110
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;

    invoke-direct {v0}, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mTxEvents:Lcom/huawei/android/hardware/fmradio/FmTxEventListner;

    .line 111
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Lcom/huawei/android/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    .line 112
    iput-object p2, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mTxCallbacks:Lcom/huawei/android/hardware/fmradio/FmTransmitterCallbacksAdaptor;

    .line 113
    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 3

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 217
    .local v0, status:Z
    iget-boolean v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->stopPSInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v1, "FmTransmitter"

    const-string v2, "FmTrasmitter:stopPSInfo failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->stopRTInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v1, "FmTransmitter"

    const-string v2, "FmTrasmitter:stopRTInfo failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->transmitRdsGroupControl(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    const-string v1, "FmTransmitter"

    const-string v2, "FmTrasmitter:transmitRdsGroupControl failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->unregisterTransmitClient()Z

    .line 232
    invoke-super {p0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v0

    .line 234
    return v0
.end method

.method public enable(Lcom/huawei/android/hardware/fmradio/FmConfig;)Z
    .locals 3
    .parameter "configSettings"

    .prologue
    .line 155
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->enable(Lcom/huawei/android/hardware/fmradio/FmConfig;I)Z

    move-result v0

    .line 158
    .local v0, status:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mTxCallbacks:Lcom/huawei/android/hardware/fmradio/FmTransmitterCallbacksAdaptor;

    invoke-virtual {p0, v1}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->registerTransmitClient(Lcom/huawei/android/hardware/fmradio/FmTransmitterCallbacks;)Z

    .line 160
    new-instance v1, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    .line 163
    :cond_0
    return v0
.end method

.method public getPSFeatures()Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;

    invoke-direct {v0, p0}, Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;-><init>(Lcom/huawei/android/hardware/fmradio/FmTransmitter;)V

    .line 356
    .local v0, psFeatures:Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;
    const/16 v1, 0x61

    iput v1, v0, Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSCharacters:I

    .line 357
    const/16 v1, 0xf

    iput v1, v0, Lcom/huawei/android/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSStringRepeatCount:I

    .line 358
    return-object v0
.end method

.method public getRdsGroupBufSize()I
    .locals 1

    .prologue
    .line 641
    const/16 v0, 0x3e

    return v0
.end method

.method public setPowerMode(I)Z
    .locals 5
    .parameter "powerMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 304
    if-ne p1, v1, :cond_0

    .line 305
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v4, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {v3, v4, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 311
    .local v0, re:I
    :goto_0
    if-nez v0, :cond_1

    .line 313
    :goto_1
    return v1

    .line 308
    .end local v0           #re:I
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v4, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {v3, v4, v2}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1
.end method

.method public setRdsOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v2, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v2, v1}, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 187
    .local v0, re:I
    if-nez v0, :cond_0

    .line 190
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStation(I)Z
    .locals 4
    .parameter "frequencyKHz"

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, status:Z
    iget-boolean v2, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter:setStation mPSStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->stopPSInfo()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 273
    .end local v0           #status:Z
    .local v1, status:I
    :goto_0
    return v1

    .line 264
    .end local v1           #status:I
    .restart local v0       #status:Z
    :cond_0
    iget-boolean v2, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    if-eqz v2, :cond_1

    .line 265
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter:setStation mRTStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->stopRTInfo()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #status:I
    goto :goto_0

    .line 268
    .end local v1           #status:I
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->transmitRdsGroupControl(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .restart local v1       #status:I
    goto :goto_0

    .line 270
    .end local v1           #status:I
    :cond_2
    const-string v2, "FmTransmitter"

    const-string v3, "FmTrasmitter:SetStation\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-super {p0, p1}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v0

    move v1, v0

    .line 273
    .restart local v1       #status:I
    goto :goto_0
.end method

.method public setTxPowerLevel(I)Z
    .locals 4
    .parameter "powLevel"

    .prologue
    .line 832
    const/4 v0, 0x1

    .line 833
    .local v0, bStatus:Z
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v2, p1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setTxPowerLevelNative(II)I

    move-result v1

    .line 834
    .local v1, err:I
    if-gez v1, :cond_0

    .line 835
    const-string v2, "FmTransmitter"

    const-string v3, "setTxPowerLevel is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v0, 0x0

    .line 838
    .end local v0           #bStatus:Z
    :cond_0
    return v0
.end method

.method public startPSInfo(Ljava/lang/String;III)Z
    .locals 6
    .parameter "psStr"
    .parameter "pty"
    .parameter "pi"
    .parameter "repeatCount"

    .prologue
    const/16 v4, 0x61

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 423
    if-ltz p2, :cond_0

    const/16 v3, 0x1f

    if-le p2, v3, :cond_1

    .line 424
    :cond_0
    const-string v2, "FmTransmitter"

    const-string v3, "pTy is expected from 0 to 31"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return v1

    .line 428
    :cond_1
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setPTYNative(II)I

    move-result v0

    .line 429
    .local v0, err:I
    if-gez v0, :cond_2

    .line 430
    const-string v2, "FmTransmitter"

    const-string v3, "setPTYNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_2
    if-ltz p3, :cond_3

    const v3, 0xffff

    if-le p3, v3, :cond_4

    .line 435
    :cond_3
    const-string v2, "FmTransmitter"

    const-string v3, "pi is expected from 0 to 65535"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 440
    :cond_4
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p3}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setPINative(II)I

    move-result v0

    .line 441
    if-gez v0, :cond_5

    .line 442
    const-string v2, "FmTransmitter"

    const-string v3, "setPINative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_5
    if-ltz p4, :cond_6

    const/16 v3, 0xf

    if-le p4, v3, :cond_7

    .line 447
    :cond_6
    const-string v2, "FmTransmitter"

    const-string v3, "repeat count is expected from 0 to 15"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    :cond_7
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setPSRepeatCountNative(II)I

    move-result v0

    .line 452
    if-gez v0, :cond_8

    .line 453
    const-string v2, "FmTransmitter"

    const-string v3, "setPSRepeatCountNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_9

    .line 460
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 464
    :cond_9
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->startPSNative(ILjava/lang/String;I)I

    move-result v0

    .line 465
    const-string v3, "FmTransmitter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return for startPS is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    if-gez v0, :cond_a

    .line 468
    const-string v2, "FmTransmitter"

    const-string v3, "FmReceiverJNI.startPSNative returned false\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 472
    :cond_a
    const-string v1, "FmTransmitter"

    const-string v3, "startPSNative is successful"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iput-boolean v2, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    move v1, v2

    .line 474
    goto/16 :goto_0
.end method

.method public startRTInfo(Ljava/lang/String;II)Z
    .locals 5
    .parameter "rtStr"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const/16 v4, 0x41

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 555
    if-ltz p2, :cond_0

    const/16 v3, 0x1f

    if-le p2, v3, :cond_1

    .line 556
    :cond_0
    const-string v2, "FmTransmitter"

    const-string v3, "pTy is expected from 0 to 31"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :goto_0
    return v1

    .line 560
    :cond_1
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setPTYNative(II)I

    move-result v0

    .line 561
    .local v0, err:I
    if-gez v0, :cond_2

    .line 562
    const-string v2, "FmTransmitter"

    const-string v3, "setPTYNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_2
    if-ltz p3, :cond_3

    const v3, 0xffff

    if-le p3, v3, :cond_4

    .line 567
    :cond_3
    const-string v2, "FmTransmitter"

    const-string v3, "pi is expected from 0 to 65535"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_4
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p3}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setPINative(II)I

    move-result v0

    .line 572
    if-gez v0, :cond_5

    .line 573
    const-string v2, "FmTransmitter"

    const-string v3, "setPINative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_6

    .line 581
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 584
    :cond_6
    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->startRTNative(ILjava/lang/String;I)I

    move-result v0

    .line 586
    if-gez v0, :cond_7

    .line 587
    const-string v2, "FmTransmitter"

    const-string v3, "FmReceiverJNI.startRTNative returned false\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 590
    :cond_7
    const-string v1, "FmTransmitter"

    const-string v3, "mRTStarted is true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput-boolean v2, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    move v1, v2

    .line 592
    goto :goto_0
.end method

.method public stopPSInfo()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, err:I
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->stopPSNative(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 499
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return for startPS is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_0
    return v1

    .line 502
    :cond_0
    const-string v2, "FmTransmitter"

    const-string v3, "stopPSNative is successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iput-boolean v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 504
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stopRTInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 615
    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->stopRTNative(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 616
    const-string v1, "FmTransmitter"

    const-string v2, "stopRTNative is failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return v0

    .line 619
    :cond_0
    const-string v1, "FmTransmitter"

    const-string v2, "mRTStarted is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iput-boolean v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 621
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transmitRdsContGroups([BJ)I
    .locals 1
    .parameter "rdsGroups"
    .parameter "numGroupsToTransmit"

    .prologue
    .line 770
    const/4 v0, -0x1

    return v0
.end method

.method public transmitRdsGroupControl(I)Z
    .locals 2
    .parameter "ctrlCmd"

    .prologue
    .line 798
    const/4 v0, 0x1

    .line 802
    .local v0, bStatus:Z
    const/4 v1, 0x0

    .line 803
    .local v1, val:I
    packed-switch p1, :pswitch_data_0

    .line 809
    const/4 v0, 0x0

    .line 811
    :pswitch_0
    return v0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public transmitRdsGroups([BJ)I
    .locals 1
    .parameter "rdsGroups"
    .parameter "numGroupsToTransmit"

    .prologue
    .line 710
    const/4 v0, -0x1

    return v0
.end method
