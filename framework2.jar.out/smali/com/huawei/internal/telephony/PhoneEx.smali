.class public Lcom/huawei/internal/telephony/PhoneEx;
.super Ljava/lang/Object;
.source "PhoneEx.java"


# static fields
.field public static final FEATURE_ENABLE_MMS_SUB1:Ljava/lang/String; = "enableMMS_sub1"

.field public static final FEATURE_ENABLE_MMS_SUB2:Ljava/lang/String; = "enableMMS_sub2"

.field public static final NT_MODE_LTE_CDMA_AND_EVDO:I = 0x8

.field public static final NT_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NT_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NT_MODE_LTE_WCDMA:I = 0xc

.field public static final PHONE_TYPE_RIL_IMS:I = 0x4

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disableQos(Lcom/android/internal/telephony/Phone;I)I
    .locals 1
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 79
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->disableQos(I)I

    move-result v0

    return v0
.end method

.method public static final enableQos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 1
    .parameter "obj"
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 67
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getQosStatus(Lcom/android/internal/telephony/Phone;I)I
    .locals 1
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 128
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->getQosStatus(I)I

    move-result v0

    return v0
.end method

.method public static final getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 137
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    return v0
.end method

.method public static invokeSimlessHW(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 231
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->invokeSimlessHW()V

    .line 232
    return-void
.end method

.method public static final isManualNetSelAllowed(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 147
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->isManualNetSelAllowed()Z

    move-result v0

    return v0
.end method

.method public static final modifyQos(Lcom/android/internal/telephony/Phone;ILcom/android/internal/telephony/QosSpec;)I
    .locals 1
    .parameter "obj"
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 92
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v0

    return v0
.end method

.method public static registerForSimRecordsLoaded(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "phoneObj"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 210
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    return-void
.end method

.method public static final resumeQos(Lcom/android/internal/telephony/Phone;I)I
    .locals 1
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 116
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->resumeQos(I)I

    move-result v0

    return v0
.end method

.method public static final setDataReadinessChecks(Lcom/android/internal/telephony/Phone;ZZZ)V
    .locals 0
    .parameter "obj"
    .parameter "checkConnectivity"
    .parameter "checkSubscription"
    .parameter "tryDataCalls"

    .prologue
    .line 161
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setDataReadinessChecks(ZZZ)V

    .line 162
    return-void
.end method

.method public static setModemPower(Lcom/android/internal/telephony/Phone;Z)V
    .locals 0
    .parameter "obj"
    .parameter "on"

    .prologue
    .line 227
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->setModemPower(Z)V

    .line 228
    return-void
.end method

.method public static final setOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    .line 174
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 175
    return-void
.end method

.method public static final setTransmitPower(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
    .locals 2
    .parameter "obj"
    .parameter "powerLevel"
    .parameter "onCompleted"

    .prologue
    .line 187
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final suspendQos(Lcom/android/internal/telephony/Phone;I)I
    .locals 1
    .parameter "obj"
    .parameter "qosId"

    .prologue
    .line 104
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->suspendQos(I)I

    move-result v0

    return v0
.end method

.method public static final unSetOnUnsolOemHookExtApp(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 0
    .parameter "obj"
    .parameter "h"

    .prologue
    .line 198
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V

    .line 199
    return-void
.end method

.method public static unregisterForSimRecordsLoaded(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 0
    .parameter "obj"
    .parameter "h"

    .prologue
    .line 220
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 222
    return-void
.end method
