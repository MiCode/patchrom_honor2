.class public Lcom/android/internal/telephony/VirtualNet;
.super Ljava/lang/Object;
.source "VirtualNet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

.field private static specialFilesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/internal/telephony/VirtualNet$SpecialFile;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private apnFilter:Ljava/lang/String;

.field private numMatch:I

.field private numMatchShort:I

.field private numeric:Ljava/lang/String;

.field private operatorName:Ljava/lang/String;

.field private sms7BitEnabled:I

.field private smsCodingNational:I

.field private voicemailNumber:Ljava/lang/String;

.field private voicemailTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .parameter "tmpNumeric"
    .parameter "tmpApnFilter"
    .parameter "tmpVoicemalNumber"
    .parameter "tmpVoicemalTag"
    .parameter "tmpNumMatch"
    .parameter "tmpNumMatchShort"
    .parameter "tmpSms7BitEnabled"
    .parameter "tmpSmsCodingNational"
    .parameter "tmpOperatorName"

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/VirtualNet;->numeric:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lcom/android/internal/telephony/VirtualNet;->apnFilter:Ljava/lang/String;

    .line 313
    iput-object p3, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailNumber:Ljava/lang/String;

    .line 314
    iput-object p4, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailTag:Ljava/lang/String;

    .line 315
    iput p5, p0, Lcom/android/internal/telephony/VirtualNet;->numMatch:I

    .line 316
    iput p6, p0, Lcom/android/internal/telephony/VirtualNet;->numMatchShort:I

    .line 317
    iput p7, p0, Lcom/android/internal/telephony/VirtualNet;->sms7BitEnabled:I

    .line 318
    iput p8, p0, Lcom/android/internal/telephony/VirtualNet;->smsCodingNational:I

    .line 319
    iput-object p9, p0, Lcom/android/internal/telephony/VirtualNet;->operatorName:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public static addSpecialFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .parameter "filePath"
    .parameter "fileId"
    .parameter "bytes"

    .prologue
    .line 56
    new-instance v0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    sget-object v1, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private static createVirtualNet(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 284
    invoke-static {p0}, Lcom/android/internal/telephony/VirtualNet;->getVirtualNet(Landroid/database/Cursor;)Lcom/android/internal/telephony/VirtualNet;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    .line 285
    return-void
.end method

.method public static getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    return-object v0
.end method

.method private static getVirtualNet(Landroid/database/Cursor;)Lcom/android/internal/telephony/VirtualNet;
    .locals 11
    .parameter "cursor"

    .prologue
    .line 288
    if-nez p0, :cond_1

    .line 289
    const/4 v0, 0x0

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 290
    :cond_1
    const-string/jumbo v10, "numeric"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, tmpNumeric:Ljava/lang/String;
    const-string v10, "apn_filter"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, tmpApnFilter:Ljava/lang/String;
    const-string/jumbo v10, "voicemail_number"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, tmpVoicemalNumber:Ljava/lang/String;
    const-string/jumbo v10, "voicemail_tag"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, tmpVoicemalTag:Ljava/lang/String;
    const-string/jumbo v10, "num_match"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 295
    .local v5, tmpNumMatch:I
    const-string/jumbo v10, "num_match_short"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 296
    .local v6, tmpNumMatchShort:I
    const-string/jumbo v10, "sms_7bit_enabled"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 297
    .local v7, tmpSms7BitEnabled:I
    const-string/jumbo v10, "sms_coding_national"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 298
    .local v8, tmpSmsCodingNational:I
    const-string/jumbo v10, "ons_name"

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, tmpOperatorName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 300
    .local v0, virtualNet:Lcom/android/internal/telephony/VirtualNet;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 301
    new-instance v0, Lcom/android/internal/telephony/VirtualNet;

    .end local v0           #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/VirtualNet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .restart local v0       #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    goto :goto_0
.end method

.method private static isEmptySimFile([B)Z
    .locals 6
    .parameter "gid1"

    .prologue
    .line 264
    const/4 v3, 0x1

    .line 265
    .local v3, isEmptyFile:Z
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-byte v1, v0, v2

    .line 266
    .local v1, gid1Byte:B
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 267
    const/4 v3, 0x0

    .line 265
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1           #gid1Byte:B
    :cond_1
    return v3
.end method

.method private static isGid1VirtualNet([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "gid1"
    .parameter "gid1Value"
    .parameter "gidMask"

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGid1VirtualNet gid1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gid1Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gidMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 232
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/VirtualNet;->matchByteWithMask([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isImsiVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "imsi"
    .parameter "tmpImsiStart"

    .prologue
    const/4 v0, 0x0

    .line 275
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSpecialFileVirtualNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "matchPath"
    .parameter "matchFile"
    .parameter "matchValue"
    .parameter "matchMask"

    .prologue
    .line 211
    new-instance v1, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v1, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    sget-object v2, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 213
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 214
    const/4 v2, 0x0

    .line 216
    :goto_0
    return v2

    :cond_0
    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/VirtualNet;->matchByteWithMask([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isSpnVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "spn1"
    .parameter "spn2"

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSpnVirtualNet spn1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; spn2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 224
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVirtualNet()Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSpecialFiles(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 12
    .parameter "numeric"
    .parameter "simRecords"

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    const-string/jumbo v3, "numeric = ? AND virtual_net_rule = ?"

    .line 84
    .local v3, selectionClause:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 85
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .line 86
    .local v10, phone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "numeric"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "virtual_net_rule"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "match_path"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "match_file"

    aput-object v1, v2, v0

    .line 93
    .local v2, projection:[Ljava/lang/String;
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$VirtualNets;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 95
    const-string/jumbo v0, "query virtual net db got a null cursor"

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const-string/jumbo v0, "match_path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, matchPath:Ljava/lang/String;
    const-string/jumbo v0, "match_file"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, matchFile:Ljava/lang/String;
    new-instance v11, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    invoke-direct {v11, v9, v8}, Lcom/android/internal/telephony/VirtualNet$SpecialFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v11, specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load specialFile matchPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "matchFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/android/internal/telephony/VirtualNet;->specialFilesMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p1, v9, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->loadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 111
    .end local v8           #matchFile:Ljava/lang/String;
    .end local v9           #matchPath:Ljava/lang/String;
    .end local v11           #specialFile:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    :catch_0
    move-exception v7

    .line 112
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string v0, "loadVirtualNet got Exception"

    invoke-static {v0, v7}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static loadVirtualNet(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 25
    .parameter "numeric"
    .parameter "simRecords"

    .prologue
    .line 120
    const/4 v4, 0x0

    sput-object v4, Lcom/android/internal/telephony/VirtualNet;->mVirtualNet:Lcom/android/internal/telephony/VirtualNet;

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thread = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v13

    .line 123
    .local v13, imsi:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getGID1()[B

    move-result-object v12

    .line 124
    .local v12, gid1:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, spn:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start loadVirtualNet: numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; gid1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v7, "numeric = ?"

    .line 130
    .local v7, selectionClause:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v8, v4

    .line 132
    .local v8, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    .line 133
    .local v14, phone:Lcom/android/internal/telephony/Phone;
    const/16 v4, 0x12

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "numeric"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "virtual_net_rule"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "imsi_start"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "gid1"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "gid_mask"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "spn"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "match_path"

    aput-object v5, v6, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "match_file"

    aput-object v5, v6, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "match_value"

    aput-object v5, v6, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "match_mask"

    aput-object v5, v6, v4

    const/16 v4, 0xa

    const-string v5, "apn_filter"

    aput-object v5, v6, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "voicemail_number"

    aput-object v5, v6, v4

    const/16 v4, 0xc

    const-string/jumbo v5, "voicemail_tag"

    aput-object v5, v6, v4

    const/16 v4, 0xd

    const-string/jumbo v5, "num_match"

    aput-object v5, v6, v4

    const/16 v4, 0xe

    const-string/jumbo v5, "num_match_short"

    aput-object v5, v6, v4

    const/16 v4, 0xf

    const-string/jumbo v5, "sms_7bit_enabled"

    aput-object v5, v6, v4

    const/16 v4, 0x10

    const-string/jumbo v5, "sms_coding_national"

    aput-object v5, v6, v4

    const/16 v4, 0x11

    const-string/jumbo v5, "ons_name"

    aput-object v5, v6, v4

    .line 154
    .local v6, projection:[Ljava/lang/String;
    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$VirtualNets;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 155
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 156
    const-string/jumbo v4, "query virtual net db got a null cursor"

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    const-string/jumbo v4, "virtual_net_rule"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 163
    .local v24, tmpVirtualNetRule:I
    packed-switch v24, :pswitch_data_0

    .line 199
    :cond_1
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    .end local v24           #tmpVirtualNetRule:I
    :catch_0
    move-exception v11

    .line 202
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const-string v4, "loadVirtualNet got Exception"

    invoke-static {v4, v11}, Lcom/android/internal/telephony/VirtualNet;->loge(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    .restart local v24       #tmpVirtualNetRule:I
    :pswitch_0
    :try_start_2
    const-string v4, "imsi_start"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 166
    .local v18, tmpImsiStart:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/android/internal/telephony/VirtualNet;->isImsiVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find imsi virtual net imsiStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 168
    invoke-static {v10}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 205
    .end local v18           #tmpImsiStart:Ljava/lang/String;
    .end local v24           #tmpVirtualNetRule:I
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 172
    .restart local v24       #tmpVirtualNetRule:I
    :pswitch_1
    :try_start_3
    const-string v4, "gid1"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 173
    .local v16, tmpGid1Value:Ljava/lang/String;
    const-string v4, "gid_mask"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 174
    .local v17, tmpGidMask:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v12, v0, v1}, Lcom/android/internal/telephony/VirtualNet;->isGid1VirtualNet([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find gid1 virtual net spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 176
    invoke-static {v10}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;)V

    goto :goto_2

    .line 180
    .end local v16           #tmpGid1Value:Ljava/lang/String;
    .end local v17           #tmpGidMask:Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "spn"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 181
    .local v23, tmpSpn:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-static {v15, v0}, Lcom/android/internal/telephony/VirtualNet;->isSpnVirtualNet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find spn virtual net spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 183
    invoke-static {v10}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;)V

    goto/16 :goto_2

    .line 187
    .end local v23           #tmpSpn:Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v4, "match_path"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 188
    .local v21, tmpMatchPath:Ljava/lang/String;
    const-string/jumbo v4, "match_file"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 189
    .local v19, tmpMatchFile:Ljava/lang/String;
    const-string/jumbo v4, "match_value"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 190
    .local v22, tmpMatchValue:Ljava/lang/String;
    const-string/jumbo v4, "match_mask"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 191
    .local v20, tmpMatchMask:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/VirtualNet;->isSpecialFileVirtualNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find special file virtual net matchValue ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 193
    invoke-static {v10}, Lcom/android/internal/telephony/VirtualNet;->createVirtualNet(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 70
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualNet] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 78
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualNet] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "text"
    .parameter "e"

    .prologue
    .line 74
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VirtualNet] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private static matchByteWithMask([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "data"
    .parameter "value"
    .parameter "mask"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    .line 237
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_0

    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_0

    invoke-virtual {p2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v3

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/VirtualNet;->isEmptySimFile([B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    const-string/jumbo v6, "matchByteWithMask data is null"

    invoke-static {v6}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, valueString:Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, maskString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 250
    .local v4, valueBytes:[B
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 251
    .local v1, maskBytes:[B
    array-length v6, v4

    array-length v7, v1

    if-ne v6, v7, :cond_0

    .line 252
    const/4 v3, 0x1

    .line 253
    .local v3, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 254
    aget-byte v6, p0, v0

    aget-byte v7, v1, v0

    and-int/2addr v6, v7

    aget-byte v7, v4, v0

    if-eq v6, v7, :cond_3

    .line 255
    const/4 v3, 0x0

    .line 253
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getApnFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->apnFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getNumMatch()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->numMatch:I

    return v0
.end method

.method public getNumMatchShort()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->numMatchShort:I

    return v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->numeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->operatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getSms7BitEnabled()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->sms7BitEnabled:I

    return v0
.end method

.method public getSmsCodingNational()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/internal/telephony/VirtualNet;->smsCodingNational:I

    return v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoiceMailNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/VirtualNet;->logd(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicemailTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet;->voicemailTag:Ljava/lang/String;

    return-object v0
.end method
