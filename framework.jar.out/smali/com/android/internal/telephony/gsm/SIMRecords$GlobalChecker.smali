.class Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;
.super Ljava/lang/Object;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalChecker"
.end annotation


# static fields
.field private static final APGS_SERVERS_DOCUMENT:Ljava/lang/String; = "agpsServers"

.field private static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field private static final SERVER_NAME:Ljava/lang/String; = "name"

.field private static final SUPL_PORT:Ljava/lang/String; = "supl_port"

.field private static final SUPL_URL:Ljava/lang/String; = "supl_host"

.field private static final XMLPATH:Ljava/lang/String; = "/cust/xml/globalAgpsServers-conf.xml"


# instance fields
.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter
    .parameter "simRecords"

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2180
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 2181
    return-void
.end method

.method private broadcastAgpsServerConf(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "row"

    .prologue
    .line 2306
    if-eqz p1, :cond_0

    .line 2307
    const-string v1, "SIM RECORDS"

    const-string v2, "broadcast TelephonyIntents.ACTION_AGPS_SERVERS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_AGPS_SERVERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2310
    const-string/jumbo v1, "supl_host"

    const-string/jumbo v2, "supl_host"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2311
    const-string/jumbo v1, "supl_port"

    const-string/jumbo v2, "supl_port"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2312
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2314
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkGlobalAutoMatchParam()V
    .locals 4

    .prologue
    .line 2321
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2324
    .local v0, currentImsi:Ljava/lang/String;
    const-string v2, "SIM RECORDS"

    const-string v3, "broadcast TelephonyIntents.ACTION_CHECK_GLOBAL_AUTO_MATCH_PARAM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_CHECK_GLOBAL_AUTO_MATCH_PARAM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2327
    const-string v2, "currentImsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2328
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2329
    return-void
.end method

.method private getAgpsServerRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    .line 2286
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2287
    .local v1, prof_type:Ljava/lang/String;
    const-string v3, "agpsServer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 2297
    :goto_0
    return-object v0

    .line 2290
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2292
    .local v0, map:Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    const-string/jumbo v3, "mccmnc"

    const-string/jumbo v4, "mccmnc"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const-string/jumbo v3, "supl_port"

    const-string/jumbo v4, "supl_port"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    const-string/jumbo v3, "supl_host"

    const-string/jumbo v4, "supl_host"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAgpsServers()V
    .locals 10

    .prologue
    .line 2231
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 2233
    .local v4, currentMccmnc:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2237
    :cond_1
    const/4 v1, 0x0

    .line 2239
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "/cust/xml/globalAgpsServers-conf.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2240
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 2242
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2243
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2245
    if-eqz v1, :cond_4

    .line 2246
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2247
    const-string v7, "agpsServers"

    invoke-static {v1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2250
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2251
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->getAgpsServerRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v6

    .line 2252
    .local v6, row:Landroid/content/ContentValues;
    if-eqz v6, :cond_4

    .line 2253
    const-string/jumbo v7, "mccmnc"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mccmnc"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2255
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->broadcastAgpsServerConf(Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 2270
    .end local v6           #row:Landroid/content/ContentValues;
    :cond_4
    if-eqz v3, :cond_5

    .line 2271
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_5
    :goto_1
    move-object v2, v3

    .line 2275
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_0

    .line 2263
    :catch_0
    move-exception v5

    .line 2265
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v7, "SIM RECORDS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not found: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2270
    if-eqz v2, :cond_0

    .line 2271
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2272
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    goto :goto_0

    .line 2266
    :catch_2
    move-exception v5

    .line 2267
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v7, "SIM RECORDS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2270
    if-eqz v2, :cond_0

    .line 2271
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 2269
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 2270
    :goto_4
    if-eqz v2, :cond_6

    .line 2271
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2269
    :cond_6
    :goto_5
    throw v7

    .line 2272
    :catch_3
    move-exception v8

    goto :goto_5

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_4
    move-exception v7

    goto :goto_1

    .line 2269
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 2266
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_5
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 2263
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method public checkPrePostPayMactchParam()V
    .locals 5

    .prologue
    .line 2206
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2208
    .local v1, currentMccmnc:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 2210
    .local v0, currentImsi:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-void

    .line 2215
    :cond_1
    const-string v3, "SIM RECORDS"

    const-string v4, "broadcast TelephonyIntents.ACTION_CHECK_PRE_POST_PAY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_CHECK_PRE_POST_PAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2217
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2218
    const-string v3, "currentMccmnc"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2219
    const-string v3, "currentImsi"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2220
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadGID1()V
    .locals 4

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3e

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->handlerEx:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$000(Lcom/android/internal/telephony/gsm/SIMRecords;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$208(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    .line 2336
    return-void
.end method

.method public onAllRecordsLoaded()V
    .locals 2

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->loadVirtualNet(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2199
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->checkGlobalAutoMatchParam()V

    .line 2200
    return-void
.end method

.method public onOperatorNumericLoaded()V
    .locals 2

    .prologue
    .line 2184
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->checkPrePostPayMactchParam()V

    .line 2186
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->checkAgpsServers()V

    .line 2192
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$GlobalChecker;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/VirtualNet;->loadSpecialFiles(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 2194
    return-void
.end method
