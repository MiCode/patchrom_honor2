.class Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccSmsInterfaceManagerEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/IccSmsInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;->getNewbyte()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;->getRecordLength()I

    move-result v0

    return v0
.end method

.method private getNewbyte()[B
    .locals 2

    .prologue
    .line 926
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 927
    const/16 v0, 0xff

    new-array v0, v0, [B

    .line 929
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xb0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private getRecordLength()I
    .locals 2

    .prologue
    .line 934
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$IccSmsInterfaceManagerEx;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 935
    const/16 v0, 0xff

    .line 937
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb0

    goto :goto_0
.end method
