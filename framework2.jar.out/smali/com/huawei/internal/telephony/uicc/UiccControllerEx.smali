.class public Lcom/huawei/internal/telephony/uicc/UiccControllerEx;
.super Ljava/lang/Object;
.source "UiccControllerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/UiccCard;
    .locals 2
    .parameter "obj"

    .prologue
    .line 46
    const-class v0, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/UiccCard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUiccCard(Lcom/android/internal/telephony/uicc/UiccController;I)Lcom/android/internal/telephony/UiccCard;
    .locals 3
    .parameter "obj"
    .parameter "slotId"

    .prologue
    .line 51
    const-class v1, Lcom/huawei/internal/telephony/uicc/UiccControllerEx;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v2, "method not supported."

    invoke-direct {v0, v2}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
