.class public Lcom/huawei/internal/telephony/uicc/IccIoResultEx;
.super Ljava/lang/Object;
.source "IccIoResultEx.java"


# instance fields
.field private mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

.field public payload:[B

.field public sw1:I

.field public sw2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "hexString"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccIoResult;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "payload"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccIoResult;)V
    .locals 4
    .parameter "iir"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    iput v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    iget v0, p1, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    iput v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    iget-object v0, p1, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    iget v1, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    iget v2, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    iget-object v3, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    check-cast p1, Lcom/android/internal/telephony/IccIoResult;

    .end local p1
    invoke-direct {p0, p1}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>(Lcom/android/internal/telephony/IccIoResult;)V

    return-void
.end method


# virtual methods
.method public makeNewIccIoResult(II[B)Lcom/android/internal/telephony/IccIoResult;
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "payload"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    return-object v0
.end method

.method public success()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccIoResult;->success()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
