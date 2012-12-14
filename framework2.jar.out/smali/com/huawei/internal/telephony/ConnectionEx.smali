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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getIccCardExState(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;
    .locals 2
    .parameter "cause"

    .prologue
    .line 72
    const-string v0, "NOT_DISCONNECTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NOT_DISCONNECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 153
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v0, "INCOMING_MISSED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_MISSED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 76
    :cond_1
    const-string v0, "NORMAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "LOCAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOCAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 80
    :cond_3
    const-string v0, "BUSY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->BUSY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 82
    :cond_4
    const-string v0, "CONGESTION"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CONGESTION:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 84
    :cond_5
    const-string v0, "MMI"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 85
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->MMI:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 86
    :cond_6
    const-string v0, "INVALID_NUMBER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 87
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 88
    :cond_7
    const-string v0, "NUMBER_UNREACHABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 89
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto :goto_0

    .line 90
    :cond_8
    const-string v0, "SERVER_UNREACHABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 92
    :cond_9
    const-string v0, "INVALID_CREDENTIALS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_CREDENTIALS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 94
    :cond_a
    const-string v0, "OUT_OF_NETWORK"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_NETWORK:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 96
    :cond_b
    const-string v0, "SERVER_ERROR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 97
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 98
    :cond_c
    const-string v0, "TIMED_OUT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 99
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->TIMED_OUT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 100
    :cond_d
    const-string v0, "LOST_SIGNAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 101
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOST_SIGNAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 102
    :cond_e
    const-string v0, "LIMIT_EXCEEDED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LIMIT_EXCEEDED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 104
    :cond_f
    const-string v0, "INCOMING_REJECTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 105
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_REJECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 106
    :cond_10
    const-string v0, "POWER_OFF"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 107
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->POWER_OFF:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 108
    :cond_11
    const-string v0, "OUT_OF_SERVICE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 109
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_SERVICE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 110
    :cond_12
    const-string v0, "ICC_ERROR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ICC_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 112
    :cond_13
    const-string v0, "CALL_BARRED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CALL_BARRED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 114
    :cond_14
    const-string v0, "FDN_BLOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->FDN_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 116
    :cond_15
    const-string v0, "CS_RESTRICTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 117
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 118
    :cond_16
    const-string v0, "CS_RESTRICTED_NORMAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 119
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 120
    :cond_17
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 121
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 122
    :cond_18
    const-string v0, "UNOBTAINABLE_NUMBER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 123
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 124
    :cond_19
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 125
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 126
    :cond_1a
    const-string v0, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 128
    :cond_1b
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 129
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 130
    :cond_1c
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 131
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 132
    :cond_1d
    const-string v0, "CDMA_DROP"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 133
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_DROP:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 134
    :cond_1e
    const-string v0, "CDMA_INTERCEPT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 135
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_INTERCEPT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 136
    :cond_1f
    const-string v0, "CDMA_REORDER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 137
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_REORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 138
    :cond_20
    const-string v0, "CDMA_SO_REJECT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 139
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_SO_REJECT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 140
    :cond_21
    const-string v0, "CDMA_RETRY_ORDER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 141
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 142
    :cond_22
    const-string v0, "CDMA_ACCESS_FAILURE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 143
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 144
    :cond_23
    const-string v0, "CDMA_PREEMPTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 145
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_PREEMPTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 146
    :cond_24
    const-string v0, "CDMA_NOT_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 147
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 148
    :cond_25
    const-string v0, "CDMA_ACCESS_BLOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 149
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 150
    :cond_26
    const-string v0, "ERROR_UNSPECIFIED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection$DisconnectCause;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 151
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0

    .line 153
    :cond_27
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    goto/16 :goto_0
.end method
