.class final enum Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;
.super Ljava/lang/Enum;
.source "HWNetSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/HWNetSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DSDSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

.field public static final enum CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

.field public static final enum TDSCDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

.field public static final enum UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    const-string v1, "CDMA_GSM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    const-string v1, "UMTS_GSM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    const-string v1, "TDSCDMA_GSM"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->TDSCDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    sget-object v1, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->CDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UMTS_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->TDSCDMA_GSM:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->UNKNOWN:Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->$VALUES:[Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->$VALUES:[Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/msim/HWNetSelect$DSDSType;

    return-object v0
.end method
