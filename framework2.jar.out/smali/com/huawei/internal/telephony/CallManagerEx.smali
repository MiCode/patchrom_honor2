.class public final Lcom/huawei/internal/telephony/CallManagerEx;
.super Ljava/lang/Object;
.source "CallManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getPhoneInCall(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "obj"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneInCall()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public static final registerForSuppServiceNotification(Lcom/android/internal/telephony/CallManager;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "obj"
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static setAudioMode(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "obj"
    .parameter "ph"

    .prologue
    return-void
.end method

.method public static final unregisterForSuppServiceNotification(Lcom/android/internal/telephony/CallManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "obj"
    .parameter "h"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method
