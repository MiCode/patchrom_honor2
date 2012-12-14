.class public Lcom/huawei/internal/telephony/cat/CatCmdMessageEx;
.super Ljava/lang/Object;
.source "CatCmdMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLanguageNotification(Lcom/android/internal/telephony/cat/CatCmdMessage;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getLanguageNotification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadOptionalIconFailed(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 48
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get_eventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)[I
    .locals 1
    .parameter "obj"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    return-object v0
.end method

.method public static hasIconLoadFailed(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v0

    return v0
.end method
