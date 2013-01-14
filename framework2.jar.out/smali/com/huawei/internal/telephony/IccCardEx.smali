.class public Lcom/huawei/internal/telephony/IccCardEx;
.super Ljava/lang/Object;
.source "IccCardEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/internal/telephony/IccCardEx$State;
    }
.end annotation


# static fields
.field public static final INTENT_VALUE_ICC_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final INTENT_VALUE_ICC_REQUIRE_LOCK:Ljava/lang/String; = "REQUIRE_LOCKED"

.field public static final INTENT_VALUE_ICC_SIM_REFRESH:Ljava/lang/String; = "SIM_REFRESH"

.field public static final INTENT_VALUE_ICC_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final INTENT_VALUE_LOCKED_CORPORATE:Ljava/lang/String; = "SIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_CORPORATE_PUK:Ljava/lang/String; = "SIM LOCK CORPORATE BLOCK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_PUK:Ljava/lang/String; = "SIM LOCK BLOCK"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET:Ljava/lang/String; = "SIM NETWORK SUBSET"

.field public static final INTENT_VALUE_LOCKED_NETWORK_SUBSET_PUK:Ljava/lang/String; = "SIM LOCK NETWORK SUBSET BLOCK"

.field public static final INTENT_VALUE_LOCKED_PERSO:Ljava/lang/String; = "PERSO"

.field public static final INTENT_VALUE_LOCKED_RUIM_CORPORATE:Ljava/lang/String; = "RUIM CORPORATE"

.field public static final INTENT_VALUE_LOCKED_RUIM_HRPD:Ljava/lang/String; = "RUIM HRPD"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK1:Ljava/lang/String; = "RUIM NETWORK1"

.field public static final INTENT_VALUE_LOCKED_RUIM_NETWORK2:Ljava/lang/String; = "RUIM NETWORK2"

.field public static final INTENT_VALUE_LOCKED_RUIM_RUIM:Ljava/lang/String; = "RUIM RUIM"

.field public static final INTENT_VALUE_LOCKED_RUIM_SERVICE_PROVIDER:Ljava/lang/String; = "RUIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER:Ljava/lang/String; = "SIM SERVICE PROVIDER"

.field public static final INTENT_VALUE_LOCKED_SERVICE_PROVIDER_PUK:Ljava/lang/String; = "SIM LOCK SERVICE PROVIDERBLOCK"

.field public static final INTENT_VALUE_LOCKED_SIM:Ljava/lang/String; = "SIM SIM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastIccStateChangedIntent(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "obj"
    .parameter "value"
    .parameter "reason"

    .prologue
    return-void
.end method

.method public static getIccCardExState(Lcom/android/internal/telephony/IccCard$State;)Lcom/huawei/internal/telephony/IccCardEx$State;
    .locals 2
    .parameter "state"

    .prologue
    const-string v0, "PERSO_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PERSO_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->CARD_IO_ERROR:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_1
    const-string v0, "DEACTIVED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->DEACTIVED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_2
    const-string v0, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_3
    const-string v0, "SIM_CORPORATE_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_4
    const-string v0, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_5
    const-string v0, "SIM_SIM_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_6
    const-string v0, "RUIM_NETWORK1_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_NETWORK1_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_7
    const-string v0, "RUIM_NETWORK2_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_NETWORK1_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto :goto_0

    :cond_8
    const-string v0, "RUIM_HRPD_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_HRPD_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_9
    const-string v0, "RUIM_CORPORATE_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_HRPD_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_a
    const-string v0, "RUIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_b
    const-string v0, "RUIM_RUIM_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_RUIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_c
    const-string v0, "SIM_NETWORK_LOCKED_PUK"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_RUIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_d
    const-string v0, "SIM_NETWORK_SUBSET_LOCKED_PUK"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_e
    const-string v0, "SIM_CORPORATE_LOCKED_PUK"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_f
    const-string v0, "SIM_SERVICE_PROVIDER_LOCKED_PUK"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_10
    const-string v0, "NETWORK_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->NETWORK_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_11
    const-string v0, "UNKNOWN"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->UNKNOWN:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_12
    const-string v0, "ABSENT"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->ABSENT:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_13
    const-string v0, "PIN_REQUIRED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PIN_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_14
    const-string v0, "PUK_REQUIRED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PUK_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_15
    const-string v0, "NETWORK_LOCKED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->NETWORK_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_16
    const-string v0, "READY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->READY:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_17
    const-string v0, "NOT_READY"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->NOT_READY:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_18
    const-string v0, "PERM_DISABLED"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PERM_DISABLED:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0

    :cond_19
    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->UNKNOWN:Lcom/huawei/internal/telephony/IccCardEx$State;

    goto/16 :goto_0
.end method

.method public static final getIccFdnAvailable(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "obj"

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/IccCard;->getIccFdnAvailable()Z

    move-result v0

    return v0
.end method

.method public static final getIccPin1RetryCount(Lcom/android/internal/telephony/IccCard;)I
    .locals 1
    .parameter "obj"

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    return v0
.end method

.method public static final getIccPin2Blocked(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "obj"

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/IccCard;->getIccPin2Blocked()Z

    move-result v0

    return v0
.end method

.method public static final getIccPin2RetryCount(Lcom/android/internal/telephony/IccCard;)I
    .locals 1
    .parameter "obj"

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    return v0
.end method

.method public static final getIccPuk2Blocked(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "obj"

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2Blocked()Z

    move-result v0

    return v0
.end method

.method public static registerForNetworkLocked(Lcom/android/internal/telephony/IccCard;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static registerForPersoLocked(Lcom/android/internal/telephony/IccCard;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "obj"
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supplyDepersonalization(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "obj"
    .parameter "pin"
    .parameter "type"
    .parameter "onComplete"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supplyNetworkDepersonalization(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "obj"
    .parameter "pin"
    .parameter "type"
    .parameter "onComplete"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supplyNetworkDepersonalization(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "obj"
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
