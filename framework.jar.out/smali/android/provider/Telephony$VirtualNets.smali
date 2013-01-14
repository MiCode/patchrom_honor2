.class public final Landroid/provider/Telephony$VirtualNets;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualNets"
.end annotation


# static fields
.field public static final APN_FILTER:Ljava/lang/String; = "apn_filter"

.field public static final CARRIER:Ljava/lang/String; = "carrier"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final GID1:Ljava/lang/String; = "gid1"

.field public static final GID_MASK:Ljava/lang/String; = "gid_mask"

.field public static final IMSI_START:Ljava/lang/String; = "imsi_start"

.field public static final MATCH_FILE:Ljava/lang/String; = "match_file"

.field public static final MATCH_MASK:Ljava/lang/String; = "match_mask"

.field public static final MATCH_PATH:Ljava/lang/String; = "match_path"

.field public static final MATCH_VALUE:Ljava/lang/String; = "match_value"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final NUM_MATCH:Ljava/lang/String; = "num_match"

.field public static final NUM_MATCH_SHORT:Ljava/lang/String; = "num_match_short"

.field public static final ONS_NAME:Ljava/lang/String; = "ons_name"

.field public static final RULE_GID1:I = 0x2

.field public static final RULE_IMSI:I = 0x1

.field public static final RULE_MATCH_FILE:I = 0x4

.field public static final RULE_NONE:I = 0x0

.field public static final RULE_SPN:I = 0x3

.field public static final SMS_7BIT_ENABLED:Ljava/lang/String; = "sms_7bit_enabled"

.field public static final SMS_CODING_NATIONAL:Ljava/lang/String; = "sms_coding_national"

.field public static final SPN:Ljava/lang/String; = "spn"

.field public static final VIRTUAL_NET_RULE:Ljava/lang/String; = "virtual_net_rule"

.field public static final VOICEMAIL_NUMBER:Ljava/lang/String; = "voicemail_number"

.field public static final VOICEMAIL_TAG:Ljava/lang/String; = "voicemail_tag"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2421
    const-string v0, "content://telephony/virtualNets"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$VirtualNets;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
