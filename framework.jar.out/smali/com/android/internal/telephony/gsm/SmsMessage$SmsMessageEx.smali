.class Lcom/android/internal/telephony/gsm/SmsMessage$SmsMessageEx;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsMessageEx"
.end annotation


# static fields
.field public static final SMS_GW_VP_ABSOLUTE_FORMAT:I = 0x18

.field public static final SMS_GW_VP_ENHANCED_FORMAT:I = 0x8

.field public static final SMS_GW_VP_RELATIVE_FORMAT:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SmsMessage;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SmsMessage;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$SmsMessageEx;->this$0:Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SmsMessage;Lcom/android/internal/telephony/gsm/SmsMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$SmsMessageEx;-><init>(Lcom/android/internal/telephony/gsm/SmsMessage;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SmsMessage$SmsMessageEx;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$SmsMessageEx;->getValidityPeriod(I)I

    move-result v0

    return v0
.end method

.method private getValidityPeriod(I)I
    .locals 3
    .parameter "firstByte"

    .prologue
    and-int/lit8 v0, p1, 0x18

    .local v0, ValidityPeriod:I
    sparse-switch v0, :sswitch_data_0

    const-string v1, "PduParser"

    const-string v2, "unsupported validity format."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x7

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
        0x18 -> :sswitch_1
    .end sparse-switch
.end method
