.class public final enum Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
.super Ljava/lang/Enum;
.source "HuaweiATUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/atcommand/HuaweiATUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ATCmdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_ACTION:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_NONE:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_READ:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_SET:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

.field public static final enum AT_CMD_TEST:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;


# instance fields
.field private mCmdType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_NONE:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    .line 41
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_ACTION"

    invoke-direct {v0, v1, v4, v3}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_ACTION:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    .line 42
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_SET"

    invoke-direct {v0, v1, v5, v4}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_SET:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    .line 43
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_READ"

    invoke-direct {v0, v1, v6, v5}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_READ:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    .line 44
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    const-string v1, "AT_CMD_TEST"

    invoke-direct {v0, v1, v7, v6}, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_TEST:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_NONE:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_ACTION:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_SET:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_READ:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->AT_CMD_TEST:Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->$VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromInt(I)Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    .locals 2
    .parameter "type"

    .prologue
    .line 57
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->$VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    invoke-virtual {v0}, [Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/atcommand/HuaweiATUtils$ATCmdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
