.class final Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "MSimCdmaServiceStateTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getSubscription()I

    move-result v0

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 40
    .local v0, subscriptionData:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 57
    const-string v1, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] [SUB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getSubscription()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 62
    const-string v1, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] [SUB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getSubscription()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 48
    return-void
.end method
