.class public Landroid/telephony/GsmEmergencyMessage;
.super Ljava/lang/Object;
.source "GsmEmergencyMessage.java"

# interfaces
.implements Landroid/telephony/EmergencyMessage;


# static fields
.field public static final CMAS_AMBER:I = 0x111b

.field public static final CMAS_EXTREME_EXPECTED_LIKELY:I = 0x1116

.field public static final CMAS_EXTREME_EXPECTED_OBSERVED:I = 0x1115

.field public static final CMAS_EXTREME_IMMEDIATE_LIKELY:I = 0x1114

.field public static final CMAS_EXTREME_IMMEDIATE_OBSERVED:I = 0x1113

.field public static final CMAS_PRESIDENTIAL:I = 0x1112

.field public static final CMAS_SEVERE_EXPECTED_LIKELY:I = 0x111a

.field public static final CMAS_SEVERE_EXPECTED_OBSERVED:I = 0x1119

.field public static final CMAS_SEVERE_IMMEDIATE_LIKELY:I = 0x1118

.field public static final CMAS_SEVERE_IMMEDIATE_OBSERVED:I = 0x1117

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/GsmEmergencyMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETWS_EARTHQUAKE:I = 0x1100

.field public static final ETWS_EARTHQUAKE_AND_TSUNAMI:I = 0x1102

.field public static final ETWS_TSUNAMI:I = 0x1101

.field public static final MESSAGE_IDS:[[I


# instance fields
.field private mBody:Ljava/lang/String;

.field private mLanguageCode:Ljava/lang/String;

.field private mMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v5, [I

    const/16 v2, 0x1112

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const/16 v3, 0x111b

    aput v3, v2, v4

    aput-object v2, v0, v1

    new-array v1, v5, [I

    const/16 v2, 0x1100

    aput v2, v1, v4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v5, [I

    const/16 v3, 0x1101

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    const/16 v3, 0x1102

    aput v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/GsmEmergencyMessage;->MESSAGE_IDS:[[I

    new-instance v0, Landroid/telephony/GsmEmergencyMessage$1;

    invoke-direct {v0}, Landroid/telephony/GsmEmergencyMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/GsmEmergencyMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 0x4
        0x13t 0x11t 0x0t 0x0t
        0x14t 0x11t 0x0t 0x0t
        0x15t 0x11t 0x0t 0x0t
        0x16t 0x11t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x17t 0x11t 0x0t 0x0t
        0x18t 0x11t 0x0t 0x0t
        0x19t 0x11t 0x0t 0x0t
        0x1at 0x11t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GsmEmergencyMessage Uninitialized"

    iput-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GsmEmergencyMessage Uninitialized"

    iput-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/telephony/GsmEmergencyMessage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/GsmEmergencyMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/GsmEmergencyMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createFromSmsCbMessage(Landroid/telephony/SmsCbMessage;)Landroid/telephony/GsmEmergencyMessage;
    .locals 3
    .parameter "src"

    .prologue
    new-instance v0, Landroid/telephony/GsmEmergencyMessage;

    invoke-direct {v0}, Landroid/telephony/GsmEmergencyMessage;-><init>()V

    .local v0, message:Landroid/telephony/GsmEmergencyMessage;
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "ETWS Primary message"

    iput-object v1, v0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v1

    iput v1, v0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/GsmEmergencyMessage;->mLanguageCode:Ljava/lang/String;

    return-object v0

    :pswitch_0
    const-string v1, "EARTHQUAKE"

    iput-object v1, v0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v1, "TSUNAMI"

    iput-object v1, v0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v1, "EARTHQUAKE and TSUNAMI"

    iput-object v1, v0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getMessageIds(Landroid/telephony/EmergencyMessage$Alerts;)[I
    .locals 2
    .parameter "alertType"

    .prologue
    sget-object v0, Landroid/telephony/GsmEmergencyMessage;->MESSAGE_IDS:[[I

    invoke-virtual {p0}, Landroid/telephony/EmergencyMessage$Alerts;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mLanguageCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCertainty()Landroid/telephony/EmergencyMessage$Certainty;
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->UNDEFINED:Landroid/telephony/EmergencyMessage$Certainty;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    return v0
.end method

.method public getSeverity()Landroid/telephony/EmergencyMessage$Severity;
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/telephony/EmergencyMessage$Severity;->UNDEFINED:Landroid/telephony/EmergencyMessage$Severity;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/telephony/EmergencyMessage$Severity;->EXTREME:Landroid/telephony/EmergencyMessage$Severity;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/telephony/EmergencyMessage$Severity;->SEVERE:Landroid/telephony/EmergencyMessage$Severity;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getUrgency()Landroid/telephony/EmergencyMessage$Urgency;
    .locals 1

    .prologue
    iget v0, p0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->UNDEFINED:Landroid/telephony/EmergencyMessage$Urgency;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1113
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaEmergencyMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/GsmEmergencyMessage;->mMessageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/GsmEmergencyMessage;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
