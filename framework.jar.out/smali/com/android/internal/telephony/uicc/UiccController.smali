.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Ljava/lang/Object;
.source "UiccController.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UiccController"

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mIsCurrentCard3gpp:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "Creating UiccController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 72
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 2
    .parameter "phone"

    .prologue
    .line 45
    const-class v1, Lcom/android/internal/telephony/uicc/UiccController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 50
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->setNewPhone(Lcom/android/internal/telephony/PhoneBase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 106
    const-string v0, "RIL_UiccController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method private setNewPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v1, 0x1

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 76
    instance-of v0, p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "New phone is GSMPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->updateCurrentCard(Z)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_1

    .line 80
    const-string v0, "New phone type is CDMALTEPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->updateCurrentCard(Z)V

    goto :goto_0

    .line 82
    :cond_1
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "New phone type is CDMAPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->updateCurrentCard(Z)V

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "RIL_UiccController"

    const-string v1, "Unhandled phone type. Critical error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCurrentCard(Z)V
    .locals 1
    .parameter "isNewCard3gpp"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsCurrentCard3gpp:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 100
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsCurrentCard3gpp:Z

    goto :goto_0
.end method


# virtual methods
.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/UiccCard;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCurrentPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    return-object v0
.end method
