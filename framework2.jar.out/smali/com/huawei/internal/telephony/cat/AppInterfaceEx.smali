.class public Lcom/huawei/internal/telephony/cat/AppInterfaceEx;
.super Ljava/lang/Object;
.source "AppInterfaceEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageNotificationCode(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->getLanguageNotificationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageSelectionStateAvailable(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .parameter "obj"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->getLanguageSelectionStateAvailable()Z

    move-result v0

    return v0
.end method

.method public static getState_LANGUAGE_NOTIFICATION()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method

.method public static sendLanguageSelection(IILcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "languageFirst"
    .parameter "languageSecond"
    .parameter "obj"

    .prologue
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/cat/CatService;->sendLanguageSelection(II)V

    return-void
.end method

.method public static setLanguageSelectionStateAvailable(ZLcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "languageSelectionStateAvailable"
    .parameter "obj"

    .prologue
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cat/CatService;->setLanguageSelectionStateAvailable(Z)V

    return-void
.end method
