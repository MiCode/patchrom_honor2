.class public Lcom/android/internal/telephony/msim/CardSubscriptionManager;
.super Landroid/os/Handler;
.source "CardSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/CardSubscriptionManager$1;,
        Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    }
.end annotation


# static fields
.field private static final EVENT_GET_ICCID_DONE:I = 0x3

.field private static final EVENT_ICC_CHANGED:I = 0x2

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x0

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x5

.field private static final EVENT_UPDATE_UICC_STATUS:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CardSubscriptionManager"

.field static mPowerOnSetsub:[Z

.field private static sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;


# instance fields
.field private mAllCardsInfoAvailable:Z

.field private mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

.field private mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

.field private mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mNetSeletct:Lcom/android/internal/telephony/msim/HWNetSelect;

.field private mRadioOn:[Z

.field private mUiccCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUpdateUiccStatusContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mPowerOnSetsub:[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "context"
    .parameter "uiccManager"
    .parameter "ci"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 151
    new-array v2, v5, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    .line 152
    iput v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 156
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    .line 159
    iput-object v6, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 161
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 164
    iput-object v6, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mNetSeletct:Lcom/android/internal/telephony/msim/HWNetSelect;

    .line 183
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 185
    iput-object p3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 186
    iput-object p2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 190
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 191
    .local v1, slot:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v1           #slot:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v2, p0, v5, v6}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    new-array v2, v5, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    .line 202
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_1
    new-array v2, v5, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    .line 207
    new-array v2, v5, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    .line 208
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_2

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    aput-object v3, v2, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/msim/HWNetSelect;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/msim/HWNetSelect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mNetSeletct:Lcom/android/internal/telephony/msim/HWNetSelect;

    .line 217
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 218
    return-void

    .line 151
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private appTypetoString(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 655
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 667
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 657
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 659
    :pswitch_1
    const-string v0, "SIM"

    goto :goto_0

    .line 661
    :pswitch_2
    const-string v0, "USIM"

    goto :goto_0

    .line 663
    :pswitch_3
    const-string v0, "RUIM"

    goto :goto_0

    .line 665
    :pswitch_4
    const-string v0, "CSIM"

    goto :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillAppIndex(Lcom/android/internal/telephony/msim/Subscription;I)V
    .locals 3
    .parameter "cardSub"
    .parameter "appIndex"

    .prologue
    const/4 v2, -0x1

    .line 642
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 643
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 644
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "USIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    :cond_2
    iput p2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 647
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto :goto_0

    .line 648
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "RUIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v1, "CSIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :cond_4
    iput v2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 650
    iput p2, p1, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccMgr"
    .parameter "ci"

    .prologue
    .line 170
    const-string v0, "CardSubscriptionManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/UiccManager;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 174
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    return-object v0
.end method

.method private declared-synchronized handleGetIccIdDone(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    .line 455
    monitor-enter p0

    if-nez p1, :cond_0

    .line 456
    :try_start_0
    const-string v4, "handleGetIccIdDone: parameter is null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_0
    monitor-exit p0

    return-void

    .line 460
    :cond_0
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 461
    .local v2, data:[B
    const/4 v1, 0x0

    .line 463
    .local v1, cardIndex:I
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 464
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 467
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetIccIdDone: cardIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 469
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_2

    .line 470
    const-string v4, "handleGetIccIdDone: radio not available - EXIT"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 455
    .end local v1           #cardIndex:I
    .end local v2           #data:[B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 474
    .restart local v1       #cardIndex:I
    .restart local v2       #data:[B
    :cond_2
    const/4 v3, 0x0

    .line 476
    .local v3, iccId:Ljava/lang/String;
    :try_start_2
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 477
    const-string v4, "Exception in GET ICCID"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 479
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setCardState(Lcom/android/internal/telephony/IccCardStatus$CardState;)V

    .line 486
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 488
    iget-object v4, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 489
    const-string v4, "============================================================="

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET ICCID DONE. ICCID of card["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 491
    const-string v4, "============================================================="

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ICCID Read Done for card : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 482
    :cond_3
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/IccUtils;->ExbcdToString([BII)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1
.end method

.method private handleIccChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, iccIdsAvailable:Z
    const/4 v3, 0x0

    .line 330
    .local v3, cardStateChanged:Z
    const-string v7, "handleIccChanged: ENTER"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 332
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_3

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 333
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 334
    .local v1, cardIndex:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-boolean v7, v7, v8

    if-nez v7, :cond_0

    .line 335
    const-string v7, "handleIccChanged: radio not available - EXIT"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 386
    .end local v1           #cardIndex:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 338
    .restart local v1       #cardIndex:Ljava/lang/Integer;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/UiccManager;->getIccCards()[Lcom/android/internal/telephony/UiccCard;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v6, v7, v8

    .line 339
    .local v6, uiccCard:Lcom/android/internal/telephony/UiccCard;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    .line 341
    .local v0, card:Lcom/android/internal/telephony/UiccCard;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new uiccCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " old card = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 346
    if-eqz v0, :cond_5

    .line 347
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    .line 348
    .local v5, oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setUiccCard(Lcom/android/internal/telephony/UiccCard;)V

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: oldCardState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 352
    if-eqz v6, :cond_4

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: new uiccCard.getCardState() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    if-eq v7, v5, :cond_2

    .line 359
    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v7, v8, :cond_1

    .line 360
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setIccId(Ljava/lang/String;)V

    .line 361
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 363
    :cond_1
    const/4 v3, 0x1

    .line 374
    .end local v5           #oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 375
    .local v2, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleIccChanged: cardStateChanged = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " card info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v7, v8, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    .line 380
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->updateIccIds(I)Z

    .line 385
    .end local v0           #card:Lcom/android/internal/telephony/UiccCard;
    .end local v1           #cardIndex:Ljava/lang/Integer;
    .end local v2           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v6           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_3
    :goto_2
    const-string v7, "handleIccChanged: EXIT"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    .restart local v0       #card:Lcom/android/internal/telephony/UiccCard;
    .restart local v1       #cardIndex:Ljava/lang/Integer;
    .restart local v5       #oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .restart local v6       #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_4
    const-string v7, "handleIccChanged: new uiccCard is NULL"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 367
    const/4 v3, 0x1

    goto :goto_1

    .line 369
    .end local v5           #oldCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :cond_5
    if-nez v0, :cond_2

    .line 370
    const/4 v3, 0x1

    .line 371
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-direct {v9, p0, v6}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 381
    .restart local v2       #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    :cond_6
    if-eqz v3, :cond_3

    .line 382
    const-string v7, "ICC STATUS CHANGED"

    invoke-direct {p0, v1, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isIccIdAvailable(I)Z
    .locals 3
    .parameter "cardIndex"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 393
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    const/4 v1, 0x1

    .line 397
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 779
    const-string v0, "CardSubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 783
    const-string v0, "CardSubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method private notifyAllCardsInfoAvailable()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 673
    return-void
.end method

.method private notifyCardInfoAvailable(I)V
    .locals 1
    .parameter "cardIndex"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 682
    return-void
.end method

.method private notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V
    .locals 3
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 678
    return-void
.end method

.method private declared-synchronized onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 22
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus: cardIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " reason = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 514
    const/4 v8, 0x0

    .line 515
    .local v8, cardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 516
    .local v5, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    const/4 v15, 0x0

    .line 517
    .local v15, uiccCard:Lcom/android/internal/telephony/UiccCard;
    const/4 v7, 0x0

    .line 518
    .local v7, cardRemoved:Z
    const/4 v6, 0x0

    .line 520
    .local v6, cardInserted:Z
    if-eqz v5, :cond_0

    .line 521
    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v15

    .line 524
    :cond_0
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-boolean v18, v18, v19

    if-nez v18, :cond_5

    .line 525
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus(): mRadioOn["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-boolean v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 526
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus(): NO Card!!!!! at index : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    if-eqz v18, :cond_2

    .line 529
    const/4 v7, 0x1

    .line 531
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    aput-object v20, v18, v19

    .line 603
    :cond_3
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cardInserted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mPowerOnSetsub["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mPowerOnSetsub:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-boolean v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 604
    if-eqz v6, :cond_c

    sget-object v18, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mPowerOnSetsub:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-boolean v18, v18, v19

    if-nez v18, :cond_c

    .line 606
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getUserSubInfo()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v17

    .line 607
    .local v17, usersub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getLastIccidInfo()[Ljava/lang/String;

    move-result-object v11

    .line 608
    .local v11, lastIccid:[Ljava/lang/String;
    const-string v18, "try to match!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :try_start_1
    sget-object v18, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mPowerOnSetsub:[Z

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 611
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mNetSeletct:Lcom/android/internal/telephony/msim/HWNetSelect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/android/internal/telephony/msim/HWNetSelect;->matchSubscriptions(Lcom/android/internal/telephony/msim/SubscriptionData;[Lcom/android/internal/telephony/msim/SubscriptionData;[Ljava/lang/String;I)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 612
    const-string v18, "use our default activate process!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setCardInfoAvailable(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 639
    .end local v11           #lastIccid:[Ljava/lang/String;
    .end local v17           #usersub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    .line 533
    :cond_5
    :try_start_2
    invoke-virtual {v15}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v8

    .line 535
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus(): cardIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cardInfo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 538
    const/4 v12, 0x0

    .line 539
    .local v12, numApps:I
    sget-object v18, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 540
    invoke-virtual {v15}, Lcom/android/internal/telephony/UiccCard;->getNumApplications()I

    move-result v12

    .line 542
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus(): Number of apps : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 545
    sget-object v18, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-object/from16 v0, v18

    if-ne v8, v0, :cond_b

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    if-lez v12, :cond_b

    .line 546
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus(): mCardSubData["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 555
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onUpdateUiccStatus(): New card, update card info at index = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    new-instance v20, Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    aput-object v20, v18, v19

    .line 560
    const/4 v4, 0x0

    .local v4, appIndex:I
    :goto_2
    if-ge v4, v12, :cond_a

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    move-object/from16 v18, v0

    aget-object v9, v18, v4

    .line 562
    .local v9, cardSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v15, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v16

    .line 564
    .local v16, uiccCardApplication:Lcom/android/internal/telephony/UiccCardApplication;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    iput v0, v9, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 568
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 569
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UiccCardApplication;->getAppLabel()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    .line 570
    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 572
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v14

    .line 573
    .local v14, type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->appTypetoString(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v13

    .line 575
    .local v13, subAppType:Ljava/lang/String;
    const-string v18, "UNKNOWN"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 576
    iput-object v13, v9, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 584
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v18

    sget-object v19, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 585
    const-string v18, "*************************************************************************************"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 586
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AppState of the UiccCardApplication @ cardIndex:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " appIndex:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is APPSTATE_READY!!!!!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 588
    const-string v18, "Android expectes APPSTATE_DETECTED before selecting the subscriptions!!!!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 589
    const-string v18, "WARNING!!! Please configure the NV items properly to select the subscriptions from UI"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 590
    const-string v18, "*************************************************************************************"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    .line 593
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->fillAppIndex(Lcom/android/internal/telephony/msim/Subscription;I)V

    .line 560
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 578
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 579
    const-string v18, "onUpdateUiccStatus(): UNKNOWN APP"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 512
    .end local v4           #appIndex:I
    .end local v5           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v6           #cardInserted:Z
    .end local v7           #cardRemoved:Z
    .end local v8           #cardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .end local v9           #cardSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v12           #numApps:I
    .end local v13           #subAppType:Ljava/lang/String;
    .end local v14           #type:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    .end local v15           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    .end local v16           #uiccCardApplication:Lcom/android/internal/telephony/UiccCardApplication;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 595
    .restart local v4       #appIndex:I
    .restart local v5       #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .restart local v6       #cardInserted:Z
    .restart local v7       #cardRemoved:Z
    .restart local v8       #cardState:Lcom/android/internal/telephony/IccCardStatus$CardState;
    .restart local v12       #numApps:I
    .restart local v15       #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 598
    .end local v4           #appIndex:I
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x0

    aput-object v20, v18, v19

    .line 599
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 620
    .end local v12           #numApps:I
    .restart local v11       #lastIccid:[Ljava/lang/String;
    .restart local v17       #usersub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :catch_0
    move-exception v10

    .line 621
    .local v10, e:Ljava/lang/Exception;
    const-string v18, "matchSubscriptions failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 626
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #lastIccid:[Ljava/lang/String;
    .end local v17           #usersub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_c
    if-eqz v6, :cond_d

    .line 627
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoAvailable(I)V

    .line 629
    :cond_d
    if-eqz v7, :cond_e

    .line 630
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 635
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->isValidCards()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_4

    .line 636
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyAllCardsInfoAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method private processRadioOn(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 312
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 314
    .local v0, cardIndex:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioOn on cardIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processRadioUnavailable(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 280
    .local v0, cardIndex:Ljava/lang/Integer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRadioUnavailable on cardIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-boolean v3, v1, v2

    .line 286
    const-string v1, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->resetCardInfo(I)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 292
    iput-boolean v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    const-string v1, "Invalid Index!!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processSimRefresh(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x2

    .line 260
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 261
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 263
    .local v1, state:Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 264
    .local v0, slot:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSimRefresh: slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " refreshResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 267
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->resetCardInfo(I)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 275
    .end local v0           #slot:Ljava/lang/Integer;
    .end local v1           #state:Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v2, "processSimRefresh received without input"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetCardInfo(I)V
    .locals 3
    .parameter "cardIndex"

    .prologue
    const/4 v2, 0x0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCardInfo(): cardIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aput-object v2, v0, p1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;-><init>(Lcom/android/internal/telephony/msim/CardSubscriptionManager;Lcom/android/internal/telephony/UiccCard;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_1
    return-void
.end method

.method private updateIccIds(I)Z
    .locals 9
    .parameter "cardIndex"

    .prologue
    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, readStarted:Z
    iget-object v7, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 419
    .local v1, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v6

    .line 421
    .local v6, uiccCard:Lcom/android/internal/telephony/UiccCard;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateIccIds: cardIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cardInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 426
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v7, v8, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->isReadIccIdInProgress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 430
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, strCardIndex:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 432
    .local v4, response:Landroid/os/Message;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 433
    .local v0, cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    .line 435
    .local v2, fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v2, :cond_0

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateIccIds: get ICCID for cardInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 438
    const/16 v7, 0x2fe2

    invoke-virtual {v2, v7, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 439
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->setReadIccIdInProgress(Z)V

    .line 440
    const/4 v3, 0x1

    .line 445
    .end local v0           #cardApp:Lcom/android/internal/telephony/UiccCardApplication;
    .end local v2           #fileHandler:Lcom/android/internal/telephony/IccFileHandler;
    .end local v4           #response:Landroid/os/Message;
    .end local v5           #strCardIndex:Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private updateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    .line 499
    iget v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    .line 500
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUpdateUiccStatusContext:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 504
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->sendMessage(Landroid/os/Message;)Z

    .line 505
    return-void
.end method


# virtual methods
.method public getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 1
    .parameter "cardIndex"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->processRadioUnavailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 229
    :pswitch_1
    const-string v0, "EVENT_RADIO_ON"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->processRadioOn(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 234
    :pswitch_2
    const-string v0, "EVENT_ICC_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 235
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->handleIccChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 239
    :pswitch_3
    const-string v0, "EVENT_READ_ICCID_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 240
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->handleGetIccIdDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 244
    :pswitch_4
    const-string v0, "EVENT_UPDATE_UICC_STATUS"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 245
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->onUpdateUiccStatus(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_5
    const-string v0, "EVENT_SIM_REFRESH"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->logd(Ljava/lang/String;)V

    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->processSimRefresh(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isAllCardsUpdated()Z
    .locals 5

    .prologue
    .line 739
    const/4 v0, 0x0

    .local v0, cardIndex:I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 740
    iget-object v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 741
    .local v1, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v2, v3, v0

    .line 747
    .local v2, cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 753
    :cond_1
    const/4 v3, 0x0

    .line 756
    .end local v1           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v2           #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :goto_1
    return v3

    .line 739
    .restart local v1       #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .restart local v2       #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    .end local v1           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    .end local v2           #cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isCardAbsentOrError(I)Z
    .locals 3
    .parameter "cardIndex"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 734
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCardInfoAvailable(I)Z
    .locals 4
    .parameter "cardIndex"

    .prologue
    .line 760
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 761
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v1, v2, p1

    .line 767
    .local v1, cardSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 773
    :cond_1
    const/4 v2, 0x0

    .line 775
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isValidCards()Z
    .locals 4

    .prologue
    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mUiccCardList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;

    .line 723
    .local v0, cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 726
    :cond_1
    const/4 v2, 0x0

    .line 729
    .end local v0           #cardInfo:Lcom/android/internal/telephony/msim/CardSubscriptionManager$CardInfo;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 685
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 686
    .local v0, r:Landroid/os/Registrant;
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailable:Z

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 690
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mAllCardsInfoAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 691
    monitor-exit v2

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "cardIndex"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 702
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 703
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoAvailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 705
    monitor-exit v2

    .line 706
    return-void

    .line 705
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "cardIndex"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 695
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 696
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mCardInfoUnavailableRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 698
    monitor-exit v2

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCardsInfo()V
    .locals 3

    .prologue
    .line 303
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 304
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->resetCardInfo(I)V

    .line 305
    sget-object v1, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->notifyCardInfoNotAvailable(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    .line 306
    sget-object v1, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->mPowerOnSetsub:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method
