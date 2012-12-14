.class public interface abstract Lcom/android/internal/telephony/IHuaweiMsim;
.super Ljava/lang/Object;
.source "IHuaweiMsim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    }
.end annotation


# virtual methods
.method public abstract clearUserPrefWhenChangeMode(I)V
.end method

.method public abstract getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
.end method

.method public abstract getSlotIdFromSubId(I)I
.end method

.method public abstract getSubidFromSlotId(I)I
.end method

.method public abstract isCardPresent(I)Z
.end method

.method public abstract isSubActive(I)Z
.end method
