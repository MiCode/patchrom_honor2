.class public Lcom/huawei/android/telephony/SmsMessageEx;
.super Ljava/lang/Object;
.source "SmsMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "scTimeStamp"
    .parameter "origAddress"
    .parameter "message"
    .parameter "UDH"

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageRefrenceNumber()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/telephony/SmsMessage;->getMessageRefrenceNumber()I

    move-result v0

    return v0
.end method

.method public static getSubId(Landroid/telephony/SmsMessage;)I
    .locals 1
    .parameter "obj"

    .prologue
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getSubId()I

    move-result v0

    return v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "timeStamps"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "UDH"

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDataHeaderForGsm(III)[B
    .locals 1
    .parameter "seqNum"
    .parameter "maxNum"
    .parameter "MessageReferenceNum"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->getUserDataHeaderForGsm(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static setSubId(Landroid/telephony/SmsMessage;I)V
    .locals 0
    .parameter "obj"
    .parameter "subId"

    .prologue
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    return-void
.end method
