.class public final enum Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;
.super Ljava/lang/Enum;
.source "IccCardStatusEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/internal/telephony/uicc/IccCardStatusEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

.field public static final enum CARDSTATE_ABSENT:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

.field public static final enum CARDSTATE_ERROR:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

.field public static final enum CARDSTATE_PRESENT:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    const-string v1, "CARDSTATE_ABSENT"

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->CARDSTATE_ABSENT:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    .line 33
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    const-string v1, "CARDSTATE_PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->CARDSTATE_PRESENT:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    .line 34
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    const-string v1, "CARDSTATE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->CARDSTATE_ERROR:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->CARDSTATE_ABSENT:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->CARDSTATE_PRESENT:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->CARDSTATE_ERROR:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->$VALUES:[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->$VALUES:[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    invoke-virtual {v0}, [Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$CardState;

    return-object v0
.end method
