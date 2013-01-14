.class public final Lcom/huawei/android/telephony/SmsManagerEx;
.super Ljava/lang/Object;
.source "SmsManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmscAddr(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSmscAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
