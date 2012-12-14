.class public Landroid/hardware/fmradio/FmTransmitter;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
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

.field private mTxCallbacks:Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;)V
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

    .line 107
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 39
    const-string v0, "FmTransmitter"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 75
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 109
    new-instance v0, Landroid/hardware/fmradio/FmTxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmTxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mTxEvents:Landroid/hardware/fmradio/FmTxEventListner;

    .line 110
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 111
    iput-object p2, p0, Landroid/hardware/fmradio/FmTransmitter;->mTxCallbacks:Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;

    .line 112
    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 216
    .local v0, status:Z
    iget-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopPSInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const-string v1, "FmTransmitter"

    const-string v2, "FmTrasmitter:stopPSInfo failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    iget-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopRTInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    const-string v1, "FmTransmitter"

    const-string v2, "FmTrasmitter:stopRTInfo failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/hardware/fmradio/FmTransmitter;->transmitRdsGroupControl(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 227
    const-string v1, "FmTransmitter"

    const-string v2, "FmTrasmitter:transmitRdsGroupControl failed\n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->unregisterTransmitClient()Z

    .line 231
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v0

    .line 233
    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 3
    .parameter "configSettings"

    .prologue
    .line 154
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v0

    .line 157
    .local v0, status:Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mTxCallbacks:Landroid/hardware/fmradio/FmTransmitterCallbacksAdaptor;

    invoke-virtual {p0, v1}, Landroid/hardware/fmradio/FmTransmitter;->registerTransmitClient(Landroid/hardware/fmradio/FmTransmitterCallbacks;)Z

    .line 159
    new-instance v1, Landroid/hardware/fmradio/FmRxRdsData;

    sget v2, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v1, v2}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 162
    :cond_0
    return v0
.end method

.method public getPSFeatures()Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    .locals 2

    .prologue
    .line 353
    new-instance v0, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;

    invoke-direct {v0, p0}, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;-><init>(Landroid/hardware/fmradio/FmTransmitter;)V

    .line 355
    .local v0, psFeatures:Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    const/16 v1, 0x61

    iput v1, v0, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSCharacters:I

    .line 356
    const/16 v1, 0xf

    iput v1, v0, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSStringRepeatCount:I

    .line 357
    return-object v0
.end method

.method public getRdsGroupBufSize()I
    .locals 1

    .prologue
    .line 640
    const/16 v0, 0x3e

    return v0
.end method

.method public setPowerMode(I)Z
    .locals 5
    .parameter "powerMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 303
    if-ne p1, v1, :cond_0

    .line 304
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransmitter;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {v3, v4, v1}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .line 310
    .local v0, re:I
    :goto_0
    if-nez v0, :cond_1

    .line 312
    :goto_1
    return v1

    .line 307
    .end local v0           #re:I
    :cond_0
    iget-object v3, p0, Landroid/hardware/fmradio/FmTransmitter;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v4, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/fmradio/FmRxControls;->setLowPwrMode(IZ)I

    move-result v0

    .restart local v0       #re:I
    goto :goto_0

    :cond_1
    move v1, v2

    .line 312
    goto :goto_1
.end method

