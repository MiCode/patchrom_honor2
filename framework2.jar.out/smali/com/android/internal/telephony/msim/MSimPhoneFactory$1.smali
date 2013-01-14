.class final Lcom/android/internal/telephony/msim/MSimPhoneFactory$1;
.super Ljava/lang/Object;
.source "MSimPhoneFactory.java"

# interfaces
.implements Lcom/android/internal/telephony/IHuaweiMsim;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/msim/MSimPhoneFactory;->makeMultiSimDefaultPhone(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUserPrefWhenChangeMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->clearUserPrefWhenChangeMode(I)V

    return-void
.end method

.method public getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    .locals 3
    .parameter "slot"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;-><init>()V

    .local v0, si:Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->subId:I

    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iput v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->slotId:I

    iget-object v2, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->appType:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 1
    .parameter "sub"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSlotIdFromSubId(I)I

    move-result v0

    return v0
.end method

.method public getSubidFromSlotId(I)I
    .locals 1
    .parameter "slot"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v0

    return v0
.end method

.method public isCardPresent(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isCardPresent(I)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 1
    .parameter "sub"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    return v0
.end method
