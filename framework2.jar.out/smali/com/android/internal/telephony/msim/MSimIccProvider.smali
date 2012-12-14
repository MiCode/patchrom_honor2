.class public Lcom/android/internal/telephony/msim/MSimIccProvider;
.super Lcom/android/internal/telephony/IccProvider;
.source "MSimIccProvider.java"


# static fields
.field private static final ADN_SUB1:I = 0x1

.field private static final ADN_SUB2:I = 0x2

.field private static final DBG:Z = false

.field private static final FDN_SUB1:I = 0x3

.field private static final FDN_SUB2:I = 0x4

.field private static final SDN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MSimIccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 58
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "adn"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "adn_sub2"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "fdn"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "fdn_sub2"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "iccmsim"

    const-string v2, "sdn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 534
    const/4 v8, 0x0

    .line 542
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 544
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    .line 545
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 554
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v8

    .line 550
    :catch_0
    move-exception v1

    goto :goto_0

    .line 548
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 588
    const/4 v8, 0x0

    .line 591
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 593
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    .line 594
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 603
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v8

    .line 599
    :catch_0
    move-exception v1

    goto :goto_0

    .line 597
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(II[Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "efType"
    .parameter "index"
    .parameter "emails"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 653
    const/4 v7, 0x0

    .line 657
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 659
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    .line 660
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move v4, p2

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfByIndexOnSubscription(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 669
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v7

    .line 665
    :catch_0
    move-exception v1

    goto :goto_0

    .line 663
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 564
    const/4 v8, 0x0

    .line 567
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 569
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 570
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 579
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v8

    .line 575
    :catch_0
    move-exception v1

    goto :goto_0

    .line 573
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .parameter "efType"
    .parameter "index"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"
    .parameter "subscription"

    .prologue
    .line 622
    const/4 v7, 0x0

    .line 625
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v0

    .line 627
    .local v0, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    move v6, p6

    .line 628
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->updateAdnRecordsInEfByIndexOnSubscription(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 637
    .end local v0           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    return v7

    .line 633
    :catch_0
    move-exception v1

    goto :goto_0

    .line 631
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 270
    const/4 v8, 0x0

    .line 274
    .local v8, subscription:I
    sget-object v2, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 275
    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    .line 287
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 292
    .local v3, efType:I
    :goto_0
    const/4 v4, 0x0

    .line 293
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 294
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 295
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 297
    .local v7, pin2:Ljava/lang/String;
    const/16 v20, 0x0

    .line 298
    .local v20, sEfid:Ljava/lang/String;
    const/16 v21, 0x0

    .line 299
    .local v21, sIndex:Ljava/lang/String;
    const/4 v11, 0x0

    .line 300
    .local v11, index:I
    const/16 v22, 0x0

    .line 303
    .local v22, success:Z
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 304
    .local v23, tokens:[Ljava/lang/String;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v17, v0

    .line 306
    .local v17, n:I
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_7

    .line 307
    aget-object v19, v23, v17

    .line 310
    .local v19, param:Ljava/lang/String;
    const-string v2, "="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 312
    .local v18, pair:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v2, v0

    const/4 v9, 0x2

    if-eq v2, v9, :cond_1

    .line 313
    const-string v2, "MSimIccProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resolve: bad whereClause parameter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v11           #index:I
    .end local v17           #n:I
    .end local v18           #pair:[Ljava/lang/String;
    .end local v19           #param:Ljava/lang/String;
    .end local v20           #sEfid:Ljava/lang/String;
    .end local v21           #sIndex:Ljava/lang/String;
    .end local v22           #success:Z
    .end local v23           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 284
    .restart local v3       #efType:I
    goto :goto_0

    .line 317
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v17       #n:I
    .restart local v18       #pair:[Ljava/lang/String;
    .restart local v19       #param:Ljava/lang/String;
    .restart local v20       #sEfid:Ljava/lang/String;
    .restart local v21       #sIndex:Ljava/lang/String;
    .restart local v22       #success:Z
    .restart local v23       #tokens:[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 318
    .local v15, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 320
    .local v24, val:Ljava/lang/String;
    const-string v2, "tag"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 322
    :cond_2
    const-string v2, "number"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 324
    :cond_3
    const-string v2, "emails"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    const/4 v6, 0x0

    goto :goto_1

    .line 327
    :cond_4
    const-string v2, "pin2"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 330
    :cond_5
    const-string v2, "efid"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 332
    :cond_6
    const-string v2, "index"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 343
    .end local v15           #key:Ljava/lang/String;
    .end local v18           #pair:[Ljava/lang/String;
    .end local v19           #param:Ljava/lang/String;
    .end local v24           #val:Ljava/lang/String;
    :cond_7
    const/4 v2, 0x3

    if-eq v3, v2, :cond_8

    const/4 v2, 0x4

    if-ne v3, v2, :cond_9

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 344
    const/4 v2, 0x0

    .line 376
    :goto_2
    return v2

    .line 348
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v2, v0, :cond_a

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v2, v0, :cond_f

    .line 349
    :cond_a
    const/4 v8, 0x0

    .line 354
    :cond_b
    :goto_3
    if-eqz v20, :cond_c

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    if-eqz v21, :cond_d

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_d
    move-object/from16 v2, p0

    .line 357
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/msim/MSimIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    .line 372
    :cond_e
    :goto_4
    if-nez v22, :cond_12

    .line 373
    const/4 v2, 0x0

    goto :goto_2

    .line 350
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, v16

    if-eq v2, v0, :cond_10

    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v2, v0, :cond_b

    .line 351
    :cond_10
    const/4 v8, 0x1

    goto :goto_3

    .line 359
    :cond_11
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 360
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 361
    if-lez v11, :cond_e

    move-object/from16 v9, p0

    move v10, v3

    move-object v12, v6

    move-object v13, v7

    move v14, v8

    .line 363
    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/msim/MSimIccProvider;->deleteIccRecordFromEfByIndex(II[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v22

    goto :goto_4

    .line 376
    :cond_12
    const/4 v2, 0x1

    goto :goto_2

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 159
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 176
    const/4 v5, 0x0

    .line 177
    .local v5, pin2:Ljava/lang/String;
    const/4 v6, 0x0

    .line 181
    .local v6, subscription:I
    sget-object v0, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 182
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot insert into URL: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_0
    const/16 v1, 0x6f3a

    .line 200
    .local v1, efType:I
    :goto_0
    const-string v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, tag:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 203
    const-string v2, ""

    .line 205
    :cond_0
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, number:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 207
    const-string v3, ""

    .line 214
    :cond_1
    const/4 v0, 0x1

    if-eq v0, v8, :cond_2

    const/4 v0, 0x3

    if-ne v0, v8, :cond_4

    .line 215
    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_1
    move-object v0, p0

    .line 220
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/msim/MSimIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    .line 222
    .local v10, success:Z
    if-nez v10, :cond_6

    .line 264
    :goto_2
    return-object v4

    .line 190
    .end local v1           #efType:I
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    .end local v10           #success:Z
    :pswitch_1
    const/16 v1, 0x6f3b

    .line 191
    .restart local v1       #efType:I
    const-string v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    const-string v0, "subscription"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 193
    goto :goto_0

    .line 216
    .restart local v2       #tag:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x2

    if-eq v0, v8, :cond_5

    const/4 v0, 0x4

    if-ne v0, v8, :cond_3

    .line 217
    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    .line 226
    .restart local v10       #success:Z
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "content://iccmsim/"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v7, buf:Ljava/lang/StringBuilder;
    packed-switch v8, :pswitch_data_1

    .line 251
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/telephony/AdnRecordCache;->s_index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    sget v0, Lcom/android/internal/telephony/AdnRecordCache;->s_efid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, resultUri:Landroid/net/Uri;
    move-object v4, v9

    .line 264
    goto :goto_2

    .line 229
    .end local v9           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v0, "adn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 233
    :pswitch_3
    const-string v0, "adn_sub2/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 237
    :pswitch_4
    const-string v0, "fdn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 241
    :pswitch_5
    const-string v0, "fdn_sub2/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 227
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected loadFromEf(II)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"
    .parameter "subscription"

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 464
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook_msim"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v4

    .line 466
    .local v4, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v4, :cond_0

    .line 467
    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 474
    .end local v4           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 476
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 477
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 479
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 480
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 485
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    const-string v5, "MSimIccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 471
    :catch_0
    move-exception v5

    goto :goto_0

    .line 469
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method protected loadFromEf(ILcom/android/internal/telephony/AdnRecord;I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"
    .parameter "searchAdn"
    .parameter "subscription"

    .prologue
    .line 491
    const/4 v1, 0x0

    .line 496
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook_msim"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;

    move-result-object v4

    .line 498
    .local v4, iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    if-eqz v4, :cond_0

    .line 499
    invoke-interface {v4, p1, p3}, Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 506
    .end local v4           #iccIpb:Lcom/android/internal/telephony/msim/IIccPhoneBookMSim;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 508
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 509
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 511
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 512
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/AdnRecord;->equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 513
    const-string v5, "MSimIccProvider"

    const-string v6, "have one by efid and index"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 522
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    :goto_2
    return-object v2

    .line 511
    .restart local v0       #N:I
    .restart local v2       #cursor:Landroid/database/MatrixCursor;
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 521
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_3
    const-string v5, "MSimIccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/msim/MSimIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_2

    .line 503
    :catch_0
    move-exception v5

    goto :goto_0

    .line 501
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 674
    const-string v0, "MSimIccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimIccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 69
    const/4 v6, 0x0

    .line 70
    .local v6, isQuerybyindex:Z
    new-instance v15, Lcom/android/internal/telephony/AdnRecord;

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v15, searchAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v3, 0x0

    .line 72
    .local v3, efid:I
    const/4 v5, 0x0

    .line 73
    .local v5, index:I
    if-eqz p3, :cond_9

    .line 74
    const-string v16, ""

    .line 75
    .local v16, tag:Ljava/lang/String;
    const-string v9, ""

    .line 76
    .local v9, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 77
    .local v4, emails:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 78
    .local v12, pin2:Ljava/lang/String;
    const/4 v13, 0x0

    .line 79
    .local v13, sEfid:Ljava/lang/String;
    const/4 v14, 0x0

    .line 81
    .local v14, sIndex:Ljava/lang/String;
    const-string v19, "AND"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 82
    .local v17, tokens:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v8, v0

    .line 84
    .local v8, n:I
    :cond_0
    :goto_0
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_7

    .line 85
    aget-object v11, v17, v8

    .line 88
    .local v11, param:Ljava/lang/String;
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, pair:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 91
    const-string v19, "MSimIccProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    const/16 v19, 0x0

    aget-object v19, v10, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, key:Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v10, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 98
    .local v18, val:Ljava/lang/String;
    const-string v19, "tag"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 100
    :cond_2
    const-string v19, "number"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 102
    :cond_3
    const-string v19, "emails"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 104
    const/4 v4, 0x0

    goto :goto_0

    .line 105
    :cond_4
    const-string v19, "pin2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 107
    :cond_5
    const-string v19, "efid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 109
    :cond_6
    const-string v19, "index"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 114
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #pair:[Ljava/lang/String;
    .end local v11           #param:Ljava/lang/String;
    .end local v18           #val:Ljava/lang/String;
    :cond_7
    if-eqz v13, :cond_8

    if-eqz v14, :cond_8

    .line 115
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 116
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 117
    const/4 v6, 0x1

    .line 119
    :cond_8
    new-instance v15, Lcom/android/internal/telephony/AdnRecord;

    .end local v15           #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, v16

    invoke-direct {v15, v3, v5, v0, v9}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .restart local v15       #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    const-string v19, "SimProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "query tag="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",number = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ,efid = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ,index = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v4           #emails:[Ljava/lang/String;
    .end local v8           #n:I
    .end local v9           #number:Ljava/lang/String;
    .end local v12           #pin2:Ljava/lang/String;
    .end local v13           #sEfid:Ljava/lang/String;
    .end local v14           #sIndex:Ljava/lang/String;
    .end local v16           #tag:Ljava/lang/String;
    .end local v17           #tokens:[Ljava/lang/String;
    :cond_9
    sget-object v19, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 153
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown URL "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 127
    :pswitch_0
    if-eqz v6, :cond_a

    .line 128
    const/16 v19, 0x6f3a

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(ILcom/android/internal/telephony/AdnRecord;I)Landroid/database/MatrixCursor;

    move-result-object v19

    .line 149
    :goto_1
    return-object v19

    .line 130
    :cond_a
    const/16 v19, 0x6f3a

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v19

    goto :goto_1

    .line 135
    :pswitch_1
    if-eqz v6, :cond_b

    .line 136
    const/16 v19, 0x6f3a

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(ILcom/android/internal/telephony/AdnRecord;I)Landroid/database/MatrixCursor;

    move-result-object v19

    goto :goto_1

    .line 138
    :cond_b
    const/16 v19, 0x6f3a

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v19

    goto :goto_1

    .line 143
    :pswitch_2
    const/16 v19, 0x6f3b

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v19

    goto :goto_1

    .line 146
    :pswitch_3
    const/16 v19, 0x6f3b

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v19

    goto :goto_1

    .line 149
    :pswitch_4
    const/16 v19, 0x6f49

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/msim/MSimIccProvider;->loadFromEf(II)Landroid/database/MatrixCursor;

    move-result-object v19

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 382
    const/4 v7, 0x0

    .line 383
    .local v7, pin2:Ljava/lang/String;
    const/4 v8, 0x0

    .line 387
    .local v8, subscription:I
    sget-object v1, Lcom/android/internal/telephony/msim/MSimIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 388
    .local v18, match:I
    packed-switch v18, :pswitch_data_0

    .line 402
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :pswitch_0
    const/16 v2, 0x6f3a

    .line 406
    .local v2, efType:I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, number:Ljava/lang/String;
    const/16 v17, 0x0

    .line 409
    .local v17, emails:[Ljava/lang/String;
    const-string v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, newTag:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 412
    const-string v5, ""

    .line 414
    :cond_0
    const-string v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, newNumber:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 416
    const-string v6, ""

    .line 418
    :cond_1
    const/16 v19, 0x0

    .line 419
    .local v19, newEmails:[Ljava/lang/String;
    const-string v1, "efid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, Efid:Ljava/lang/String;
    const-string v1, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 421
    .local v20, sIndex:Ljava/lang/String;
    const/4 v11, 0x0

    .line 422
    .local v11, index:I
    const/16 v21, 0x0

    .line 427
    .local v21, success:Z
    const/4 v1, 0x1

    move/from16 v0, v18

    if-eq v1, v0, :cond_2

    const/4 v1, 0x3

    move/from16 v0, v18

    if-ne v1, v0, :cond_7

    .line 428
    :cond_2
    const/4 v8, 0x0

    .line 433
    :cond_3
    :goto_1
    if-eqz v16, :cond_4

    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    if-eqz v20, :cond_5

    const-string v1, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    move-object/from16 v1, p0

    .line 436
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    .line 451
    :cond_6
    :goto_2
    if-nez v21, :cond_a

    .line 452
    const/4 v1, 0x0

    .line 455
    :goto_3
    return v1

    .line 396
    .end local v2           #efType:I
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #newTag:Ljava/lang/String;
    .end local v6           #newNumber:Ljava/lang/String;
    .end local v11           #index:I
    .end local v16           #Efid:Ljava/lang/String;
    .end local v17           #emails:[Ljava/lang/String;
    .end local v19           #newEmails:[Ljava/lang/String;
    .end local v20           #sIndex:Ljava/lang/String;
    .end local v21           #success:Z
    :pswitch_1
    const/16 v2, 0x6f3b

    .line 397
    .restart local v2       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 398
    const-string v1, "subscription"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 399
    goto/16 :goto_0

    .line 429
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #newTag:Ljava/lang/String;
    .restart local v6       #newNumber:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v16       #Efid:Ljava/lang/String;
    .restart local v17       #emails:[Ljava/lang/String;
    .restart local v19       #newEmails:[Ljava/lang/String;
    .restart local v20       #sIndex:Ljava/lang/String;
    .restart local v21       #success:Z
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, v18

    if-eq v1, v0, :cond_8

    const/4 v1, 0x4

    move/from16 v0, v18

    if-ne v1, v0, :cond_3

    .line 430
    :cond_8
    const/4 v8, 0x1

    goto :goto_1

    .line 439
    :cond_9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 440
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 441
    if-lez v11, :cond_6

    move-object/from16 v9, p0

    move v10, v2

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move v15, v8

    .line 443
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/msim/MSimIccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v21

    goto :goto_2

    .line 455
    :cond_a
    const/4 v1, 0x1

    goto :goto_3

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
