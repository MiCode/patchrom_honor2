.class public Lcom/huawei/atcommand/HuaweiATUtils;
.super Ljava/lang/Object;
.source "HuaweiATUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/atcommand/HuaweiATUtils$ATCmdCmeErrorType;,
        Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;,
        Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    }
.end annotation


# static fields
.field private static final AT_CMD_ERROR_NUM:I = 0x6

.field private static final TAG:Ljava/lang/String; = "HuaweiATUtils"

.field private static final mAtCmdError:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    const-string v1, "+CMS ERROR:"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    const-string v1, "+CME ERROR:"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    const-string v1, "NO CARRIER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    const-string v1, "NO ANSWER"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils;->mAtCmdError:Ljava/util/ArrayList;

    const-string v1, "NO DIALTONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForDigit(Ljava/lang/String;)Z
    .locals 2
    .parameter "digitString"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findCommasNum(Ljava/lang/String;)I
    .locals 2
    .parameter "input"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCmeError(Ljava/lang/String;)Lcom/huawei/atcommand/HuaweiATUtils$ATCmdCmeErrorType;
    .locals 2
    .parameter "cmeError"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSplitedString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "rawdString"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isStartWithAtCmdError(Ljava/lang/String;)Z
    .locals 2
    .parameter "error"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isStartWithAtCmeError(Ljava/lang/String;)Z
    .locals 2
    .parameter "error"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "rawString"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
