.class Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/16 v9, 0x20

    const/4 v8, 0x0

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .local v0, data:[B
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_SPN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    aget-byte v6, v0, v8

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, v10, Lcom/android/internal/telephony/cdma/RuimRecords;->mCsimSpnDisplayCondition:Z

    aget-byte v2, v0, v7

    .local v2, encoding:I
    aget-byte v3, v0, v12

    .local v3, language:I
    new-array v5, v9, [B

    .local v5, spnData:[B
    const/4 v7, 0x3

    array-length v6, v0

    if-ge v6, v9, :cond_3

    array-length v6, v0

    :goto_1
    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    .local v4, numBytes:I
    :goto_2
    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_4

    :cond_0
    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v7, ""

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$202(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_3
    return-void

    .end local v2           #encoding:I
    .end local v3           #language:I
    .end local v4           #numBytes:I
    .end local v5           #spnData:[B
    :cond_2
    move v6, v8

    goto :goto_0

    .restart local v2       #encoding:I
    .restart local v3       #language:I
    .restart local v5       #spnData:[B
    :cond_3
    move v6, v9

    goto :goto_1

    .restart local v4       #numBytes:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v7, "SPN encoding not supported"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$700(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spnCondition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-boolean v8, v8, Lcom/android/internal/telephony/cdma/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v7, "gsm.sim.operator.alpha"

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$800(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$900(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1000(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/os/RegistrantList;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ISO-8859-1"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "spn decode error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v7, 0x0

    mul-int/lit8 v8, v4, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$402(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "US-ASCII"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$502(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "utf-16"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$602(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
