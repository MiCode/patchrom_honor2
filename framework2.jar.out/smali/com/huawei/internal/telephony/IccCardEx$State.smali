.class public final enum Lcom/huawei/internal/telephony/IccCardEx$State;
.super Ljava/lang/Enum;
.source "IccCardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/internal/telephony/IccCardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/internal/telephony/IccCardEx$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum ABSENT:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum CARD_IO_ERROR:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum DEACTIVED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum NETWORK_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum NOT_READY:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum PERM_DISABLED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum PERSO_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum PIN_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum PUK_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum READY:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum RUIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum RUIM_HRPD_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum RUIM_NETWORK1_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum RUIM_NETWORK2_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum RUIM_RUIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum RUIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_CORPORATE_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_NETWORK_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum SIM_SIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

.field public static final enum UNKNOWN:Lcom/huawei/internal/telephony/IccCardEx$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "PERSO_LOCKED"

    invoke-direct {v0, v1, v3}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PERSO_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 37
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "CARD_IO_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->CARD_IO_ERROR:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 38
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "DEACTIVED"

    invoke-direct {v0, v1, v5}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->DEACTIVED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 39
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-direct {v0, v1, v6}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 40
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_CORPORATE_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 41
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 42
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_SIM_LOCKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 43
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "RUIM_NETWORK1_LOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_NETWORK1_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 44
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "RUIM_NETWORK2_LOCKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_NETWORK2_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 45
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "RUIM_HRPD_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_HRPD_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 46
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "RUIM_CORPORATE_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 47
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 48
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "RUIM_RUIM_LOCKED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_RUIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 49
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_NETWORK_LOCKED_PUK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 50
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED_PUK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 51
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_CORPORATE_LOCKED_PUK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 53
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED_PUK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 54
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->UNKNOWN:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 55
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "ABSENT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->ABSENT:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 56
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "PIN_REQUIRED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PIN_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 57
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "PUK_REQUIRED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PUK_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 58
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "NETWORK_LOCKED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->NETWORK_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 59
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "READY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->READY:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 60
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "NOT_READY"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->NOT_READY:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 61
    new-instance v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    const-string v1, "PERM_DISABLED"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/IccCardEx$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->PERM_DISABLED:Lcom/huawei/internal/telephony/IccCardEx$State;

    .line 35
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/huawei/internal/telephony/IccCardEx$State;

    sget-object v1, Lcom/huawei/internal/telephony/IccCardEx$State;->PERSO_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/internal/telephony/IccCardEx$State;->CARD_IO_ERROR:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/internal/telephony/IccCardEx$State;->DEACTIVED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_NETWORK1_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_NETWORK2_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_HRPD_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_CORPORATE_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->RUIM_RUIM_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->UNKNOWN:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->ABSENT:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->PIN_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->PUK_REQUIRED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->NETWORK_LOCKED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->READY:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->NOT_READY:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/huawei/internal/telephony/IccCardEx$State;->PERM_DISABLED:Lcom/huawei/internal/telephony/IccCardEx$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->$VALUES:[Lcom/huawei/internal/telephony/IccCardEx$State;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isPukLocked(Lcom/android/internal/telephony/IccCard$State;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 64
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/internal/telephony/IccCardEx$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/internal/telephony/IccCardEx$State;

    return-object v0
.end method

.method public static values()[Lcom/huawei/internal/telephony/IccCardEx$State;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/huawei/internal/telephony/IccCardEx$State;->$VALUES:[Lcom/huawei/internal/telephony/IccCardEx$State;

    invoke-virtual {v0}, [Lcom/huawei/internal/telephony/IccCardEx$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/internal/telephony/IccCardEx$State;

    return-object v0
.end method
