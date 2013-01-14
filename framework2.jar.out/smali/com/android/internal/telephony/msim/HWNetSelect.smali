.class public Lcom/android/internal/telephony/msim/HWNetSelect;
.super Ljava/lang/Object;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;
    }
.end annotation


# static fields
.field private static final DUALCARD_CLASS:Ljava/lang/String; = "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

.field private static final DUALCARD_CLASS_TAB:Ljava/lang/String; = "com.huawei.android.dsdscardmanager.HWCardManagerTabActivity"

.field private static final DUALCARD_PACKAGE:Ljava/lang/String; = "com.huawei.android.dsdscardmanager"

.field private static final DUAL_CARD_MODE_CDMA:I = 0x0

.field private static final INTERVAL_TO_CLOSE_DSDS:I = 0x3e8

#the value of this static final field might be set in the static constructor
.field private static final IS_CHINA_TELECOM_OPTA_OPTB:Z = false

.field private static final MODEM_CDMA:Ljava/lang/String; = "MODEM_CDMA"

.field private static final NUM_SUBSCRIPTIONS:I = 0x2

.field public static TIMETOCLOSECARDMANAGER:Ljava/lang/String; = null

.field private static final TIME_TO_CLOSE_DSDS:I = 0x4e20

.field private static mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;


# instance fields
.field private final EVENT_SWITCH_MTK_SIM_DONE:I

.field private LOG_TAG:Ljava/lang/String;

.field private countdown:Landroid/os/CountDownTimer;

.field private dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

.field private mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHuaweiDSDA:Z

.field private mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mcardIndex:I

.field private mlastmIccIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    const-string v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/msim/HWNetSelect;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    const-string v0, "TIMETOCLOSECARDMANAGER"

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->TIMETOCLOSECARDMANAGER:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HWNetSelect"

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iput v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->EVENT_SWITCH_MTK_SIM_DONE:I

    const-string v0, "ro.config.hw_dsda"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHuaweiDSDA:Z

    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/HWNetSelect$2;-><init>(Lcom/android/internal/telephony/msim/HWNetSelect;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/msim/HWNetSelect;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/msim/HWNetSelect;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/msim/HWNetSelect;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/HWNetSelect;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/msim/HWNetSelect;
    .locals 1
    .parameter "context"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/msim/HWNetSelect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHWNetSelect:Lcom/android/internal/telephony/msim/HWNetSelect;

    return-object v0
.end method

.method private isCardChanged()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .local v1, result:Z
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v1, v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCardChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v4, v2

    .local v0, cardSub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcardIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cardSub.iccId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mlastmIccIds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :goto_2
    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    aget-object v4, v4, v5

    if-nez v4, :cond_8

    move v1, v2

    :goto_3
    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_3
.end method

.method private isSlot0isGsm()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isSlot0isGsm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v3, v0

    .local v1, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSlot0isGsm userSub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v4, "USIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isUserPrefEmpty()Z
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .local v1, ret:Z
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUserPrefIsEmpity ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v3, v0

    .local v2, userSub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUserPrefInvalid(I)Z
    .locals 4
    .parameter "subId"

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v2, p1

    .local v0, userSub:Lcom/android/internal/telephony/msim/Subscription;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eq v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needChangeMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .local v0, result:Z
    iget v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/HWNetSelect;->isUserPrefInvalid(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isCardChanged()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needChangeMode, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private promptUserSubscription()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v2, "promptUserSubscription"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, setSubscriptionIntent:Landroid/content/Intent;
    sget-boolean v1, Lcom/android/internal/telephony/msim/HWNetSelect;->IS_CHINA_TELECOM_OPTA_OPTB:Z

    if-eqz v1, :cond_0

    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "dualmgrstartcause"

    const-string v2, "framework"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setTimerToCloseCardManager()V

    return-void

    :cond_0
    const-string v1, "com.huawei.android.dsdscardmanager"

    const-string v2, "com.huawei.android.dsdscardmanager.HWCardManagerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public cancelTheTimer()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelTheTimer---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public matchSubscriptions(Lcom/android/internal/telephony/msim/SubscriptionData;[Lcom/android/internal/telephony/msim/SubscriptionData;[Ljava/lang/String;I)Z
    .locals 7
    .parameter "UserPrefSubs"
    .parameter "CardSubData"
    .parameter "lastmIccIds"
    .parameter "cardIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x1

    .local v0, result:Z
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "matchSubscriptions cardIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", UserPrefSubs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastmIccIds card0 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", card1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {p2}, [Lcom/android/internal/telephony/msim/SubscriptionData;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/telephony/msim/SubscriptionData;

    check-cast v2, [Lcom/android/internal/telephony/msim/SubscriptionData;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mlastmIccIds:[Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    const-string v2, "cdma_gsm"

    const-string v4, "ro.config.dsds_mode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    :goto_0
    sget-object v2, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHuaweiDSDA:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v2

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "gsm mode, DSDA!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->needChangeMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Dual C card changed, will restart rilds!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v2, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, switchMtkSimMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v6, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->switchMtkSimTo(ILandroid/os/Message;)V

    .end local v1           #switchMtkSimMsg:Landroid/os/Message;
    :goto_1
    move v2, v3

    :goto_2
    return v2

    :cond_0
    const-string v2, "umts_gsm"

    const-string v4, "ro.config.dsds_mode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    goto :goto_0

    :cond_1
    const-string v2, "tdscdma_gsm"

    const-string v4, "ro.config.dsds_mode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->TDSCDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iput-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setDefaultSubscriptions()V

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isCardChanged()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isUserPrefEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->setDefaultSubscriptions()V

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v2, v3, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->isSlot0isGsm()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/msim/HWNetSelect;->promptUserSubscription()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v3, "3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setDefaultSubscriptions()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "setDefaultSubscriptions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/telephony/msim/SubscriptionData;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    .local v2, matchedSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    const-string v4, "setDefaultSubscriptions fail!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v3, v3, v6

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardSubData[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v1

    iget-object v0, v3, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .local v0, appType:Ljava/lang/String;
    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iput v6, v3, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iput v6, v3, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v3, v4, :cond_6

    const-string v3, "RUIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "CSIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iput v8, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iput v1, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .end local v0           #appType:Ljava/lang/String;
    .end local v1           #i:I
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v3, v3, v7

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardSubData[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v3

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iput v7, v3, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iput v6, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iput v8, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iput v7, v3, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->appLabel:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mCardSubData:[Lcom/android/internal/telephony/msim/SubscriptionData;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mHuaweiDSDA:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v3

    if-ne v7, v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v3, v4, :cond_4

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_5

    :cond_4
    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v7

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->mcardIndex:I

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDefaultSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;I)V

    goto/16 :goto_0

    .restart local v0       #appType:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->dsdsType:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    if-ne v3, v4, :cond_8

    const-string v3, "SIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "USIM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iput v1, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    iget-object v3, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v6

    iput v8, v3, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public setTimerToCloseCardManager()V
    .locals 6

    .prologue
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/msim/HWNetSelect$1;-><init>(Lcom/android/internal/telephony/msim/HWNetSelect;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/internal/telephony/msim/HWNetSelect;->countdown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
