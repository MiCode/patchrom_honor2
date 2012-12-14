.class public Lcom/huawei/internal/telephony/cat/AppInterfaceEx;
.super Ljava/lang/Object;
.source "AppInterfaceEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageNotificationCode(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->getLanguageNotificationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageSelectionStateAvailable(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->getLanguageSelectionStateAvailable()Z

    move-result v0

    return v0
.end method

.method public static getState_LANGUAGE_NOTIFICATION()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method

.method public static sendLanguageSelection(IILcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "languageFirst"
    .parameter "languageSecond"
    .parameter "obj"

    .prologue
    .line 31
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/cat/CatService;->sendLanguageSelection(II)V

    .line 32
    return-void
.end method

.method public static setLanguageSelectionStateAvailable(ZLcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "languageSelectionStateAvailable"
    .parameter "obj"

    .prologue
    .line 46
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cat/CatService;->setLanguageSelectionStateAvailable(Z)V

    .line 47
    return-void
.end method
