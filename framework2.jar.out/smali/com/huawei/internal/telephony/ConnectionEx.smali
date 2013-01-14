.class public Lcom/huawei/internal/telephony/ConnectionEx;
.super Ljava/lang/Object;
.source "ConnectionEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccCardExState(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;
    .locals 2
    .parameter "cause"

    .prologue
    const-string v0, "NOT_DISCONNECTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NOT_DISCONNECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "INCOMING_MISSED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_MISSED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_1
    const-string v0, "NORMAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_2
    const-string v0, "LOCAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOCAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_3
    const-string v0, "BUSY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->BUSY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_4
    const-string v0, "CONGESTION"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CONGESTION:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_5
    const-string v0, "MMI"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->MMI:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_6
    const-string v0, "INVALID_NUMBER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_7
    const-string v0, "NUMBER_UNREACHABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    :cond_8
    const-string v0, "SERVER_UNREACHABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_9
    const-string v0, "INVALID_CREDENTIALS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_CREDENTIALS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_a
    const-string v0, "OUT_OF_NETWORK"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_NETWORK:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_b
    const-string v0, "SERVER_ERROR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_c
    const-string v0, "TIMED_OUT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->TIMED_OUT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_d
    const-string v0, "LOST_SIGNAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOST_SIGNAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_e
    const-string v0, "LIMIT_EXCEEDED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LIMIT_EXCEEDED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_f
    const-string v0, "INCOMING_REJECTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_REJECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_10
    const-string v0, "POWER_OFF"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->POWER_OFF:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_11
    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_SERVICE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_12
    const-string v0, "ICC_ERROR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ICC_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_13
    const-string v0, "CALL_BARRED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CALL_BARRED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_14
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->FDN_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_15
    const-string v0, "CS_RESTRICTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_16
    const-string v0, "CS_RESTRICTED_NORMAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_17
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_18
    const-string v0, "UNOBTAINABLE_NUMBER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_19
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_1b
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_1c
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_1d
    const-string v0, "CDMA_DROP"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_DROP:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_1e
    const-string v0, "CDMA_INTERCEPT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_INTERCEPT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_1f
    const-string v0, "CDMA_REORDER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_REORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_20
    const-string v0, "CDMA_SO_REJECT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_SO_REJECT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_21
    const-string v0, "CDMA_RETRY_ORDER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_22
    const-string v0, "CDMA_ACCESS_FAILURE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_23
    const-string v0, "CDMA_PREEMPTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_PREEMPTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_24
    const-string v0, "CDMA_NOT_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_25
    const-string v0, "CDMA_ACCESS_BLOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_26
    const-string v0, "ERROR_UNSPECIFIED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    :cond_27
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0
.end method
