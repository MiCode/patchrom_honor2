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
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "hexString"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccIoResult;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    .line 53
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "payload"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccIoResult;)V
    .locals 4
    .parameter "iir"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget v0, p1, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    iput v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    .line 42
    iget v0, p1, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    iput v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    .line 43
    iget-object v0, p1, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    .line 44
    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    iget v1, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw1:I

    iget v2, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->sw2:I

    iget-object v3, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->payload:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    iput-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 38
    check-cast p1, Lcom/android/internal/telephony/IccIoResult;

    .end local p1
    invoke-direct {p0, p1}, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;-><init>(Lcom/android/internal/telephony/IccIoResult;)V

    .line 39
    return-void
.end method


# virtual methods
.method public makeNewIccIoResult(II[B)Lcom/android/internal/telephony/IccIoResult;
    .locals 1
    .parameter "sw1"
    .parameter "sw2"
    .parameter "payload"

    .prologue
    .line 69
    new-instance v0, Lcom/android/internal/telephony/IccIoResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    return-object v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccIoResult;->success()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/huawei/internal/telephony/uicc/IccIoResultEx;->mIccIoResult:Lcom/android/internal/telephony/IccIoResult;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
