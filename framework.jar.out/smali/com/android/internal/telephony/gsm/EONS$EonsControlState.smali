.class public final enum Lcom/android/internal/telephony/gsm/EONS$EonsControlState;
.super Ljava/lang/Enum;
.source "EONS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/EONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EonsControlState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/EONS$EonsControlState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

.field public static final enum ABSENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

.field public static final enum INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

.field public static final enum PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    const-string v1, "INITING"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    const-string v1, "PRESENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    sget-object v1, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->$VALUES:[Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/EONS$EonsControlState;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/EONS$EonsControlState;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->$VALUES:[Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    return-object v0
.end method


# virtual methods
.method public isAbsent()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIniting()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
