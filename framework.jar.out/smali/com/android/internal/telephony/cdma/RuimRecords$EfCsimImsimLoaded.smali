.class Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;
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
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;Lcom/android/internal/telephony/cdma/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_IMSIM"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v3, v0

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    :cond_0
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IMSI from EF_CSIM_IMSIM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1202(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x7

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .local v2, provisioned:Z
    :goto_1
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #calls: Lcom/android/internal/telephony/cdma/RuimRecords;->decodeImsi([B)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1500(Lcom/android/internal/telephony/cdma/RuimRecords;[B)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1402(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1600(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1700(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mMin:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1302(Lcom/android/internal/telephony/cdma/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CSIM_IMSI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1800(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .local v1, operatorNumeric:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$1900(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$2000(Lcom/android/internal/telephony/cdma/RuimRecords;)Landroid/os/RegistrantList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .end local v1           #operatorNumeric:Ljava/lang/String;
    .end local v2           #provisioned:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2       #provisioned:Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v4, "IMSI not provisioned in card"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_2
.end method
