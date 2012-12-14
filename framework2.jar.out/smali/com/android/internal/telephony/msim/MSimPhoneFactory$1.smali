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
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUserPrefWhenChangeMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 193
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->clearUserPrefWhenChangeMode(I)V

    .line 194
    return-void
.end method

.method public getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    .locals 3
    .parameter "slot"

    .prologue
    .line 196
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .line 197
    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;-><init>()V

    .line 198
    .local v0, si:Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    if-eqz v1, :cond_0

    .line 199
    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->subId:I

    .line 200
    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iput v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->slotId:I

    .line 201
    iget-object v2, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->appType:Ljava/lang/String;

    .line 203
    :cond_0
    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 1
    .parameter "sub"

    .prologue
    .line 184
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
    .line 181
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
    .line 178
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
    .line 190
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->access$000()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    return v0
.end method
