.class final enum Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;
.super Ljava/lang/Enum;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hardware/fmradio/FmRxEventListner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FmRxEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum ABOVE_TH_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum BELOW_TH_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum ERROR_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum MONO_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum PS_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RAW_RDS_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RDS_AVAL_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RDS_NOT_AVAL_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum READY_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RT_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum SCAN_NEXT_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum SEEK_COMPLETE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum SIGNAL_UPDATE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum STEREO_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum TAVARUA_EVT_NEW_AF_LIST:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum TAVARUA_EVT_NEW_SRCH_LIST:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum TUNE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "READY_EVENT"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->READY_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "TUNE_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->TUNE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "SEEK_COMPLETE_EVENT"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->SEEK_COMPLETE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "SCAN_NEXT_EVENT"

    invoke-direct {v0, v1, v6}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->SCAN_NEXT_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RAW_RDS_EVENT"

    invoke-direct {v0, v1, v7}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RAW_RDS_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RT_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RT_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "PS_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->PS_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "ERROR_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->ERROR_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "BELOW_TH_EVENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->BELOW_TH_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "ABOVE_TH_EVENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->ABOVE_TH_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "STEREO_EVENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->STEREO_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "MONO_EVENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->MONO_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RDS_AVAL_EVENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_AVAL_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RDS_NOT_AVAL_EVENT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_NOT_AVAL_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "TAVARUA_EVT_NEW_SRCH_LIST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_SRCH_LIST:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "TAVARUA_EVT_NEW_AF_LIST"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_AF_LIST:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    new-instance v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "SIGNAL_UPDATE_EVENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->SIGNAL_UPDATE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    sget-object v1, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->READY_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->TUNE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->SEEK_COMPLETE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->SCAN_NEXT_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RAW_RDS_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RT_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->PS_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->ERROR_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->BELOW_TH_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->ABOVE_TH_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->STEREO_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->MONO_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_AVAL_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_NOT_AVAL_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_SRCH_LIST:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_AF_LIST:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->SIGNAL_UPDATE_EVENT:Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->$VALUES:[Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;
    .locals 1

    .prologue
    sget-object v0, Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->$VALUES:[Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    invoke-virtual {v0}, [Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/hardware/fmradio/FmRxEventListner$FmRxEvents;

    return-object v0
.end method
