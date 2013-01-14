.class public Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;
.super Ljava/lang/Object;
.source "GsmNationalAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;,
        Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishLocking:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishSingle:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishLocking:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishSingle:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

.field private static sGsmSpaceChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x2f

    const/16 v9, 0x29

    const/16 v8, 0x28

    const/16 v7, 0xa

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .local v0, i:I
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    const/16 v6, 0x47

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x63

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    const/16 v6, 0x41

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    const/16 v6, 0x9

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    const/16 v6, 0x13

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    const/16 v6, 0x17

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    const/16 v6, 0x41

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    const/16 v6, 0x49

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    const/16 v6, 0x5b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    const/16 v6, 0x5c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    const/16 v6, 0x69

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    const/16 v6, 0x7b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    const/16 v6, 0x7c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    const/16 v6, 0x7f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xaa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x221e

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x1b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xba

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v11, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x1da

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0x60

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_7

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToGsmDefault(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 2
    .parameter "c"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmDefault(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    goto :goto_0
.end method

.method public static charToGsmDefault(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 4
    .parameter "c"
    .parameter "throwException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, ret:I
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-ne v0, v3, :cond_5

    if-eqz p1, :cond_4

    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v3, v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    return v1

    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v3, v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :pswitch_8
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v3, v0, :cond_2

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    :pswitch_9
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_b
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :pswitch_c
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v3, v0, :cond_3

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    :pswitch_d
    const/4 v0, -0x1

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    sget v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x1b

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public static charToGsmExtend(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 4
    .parameter "c"
    .parameter "extend"

    .prologue
    const/4 v3, -0x1

    const/4 v0, -0x1

    .local v0, ret:I
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    if-ne v0, v3, :cond_0

    sget v0, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->sGsmSpaceChar:I

    .end local v0           #ret:I
    :cond_0
    return v0

    .restart local v0       #ret:I
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static countGsmSeptets(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 5
    .parameter "c"
    .parameter "throwsException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v4, -0x1

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmTurkishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    :pswitch_9
    goto :goto_0

    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto :goto_1

    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmSpanishSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto/16 :goto_1

    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseLocking:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    :pswitch_d
    goto/16 :goto_0

    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto/16 :goto_1

    :pswitch_f
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmPortugueseSingle:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 3
    .parameter "s"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .local v2, sz:I
    const/4 v1, 0x0

    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p3, p4}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, p2, :cond_0

    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static findLimitIndex(Ljava/lang/String;IIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "limit"
    .parameter "encodingType"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    :cond_0
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->findUCS2LimitIndex(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findUCS2LimitIndex(Ljava/lang/String;II)I
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p1

    .local v0, numCharToBeEncoded:I
    mul-int/lit8 v1, v0, 0x2

    if-le v1, p2, :cond_0

    div-int/lit8 v0, p2, 0x2

    .end local v0           #numCharToBeEncoded:I
    :cond_0
    add-int v1, v0, p1

    return v1
.end method

.method public static gsm7BitPackedToString([BIIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;
    .locals 10
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "base"
    .parameter "extend"

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_3

    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .local v3, gsmVal:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    const/16 v8, 0x7f

    add-int/lit8 v9, v7, -0x1

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {v3, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, p4}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v2

    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public static gsm7BitPackedToString([BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;
    .locals 6
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsm7BitPackedToString([BIIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "base"
    .parameter "extend"

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1

    .end local v0           #c:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .restart local v0       #c:I
    :cond_1
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_3

    if-eqz v2, :cond_2

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v0, p4}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v0, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static gsmToChar(ILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)C
    .locals 4
    .parameter "gsmChar"
    .parameter "table"

    .prologue
    const/16 v3, 0x20

    const/16 v0, 0x20

    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$1;->$SwitchMap$com$android$internal$telephony$gsm$GsmNationalAlphabet$Encodetable:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishSingleToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmTurkishLockingToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishSingleToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmSpanishLockingToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseSingleToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->gsmPortugueseLockingToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    div-int/lit8 v0, p1, 0x8

    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    :cond_0
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IIIZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 13
    .parameter "data"
    .parameter "dataOffset"
    .parameter "maxSeptets"
    .parameter "startingBitOffset"
    .parameter "throwException"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .local v9, sz:I
    const/4 v11, -0x1

    if-ne p2, v11, :cond_0

    const/4 v11, 0x1

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {p0, v11, v0, v1}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v7

    .local v7, septetCount:I
    :goto_0
    const/16 v11, 0xff

    if-le v7, v11, :cond_1

    new-instance v11, Lcom/android/internal/telephony/EncodeException;

    const-string v12, "Payload cannot exceed 32767 septets"

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v11

    .end local v7           #septetCount:I
    :cond_0
    move v7, p2

    .restart local v7       #septetCount:I
    goto :goto_0

    :cond_1
    mul-int/lit8 v11, v7, 0x7

    add-int/lit8 v11, v11, 0x7

    div-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x1

    new-array v6, v11, [B

    .local v6, ret:[B
    move/from16 v3, p3

    .local v3, bitOffset:I
    div-int/lit8 v8, p3, 0x7

    .local v8, septets:I
    move v5, p1

    .local v5, i:I
    :goto_1
    if-ge v5, v9, :cond_3

    if-ge v8, v7, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, c:C
    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmDefault(CZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v10

    .local v10, v:I
    const/16 v11, 0x1b

    if-ne v10, v11, :cond_2

    move-object/from16 v0, p6

    invoke-static {v4, v0}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtend(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v10

    const/16 v11, 0x1b

    invoke-static {v6, v3, v11}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->packSmsChar([BII)V

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v8, v8, 0x1

    :cond_2
    invoke-static {v6, v3, v10}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->packSmsChar([BII)V

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    .end local v4           #c:C
    .end local v10           #v:I
    :cond_3
    const/4 v11, 0x0

    int-to-byte v12, v8

    aput-byte v12, v6, v11

    return-object v6
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 7
    .parameter "data"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v3, v1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 11
    .parameter "data"
    .parameter "header"
    .parameter "base"
    .parameter "extend"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v9

    :goto_0
    return-object v9

    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v7, v0, 0x8

    .local v7, headerBits:I
    div-int/lit8 v8, v7, 0x7

    .local v8, headerSeptets:I
    rem-int/lit8 v0, v7, 0x7

    if-lez v0, :cond_2

    move v0, v4

    :goto_1
    add-int/2addr v8, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .local v10, sz:I
    invoke-static {p0, v4, p2, p3}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v0

    add-int v2, v0, v8

    .local v2, septetCount:I
    mul-int/lit8 v3, v8, 0x7

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B

    move-result-object v9

    .local v9, ret:[B
    array-length v0, p1

    int-to-byte v0, v0

    aput-byte v0, v9, v4

    const/4 v0, 0x2

    array-length v3, p1

    invoke-static {p1, v1, v9, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v2           #septetCount:I
    .end local v9           #ret:[B
    .end local v10           #sz:I
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)[B
    .locals 7
    .parameter "s"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/4 v6, 0x0

    .local v6, septets:I
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v6

    new-array v1, v6, [B

    .local v1, ret:[B
    const/4 v2, 0x0

    array-length v3, v1

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)V

    return-object v1
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BIILcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)V
    .locals 8
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"
    .parameter "base"
    .parameter "extend"

    .prologue
    const/16 v7, 0x1b

    move v2, p2

    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_0
    if-ge v1, v4, :cond_0

    sub-int v6, v3, p2

    if-ge v6, p3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0, p4, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmDefault(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;Lcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v5

    .local v5, v:I
    if-ne v5, v7, :cond_3

    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p2

    if-lt v6, p3, :cond_1

    .end local v0           #c:C
    .end local v5           #v:I
    :cond_0
    :goto_1
    sub-int v6, v3, p2

    if-ge v6, p3, :cond_2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p1, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p1, v3

    invoke-static {v0, p5}, Lcom/android/internal/telephony/gsm/GsmNationalAlphabet;->charToGsmExtend(CLcom/android/internal/telephony/gsm/GsmNationalAlphabet$Encodetable;)I

    move-result v5

    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #c:C
    .end local v5           #v:I
    :cond_2
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_2
.end method
