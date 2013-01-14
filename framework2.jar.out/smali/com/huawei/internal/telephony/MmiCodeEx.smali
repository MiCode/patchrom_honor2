.class public Lcom/huawei/internal/telephony/MmiCodeEx;
.super Ljava/lang/Object;
.source "MmiCodeEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhone(Lcom/android/internal/telephony/MmiCode;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "obj"

    .prologue
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method
