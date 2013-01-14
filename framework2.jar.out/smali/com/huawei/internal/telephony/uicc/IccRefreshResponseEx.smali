.class public Lcom/huawei/internal/telephony/uicc/IccRefreshResponseEx;
.super Ljava/lang/Object;
.source "IccRefreshResponseEx.java"


# static fields
.field public static final REFRESH_RESULT_FILE_UPDATE:I = 0x0

.field public static final REFRESH_RESULT_INIT:I = 0x1

.field public static final REFRESH_RESULT_RESET:I = 0x2


# instance fields
.field public aid:Ljava/lang/String;

.field public efId:I

.field public refreshResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
