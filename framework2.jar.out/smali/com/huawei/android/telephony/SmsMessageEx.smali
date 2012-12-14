.class public Lcom/huawei/android/telephony/SmsMessageEx;
.super Ljava/lang/Object;
.source "SmsMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
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
    .line 85
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageRefrenceNumber()I
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/telephony/SmsMessage;->getMessageRefrenceNumber()I

    move-result v0

    return v0
.end method

.method public static getSubId(Landroid/telephony/SmsMessage;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 39
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
    .line 69
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
    .line 55
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->getUserDataHeaderForGsm(III)[B

    move-result-object v0

    return-object v0
.end method

.method public static setSubId(Landroid/telephony/SmsMessage;I)V
    .locals 0
    .parameter "obj"
    .parameter "subId"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 36
    return-void
.end method
