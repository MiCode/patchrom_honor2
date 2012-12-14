.class public Lcom/huawei/atcommand/HuaweiATCmds;
.super Ljava/lang/Object;
.source "HuaweiATCmds.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiATCmds"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static huaweiATResponse(ILcom/huawei/atcommand/HuaweiATUtils$ATCmdType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "atCmdId"
    .parameter "atCmdType"
    .parameter "atCmdValue"

    .prologue
    .line 30
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
