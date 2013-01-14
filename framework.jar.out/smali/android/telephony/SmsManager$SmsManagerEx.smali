.class Landroid/telephony/SmsManager$SmsManagerEx;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsManagerEx"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SmsManager;


# direct methods
.method private constructor <init>(Landroid/telephony/SmsManager;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Landroid/telephony/SmsManager$SmsManagerEx;->this$0:Landroid/telephony/SmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 844
    invoke-direct {p0, p1}, Landroid/telephony/SmsManager$SmsManagerEx;-><init>(Landroid/telephony/SmsManager;)V

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/SmsManager$SmsManagerEx;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 844
    invoke-direct {p0}, Landroid/telephony/SmsManager$SmsManagerEx;->getNewbyte()[B

    move-result-object v0

    return-object v0
.end method

.method private getNewbyte()[B
    .locals 2

    .prologue
    .line 846
    const/4 v0, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 847
    const/16 v0, 0xfe

    new-array v0, v0, [B

    .line 849
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xaf

    new-array v0, v0, [B

    goto :goto_0
.end method
