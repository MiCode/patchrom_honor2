.class public Lcom/huawei/internal/telephony/CommandExceptionEx;
.super Ljava/lang/Object;
.source "CommandExceptionEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/internal/telephony/CommandExceptionEx$Error;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandError(Lcom/android/internal/telephony/CommandException;)Lcom/huawei/internal/telephony/CommandExceptionEx$Error;
    .locals 3
    .parameter "ce"

    .prologue
    const-string v0, "INVALID_RESPONSE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_RESPONSE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RADIO_NOT_AVAILABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->RADIO_NOT_AVAILABLE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto :goto_0

    :cond_1
    const-string v0, "GENERIC_FAILURE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->GENERIC_FAILURE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto :goto_0

    :cond_2
    const-string v0, "PASSWORD_INCORRECT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->PASSWORD_INCORRECT:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto :goto_0

    :cond_3
    const-string v0, "SIM_PIN2"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SIM_PIN2:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto :goto_0

    :cond_4
    const-string v0, "SIM_PUK2"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SIM_PUK2:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto :goto_0

    :cond_5
    const-string v0, "REQUEST_NOT_SUPPORTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->REQUEST_NOT_SUPPORTED:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto :goto_0

    :cond_6
    const-string v0, "OP_NOT_ALLOWED_DURING_VOICE_CALL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_7
    const-string v0, "OP_NOT_ALLOWED_BEFORE_REG_NW"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_8
    const-string v0, "SMS_FAIL_RETRY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SMS_FAIL_RETRY:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_9
    const-string v0, "SIM_ABSENT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SIM_ABSENT:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_a
    const-string v0, "SUBSCRIPTION_NOT_AVAILABLE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_b
    const-string v0, "MODE_NOT_SUPPORTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->MODE_NOT_SUPPORTED:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_c
    const-string v0, "FDN_CHECK_FAILURE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->FDN_CHECK_FAILURE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_d
    const-string v0, "ILLEGAL_SIM_OR_ME"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->ILLEGAL_SIM_OR_ME:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_e
    const-string v0, "MISSING_RESOURCE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->MISSING_RESOURCE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_f
    const-string v0, "NO_SUCH_ELEMENT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->NO_SUCH_ELEMENT:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_10
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->DIAL_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_11
    const-string v0, "DIAL_MODIFIED_TO_SS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->DIAL_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_12
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_13
    const-string v0, "USSD_MODIFIED_TO_DIAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->USSD_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_14
    const-string v0, "USSD_MODIFIED_TO_SS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->USSD_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_15
    const-string v0, "USSD_MODIFIED_TO_USSD"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->USSD_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_16
    const-string v0, "SS_MODIFIED_TO_DIAL"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SS_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_17
    const-string v0, "SS_MODIFIED_TO_USSD"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SS_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_18
    const-string v0, "SS_MODIFIED_TO_SS"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SS_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_19
    const-string v0, "INVALID_PARAMETER"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_PARAMETER:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "SUBSCRIPTION_NOT_SUPPORTED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0

    :cond_1b
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/huawei/internal/telephony/CommandExceptionEx$Error;->INVALID_RESPONSE:Lcom/huawei/internal/telephony/CommandExceptionEx$Error;

    goto/16 :goto_0
.end method
