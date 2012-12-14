.class public Lcom/huawei/android/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_EU_BAND:I = 0x1

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field public static final FM_JAPAN_WIDE_BAND:I = 0x2

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x4

.field public static final FM_US_BAND:I = 0x0

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012

.field protected static sFd:I


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TAG:Ljava/lang/String;

.field private final TUNE_EVENT:I

.field private final V4L2_DEVICE:Ljava/lang/String;

.field protected mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

.field protected mTxEvents:Lcom/huawei/android/hardware/fmradio/FmTxEventListner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->READY_EVENT:I

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->TUNE_EVENT:I

    .line 102
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->RDS_EVENT:I

    .line 103
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->MUTE_EVENT:I

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    .line 109
    const-string v0, "FmTransceiver"

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->TAG:Ljava/lang/String;

    .line 110
    const-string v0, "/dev/radio0"

    iput-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->V4L2_DEVICE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 140
    const/4 v0, 0x1

    .line 142
    .local v0, bStatus:Z
    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    if-gtz v1, :cond_1

    .line 144
    const-string v1, "/dev/radio0"

    invoke-static {v1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    .line 146
    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    if-lez v1, :cond_0

    .line 147
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    .line 151
    :cond_0
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to Open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already Opened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configure(Lcom/huawei/android/hardware/fmradio/FmConfig;)Z
    .locals 4
    .parameter "configSettings"

    .prologue
    .line 433
    const/4 v1, 0x1

    .line 434
    .local v1, status:Z
    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 435
    .local v0, lowerFreq:I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->fmConfigure(ILcom/huawei/android/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 437
    invoke-virtual {p0, v0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 438
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 409
    const-string v0, "/dev/radio0"

    invoke-virtual {p0, v0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Lcom/huawei/android/hardware/fmradio/FmConfig;I)Z
    .locals 3
    .parameter "configSettings"
    .parameter "device"

    .prologue
    .line 375
    const-string v0, "/dev/radio0"

    invoke-virtual {p0, v0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->acquire(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    .line 378
    :cond_0
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turning on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 381
    const-string v0, "FmTransceiver"

    const-string v1, "Calling fmConfigure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0, p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->fmConfigure(ILcom/huawei/android/hardware/fmradio/FmConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInternalAntenna()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 499
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 501
    .local v0, re:I
    if-ne v0, v1, :cond_0

    .line 504
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerClient(Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->startListner(ILcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)V

    .line 244
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    .line 247
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerTransmitClient(Lcom/huawei/android/hardware/fmradio/FmTransmitterCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mTxEvents:Lcom/huawei/android/hardware/fmradio/FmTxEventListner;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->startListner(ILcom/huawei/android/hardware/fmradio/FmTransmitterCallbacks;)V

    .line 311
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    .line 314
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected release(Ljava/lang/String;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 196
    sget v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    if-eqz v0, :cond_0

    .line 198
    sget v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 199
    const/4 v0, 0x0

    sput v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    .line 200
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turned off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    const-string v0, "FmTransceiver"

    const-string v1, "Error turning off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInternalAntenna(Z)Z
    .locals 4
    .parameter "intAnt"

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 527
    const/4 v0, 0x1

    .line 532
    .local v0, iAntenna:I
    :goto_0
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3, v0}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 534
    .local v1, re:I
    if-nez v1, :cond_1

    .line 535
    const/4 v2, 0x1

    .line 537
    :goto_1
    return v2

    .line 529
    .end local v0           #iAntenna:I
    .end local v1           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #iAntenna:I
    goto :goto_0

    .line 537
    .restart local v1       #re:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNotchFilter(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 481
    invoke-static {p1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setNotchFilterNative(Z)V

    .line 482
    return-void
.end method

.method public setStation(I)Z
    .locals 2
    .parameter "frequencyKHz"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    invoke-virtual {v0, p1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 463
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setStation(I)V

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    invoke-virtual {v0}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->stopListener()V

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterTransmitClient()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mTxEvents:Lcom/huawei/android/hardware/fmradio/FmTxEventListner;

    invoke-virtual {v0}, Lcom/huawei/android/hardware/fmradio/FmTxEventListner;->stopListener()V

    .line 337
    const/4 v0, 0x1

    return v0
.end method
