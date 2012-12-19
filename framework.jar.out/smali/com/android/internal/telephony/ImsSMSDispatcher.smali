.class final Lcom/android/internal/telephony/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "ImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RIL_IMS"


# instance fields
.field private mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    new-instance v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    new-instance v0, Lcom/android/internal/telephony/GsmSMSDispatcher;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private updateImsInfo(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .local v1, responseArray:[I
    aget v2, v1, v4

    if-ne v2, v5, :cond_1

    const-string v2, "RIL_IMS"

    const-string v3, "IMS is registered!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    :goto_0
    aget v2, v1, v5

    invoke-static {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->getRadioTechFamilyFromInt(I)Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-result-object v0

    .local v0, newImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    sput-object v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sget-object v2, Lcom/android/internal/telephony/ImsSMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RIL_IMS"

    const-string v3, "IMS encoding was unknown!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    :cond_0
    return-void

    .end local v0           #newImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :cond_1
    const-string v2, "RIL_IMS"

    const-string v3, "IMS is NOT registered!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/internal/telephony/ImsSMSDispatcher;->mIms:Z

    goto :goto_0
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "acknowledgeLastIncomingSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 2
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 2
    .parameter "sms"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "dispatchMessage should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "getEncoding should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "handleGetIccSmsDone function is not applicable for IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->updateImsInfo(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_0
    const-string v1, "RIL_IMS"

    const-string v2, "IMS State query failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "handleSmsOnIcc function is not applicable for IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, data:Ljava/util/List;,"Ljava/util/List<[B>;"
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "Error! Not implemented for IMS."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 16
    .parameter "tracker"

    .prologue
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .local v9, oldFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v13}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .local v8, oldEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :goto_0
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    if-ne v13, v14, :cond_2

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .local v7, newEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "RIL_IMS"

    const-string v14, "old encoding matched new encoding (cdma)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_0
    :goto_2
    return-void

    .end local v7           #newEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    .end local v8           #oldEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    goto :goto_0

    .restart local v8       #oldEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    goto :goto_1

    .restart local v7       #newEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;
    :cond_3
    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isGsm()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isGsm()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "RIL_IMS"

    const-string v14, "old encoding matched new encoding (gsm)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v6, map:Ljava/util/HashMap;
    const-string v13, "scAddr"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "destAddr"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "text"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "data"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "destPort"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const-string v13, "RIL_IMS"

    const-string v14, "sendRetrySms failed to re-encode per missing fields!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_0

    const/4 v5, 0x1

    .local v5, error:I
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v5, v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v13

    goto :goto_2

    .end local v5           #error:I
    :cond_6
    const-string v13, "scAddr"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, scAddr:Ljava/lang/String;
    const-string v13, "destAddr"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, destAddr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, pdu:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v13, "text"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "RIL_IMS"

    const-string v14, "sms failed was text"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "text"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, text:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (gsm) ==> new encoding (cdma)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x0

    invoke-static {v11, v2, v12, v13, v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    .end local v12           #text:Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v13, "smsc"

    iget-object v14, v10, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "pdu"

    iget-object v14, v10, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .local v4, dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    :goto_5
    invoke-virtual {v4}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_2

    .end local v4           #dispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v12       #text:Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    :cond_9
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (cdma) ==> new encoding (gsm)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    :goto_6
    const/4 v14, 0x0

    invoke-static {v11, v2, v12, v13, v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    .end local v12           #text:Ljava/lang/String;
    :cond_b
    const-string v13, "data"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "RIL_IMS"

    const-string v14, "sms failed was data"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "data"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v1, v13

    check-cast v1, [B

    .local v1, data:[B
    const-string v13, "destPort"

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, destPort:Ljava/lang/Integer;
    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (gsm) ==> new encoding (cdma)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    :goto_7
    invoke-static {v11, v2, v14, v1, v13}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    goto/16 :goto_4

    :cond_c
    const/4 v13, 0x0

    goto :goto_7

    :cond_d
    const-string v13, "RIL_IMS"

    const-string v14, "old encoding (cdma) ==> new encoding (gsm)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v13, :cond_e

    const/4 v13, 0x1

    :goto_8
    invoke-static {v11, v2, v14, v1, v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    goto/16 :goto_4

    :cond_e
    const/4 v13, 0x0

    goto :goto_8

    .end local v1           #data:[B
    .end local v3           #destPort:Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto/16 :goto_5
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "sendSms should never be called from here!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "sendText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    goto :goto_0
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    const-string v0, "RIL_IMS"

    const-string v1, "In IMS updatePhoneObject "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method
