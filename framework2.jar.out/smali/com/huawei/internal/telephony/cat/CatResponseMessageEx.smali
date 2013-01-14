.class public Lcom/huawei/internal/telephony/cat/CatResponseMessageEx;
.super Ljava/lang/Object;
.source "CatResponseMessageEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAdditionalInfo(Lcom/android/internal/telephony/cat/CatResponseMessage;ZI)V
    .locals 0
    .parameter "obj"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(ZI)V

    return-void
.end method

.method public static setEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;I[B)V
    .locals 0
    .parameter "obj"
    .parameter "event"
    .parameter "addedInfo"

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    return-void
.end method


# virtual methods
.method public setAdditionalInfo(ZILcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "addInfoReq"
    .parameter "addInfoCode"
    .parameter "obj"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEventDownload(I[BLcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "event"
    .parameter "addedInfo"
    .parameter "obj"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
