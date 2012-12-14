.class Lcn/real/device/smiparser/JSmiParser$SomeParserThread;
.super Ljava/lang/Thread;
.source "JSmiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/smiparser/JSmiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SomeParserThread"
.end annotation


# instance fields
.field private mStart:J

.field private stoke:Ljava/util/StringTokenizer;

.field final synthetic this$0:Lcn/real/device/smiparser/JSmiParser;


# direct methods
.method constructor <init>(Lcn/real/device/smiparser/JSmiParser;I)V
    .locals 6
    .parameter
    .parameter "index"

    .prologue
    .line 260
    iput-object p1, p0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->this$0:Lcn/real/device/smiparser/JSmiParser;

    .line 258
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->mStart:J

    .line 256
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {}, Lcn/real/device/smiparser/JSmiParser;->access$1()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    .line 259
    invoke-static {}, Lcn/real/device/smiparser/JSmiParser;->access$2()J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {}, Lcn/real/device/smiparser/JSmiParser;->access$3()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->mStart:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 263
    const/16 v17, 0x0

    .line 264
    .local v17, skip:I
    const/4 v9, 0x0

    .line 265
    .local v9, detail:Ljava/lang/String;
    const/4 v13, 0x0

    .line 266
    .local v13, hasParseredNum:I
    const-wide/16 v3, 0x0

    .line 267
    .local v3, index:J
    const-wide/16 v5, 0x7d0

    .line 268
    .local v5, duration:J
    const/16 v19, -0x1

    .local v19, start:I
    const/4 v12, -0x1

    .line 269
    .local v12, end:I
    const/4 v14, 0x0

    .line 270
    .local v14, line:Ljava/lang/String;
    const/4 v8, 0x0

    .line 271
    .local v8, xType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 272
    .local v7, xTitle:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 278
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "++++++++++++++++start to parser in others thread++++++++++++++++"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    .line 343
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->this$0:Lcn/real/device/smiparser/JSmiParser;

    #getter for: Lcn/real/device/smiparser/JSmiParser;->mFinshedParserThreads:I
    invoke-static {v2}, Lcn/real/device/smiparser/JSmiParser;->access$6(Lcn/real/device/smiparser/JSmiParser;)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    #setter for: Lcn/real/device/smiparser/JSmiParser;->mFinshedParserThreads:I
    invoke-static {v2, v0}, Lcn/real/device/smiparser/JSmiParser;->access$7(Lcn/real/device/smiparser/JSmiParser;I)V

    .line 344
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "!!!!!!!!!!!Parser completed from "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->mStart:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->mStart:J

    move-wide/from16 v21, v0

    int-to-long v0, v13

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "!!!!!!!!!!!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 345
    return-void

    .line 273
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 274
    add-int/lit8 v18, v17, 0x1

    .end local v17           #skip:I
    .local v18, skip:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->mStart:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    cmp-long v2, v20, v22

    if-ltz v2, :cond_9

    move/from16 v17, v18

    .line 275
    .end local v18           #skip:I
    .restart local v17       #skip:I
    goto/16 :goto_1

    .line 280
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 283
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, "sync"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 284
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, ">&nbsp;"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-ltz v19, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 289
    const/16 v2, 0x3e

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 290
    if-ltz v12, :cond_0

    .line 292
    const/4 v2, 0x0

    invoke-virtual {v9, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 293
    const-string v2, "(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 294
    .local v16, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 295
    .local v15, m:Ljava/util/regex/Matcher;
    const/4 v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    .line 296
    .local v11, elems:[Ljava/lang/String;
    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v11, v20

    .line 298
    const/16 v20, 0x1

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    :goto_5
    aput-object v2, v11, v20

    .line 300
    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-nez v2, :cond_6

    .line 301
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "####the start TimeStamp is Not Invalid,Skip One SubTitle####"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 298
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 306
    :cond_6
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 307
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, "class"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 308
    if-lez v19, :cond_8

    .line 309
    const/16 v2, 0x3e

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 310
    const/16 v2, 0x3d

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 311
    if-ltz v12, :cond_0

    if-ltz v19, :cond_0

    move/from16 v0, v19

    if-ge v0, v12, :cond_0

    .line 315
    add-int/lit8 v2, v19, 0x1

    invoke-virtual {v14, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 316
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    :goto_6
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 325
    const-wide/16 v5, 0x7d0

    .line 326
    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_7

    .line 328
    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sub-long v5, v20, v3

    .line 329
    const-wide/16 v20, 0x0

    cmp-long v2, v5, v20

    if-ltz v2, :cond_0

    .line 333
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/real/device/smiparser/JSmiParser$SomeParserThread;->this$0:Lcn/real/device/smiparser/JSmiParser;

    #getter for: Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;
    invoke-static {v2}, Lcn/real/device/smiparser/JSmiParser;->access$4(Lcn/real/device/smiparser/JSmiParser;)Lcn/real/device/smiparser/SmiData;

    move-result-object v20

    new-instance v2, Lcn/real/device/smiparser/SmiContent;

    invoke-direct/range {v2 .. v8}, Lcn/real/device/smiparser/SmiContent;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcn/real/device/smiparser/SmiData;->Insert(Lcn/real/device/smiparser/SmiContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    int-to-long v0, v13

    move-wide/from16 v20, v0

    invoke-static {}, Lcn/real/device/smiparser/JSmiParser;->access$3()J

    move-result-wide v22

    cmp-long v2, v20, v22

    if-gez v2, :cond_1

    invoke-static {}, Lcn/real/device/smiparser/JSmiParser;->access$5()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 320
    :cond_8
    const/4 v8, 0x0

    .line 321
    move-object v7, v14

    goto :goto_6

    .line 334
    :catch_0
    move-exception v10

    .line 335
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v20, "####SYNC is Not Invalid, please Check the SMI File####"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #elems:[Ljava/lang/String;
    .end local v15           #m:Ljava/util/regex/Matcher;
    .end local v16           #p:Ljava/util/regex/Pattern;
    .end local v17           #skip:I
    .restart local v18       #skip:I
    :cond_9
    move/from16 v17, v18

    .end local v18           #skip:I
    .restart local v17       #skip:I
    goto/16 :goto_0
.end method