.method public setRdsOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v2, v1}, Landroid/hardware/fmradio/FmRxRdsData;->rdsOn(Z)I

    move-result v0

    .line 186
    .local v0, re:I
    if-nez v0, :cond_0

    .line 189
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
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, status:Z
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    if-eqz v2, :cond_0

    .line 260
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter:setStation mPSStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopPSInfo()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 272
    .end local v0           #status:Z
    .local v1, status:I
    :goto_0
    return v1

    .line 263
    .end local v1           #status:I
    .restart local v0       #status:Z
    :cond_0
    iget-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter:setStation mRTStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->stopRTInfo()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .restart local v1       #status:I
    goto :goto_0

    .line 267
    .end local v1           #status:I
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/hardware/fmradio/FmTransmitter;->transmitRdsGroupControl(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    .restart local v1       #status:I
    goto :goto_0

    .line 269
    .end local v1           #status:I
    :cond_2
    const-string v2, "FmTransmitter"

    const-string v3, "FmTrasmitter:SetStation\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-super {p0, p1}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v0

    move v1, v0

    .line 272
    .restart local v1       #status:I
    goto :goto_0
.end method

.method public setTxPowerLevel(I)Z
    .locals 4
    .parameter "powLevel"

    .prologue
    .line 831
    const/4 v0, 0x1

    .line 832
    .local v0, bStatus:Z
    sget v2, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setTxPowerLevelNative(II)I

    move-result v1

    .line 833
    .local v1, err:I
    if-gez v1, :cond_0

    .line 834
    const-string v2, "FmTransmitter"

    const-string v3, "setTxPowerLevel is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x0

    .line 837
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

    .line 422
    if-ltz p2, :cond_0

    const/16 v3, 0x1f

    if-le p2, v3, :cond_1

    .line 423
    :cond_0
    const-string v2, "FmTransmitter"

    const-string v3, "pTy is expected from 0 to 31"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return v1

    .line 427
    :cond_1
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setPTYNative(II)I

    move-result v0

    .line 428
    .local v0, err:I
    if-gez v0, :cond_2

    .line 429
    const-string v2, "FmTransmitter"

    const-string v3, "setPTYNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_2
    if-ltz p3, :cond_3

    const v3, 0xffff

    if-le p3, v3, :cond_4

    .line 434
    :cond_3
    const-string v2, "FmTransmitter"

    const-string v3, "pi is expected from 0 to 65535"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 439
    :cond_4
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setPINative(II)I

    move-result v0

    .line 440
    if-gez v0, :cond_5

    .line 441
    const-string v2, "FmTransmitter"

    const-string v3, "setPINative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_5
    if-ltz p4, :cond_6

    const/16 v3, 0xf

    if-le p4, v3, :cond_7

    .line 446
    :cond_6
    const-string v2, "FmTransmitter"

    const-string v3, "repeat count is expected from 0 to 15"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_7
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->setPSRepeatCountNative(II)I

    move-result v0

    .line 451
    if-gez v0, :cond_8

    .line 452
    const-string v2, "FmTransmitter"

    const-string v3, "setPSRepeatCountNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_9

    .line 459
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 463
    :cond_9
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->startPSNative(ILjava/lang/String;I)I

    move-result v0

    .line 464
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

    .line 466
    if-gez v0, :cond_a

    .line 467
    const-string v2, "FmTransmitter"

    const-string v3, "FmReceiverJNI.startPSNative returned false\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    :cond_a
    const-string v1, "FmTransmitter"

    const-string v3, "startPSNative is successful"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    move v1, v2

    .line 473
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

    .line 554
    if-ltz p2, :cond_0

    const/16 v3, 0x1f

    if-le p2, v3, :cond_1

    .line 555
    :cond_0
    const-string v2, "FmTransmitter"

    const-string v3, "pTy is expected from 0 to 31"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return v1

    .line 559
    :cond_1
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setPTYNative(II)I

    move-result v0

    .line 560
    .local v0, err:I
    if-gez v0, :cond_2

    .line 561
    const-string v2, "FmTransmitter"

    const-string v3, "setPTYNative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :cond_2
    if-ltz p3, :cond_3

    const v3, 0xffff

    if-le p3, v3, :cond_4

    .line 566
    :cond_3
    const-string v2, "FmTransmitter"

    const-string v3, "pi is expected from 0 to 65535"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    :cond_4
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v3, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setPINative(II)I

    move-result v0

    .line 571
    if-gez v0, :cond_5

    .line 572
    const-string v2, "FmTransmitter"

    const-string v3, "setPINative is failure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_6

    .line 580
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 583
    :cond_6
    sget v3, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, p1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->startRTNative(ILjava/lang/String;I)I

    move-result v0

    .line 585
    if-gez v0, :cond_7

    .line 586
    const-string v2, "FmTransmitter"

    const-string v3, "FmReceiverJNI.startRTNative returned false\n"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 589
    :cond_7
    const-string v1, "FmTransmitter"

    const-string v3, "mRTStarted is true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iput-boolean v2, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    move v1, v2

    .line 591
    goto :goto_0
.end method

.method public stopPSInfo()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, err:I
    sget v2, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->stopPSNative(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 498
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

    .line 503
    :goto_0
    return v1

    .line 501
    :cond_0
    const-string v2, "FmTransmitter"

    const-string v3, "stopPSNative is successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput-boolean v1, p0, Landroid/hardware/fmradio/FmTransmitter;->mPSStarted:Z

    .line 503
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public stopRTInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 614
    sget v1, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->stopRTNative(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 615
    const-string v1, "FmTransmitter"

    const-string v2, "stopRTNative is failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    return v0

    .line 618
    :cond_0
    const-string v1, "FmTransmitter"

    const-string v2, "mRTStarted is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iput-boolean v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mRTStarted:Z

    .line 620
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transmitRdsContGroups([BJ)I
    .locals 1
    .parameter "rdsGroups"
    .parameter "numGroupsToTransmit"

    .prologue
    .line 769
    const/4 v0, -0x1

    return v0
.end method

.method public transmitRdsGroupControl(I)Z
    .locals 2
    .parameter "ctrlCmd"

    .prologue
    .line 797
    const/4 v0, 0x1

    .line 801
    .local v0, bStatus:Z
    const/4 v1, 0x0

    .line 802
    .local v1, val:I
    packed-switch p1, :pswitch_data_0

    .line 808
    const/4 v0, 0x0

    .line 810
    :pswitch_0
    return v0

    .line 802
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
    .line 709
    const/4 v0, -0x1

    return v0
.end method
