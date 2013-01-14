.class public Lcom/huawei/internal/policy/impl/KeyguardUpdateMonitorEx;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/internal/policy/impl/KeyguardUpdateMonitorEx$SimStateCallback;,
        Lcom/huawei/internal/policy/impl/KeyguardUpdateMonitorEx$InfoCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimState(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "obj"
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyPlmn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "obj"
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonySpn(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "obj"
    .parameter "subscription"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
