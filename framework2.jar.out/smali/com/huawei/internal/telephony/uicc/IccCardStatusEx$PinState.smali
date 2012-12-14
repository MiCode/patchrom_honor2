.class public final enum Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;
.super Ljava/lang/Enum;
.source "IccCardStatusEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/internal/telephony/uicc/IccCardStatusEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PinState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

.field public static final enum PINSTATE_DISABLED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

.field public static final enum PINSTATE_ENABLED_BLOCKED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

.field public static final enum PINSTATE_ENABLED_NOT_VERIFIED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

.field public static final enum PINSTATE_ENABLED_PERM_BLOCKED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

.field public static final enum PINSTATE_ENABLED_VERIFIED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

.field public static final enum PINSTATE_UNKNOWN:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    const-string v1, "PINSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_UNKNOWN:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    .line 40
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    const-string v1, "PINSTATE_ENABLED_NOT_VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    .line 41
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    const-string v1, "PINSTATE_ENABLED_VERIFIED"

    invoke-direct {v0, v1, v5}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    .line 42
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    const-string v1, "PINSTATE_DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_DISABLED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    .line 43
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    const-string v1, "PINSTATE_ENABLED_BLOCKED"

    invoke-direct {v0, v1, v7}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    .line 44
    new-instance v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    const-string v1, "PINSTATE_ENABLED_PERM_BLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_UNKNOWN:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_DISABLED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->$VALUES:[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    return-object v0
.end method

.method public static values()[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->$VALUES:[Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    invoke-virtual {v0}, [Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/internal/telephony/uicc/IccCardStatusEx$PinState;

    return-object v0
.end method
