.class Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;
.super Ljava/lang/Thread;
.source "JSubIdxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/subidxparser/JSubIdxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SomeParserThread"
.end annotation


# instance fields
.field private mStart:J

.field private stoke:Ljava/util/StringTokenizer;

.field final synthetic this$0:Lcn/real/device/subidxparser/JSubIdxParser;


# direct methods
.method constructor <init>(Lcn/real/device/subidxparser/JSubIdxParser;I)V
    .locals 6
    .parameter
    .parameter "index"

    .prologue
    .line 216
    iput-object p1, p0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->this$0:Lcn/real/device/subidxparser/JSubIdxParser;

    .line 214
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->mStart:J

    .line 212
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {}, Lcn/real/device/subidxparser/JSubIdxParser;->access$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    .line 215
    invoke-static {}, Lcn/real/device/subidxparser/JSubIdxParser;->access$2()J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {}, Lcn/real/device/subidxparser/JSubIdxParser;->access$3()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->mStart:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 219
    const/4 v12, 0x0

    .line 220
    .local v12, skip:I
    const/4 v2, 0x0

    .line 221
    .local v2, detail:Ljava/lang/String;
    const/4 v7, 0x0

    .line 222
    .local v7, hasParseredNum:I
    const-wide/16 v8, 0x0

    .line 223
    .local v8, index:J
    const-wide/16 v5, 0x0

    .line 224
    .local v5, filePos:J
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v15

    if-nez v15, :cond_2

    .line 230
    :goto_1
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "++++++++++++++++start to parser in others thread++++++++++++++++"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v15

    if-nez v15, :cond_3

    .line 259
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->this$0:Lcn/real/device/subidxparser/JSubIdxParser;

    #getter for: Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I
    invoke-static {v15}, Lcn/real/device/subidxparser/JSubIdxParser;->access$6(Lcn/real/device/subidxparser/JSubIdxParser;)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    #setter for: Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I
    invoke-static/range {v15 .. v16}, Lcn/real/device/subidxparser/JSubIdxParser;->access$7(Lcn/real/device/subidxparser/JSubIdxParser;I)V

    .line 260
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "!!!!!!!!!!!Parser completed from "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->mStart:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->mStart:J

    move-wide/from16 v17, v0

    int-to-long v0, v7

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "!!!!!!!!!!!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    return-void

    .line 225
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 226
    add-int/lit8 v13, v12, 0x1

    .end local v12           #skip:I
    .local v13, skip:I
    int-to-long v15, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->mStart:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    sub-long v17, v17, v19

    cmp-long v15, v15, v17

    if-ltz v15, :cond_5

    move v12, v13

    .line 227
    .end local v13           #skip:I
    .restart local v12       #skip:I
    goto :goto_1

    .line 232
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v15, "#"

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 236
    const-string v15, "(\\d\\d:\\d\\d:\\d\\d:\\d\\d\\d)"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 237
    .local v11, p:Ljava/util/regex/Pattern;
    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 238
    .local v10, m:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, el:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_0

    .line 242
    const-string v15, ":"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, time:[Ljava/lang/String;
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v14, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    mul-int/lit16 v15, v15, 0xe10

    const/16 v16, 0x1

    aget-object v16, v14, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    mul-int/lit8 v16, v16, 0x3c

    add-int v15, v15, v16

    const/16 v16, 0x2

    aget-object v16, v14, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    mul-int/lit16 v15, v15, 0x3e8

    const/16 v16, 0x3

    aget-object v16, v14, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    int-to-long v8, v15

    .line 245
    const/16 v15, 0x3a

    invoke-virtual {v2, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;->this$0:Lcn/real/device/subidxparser/JSubIdxParser;

    #getter for: Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;
    invoke-static {v15}, Lcn/real/device/subidxparser/JSubIdxParser;->access$4(Lcn/real/device/subidxparser/JSubIdxParser;)Lcn/real/device/subidxparser/IdxData;

    move-result-object v15

    new-instance v16, Lcn/real/device/subidxparser/IdxContent;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9, v5, v6}, Lcn/real/device/subidxparser/IdxContent;-><init>(JJ)V

    invoke-virtual/range {v15 .. v16}, Lcn/real/device/subidxparser/IdxData;->insert(Lcn/real/device/subidxparser/IdxContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    int-to-long v15, v7

    invoke-static {}, Lcn/real/device/subidxparser/JSubIdxParser;->access$3()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-gez v15, :cond_1

    invoke-static {}, Lcn/real/device/subidxparser/JSubIdxParser;->access$5()Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_2

    .line 238
    .end local v4           #el:Ljava/lang/String;
    .end local v14           #time:[Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 251
    .restart local v4       #el:Ljava/lang/String;
    .restart local v14       #time:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 252
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #el:Ljava/lang/String;
    .end local v10           #m:Ljava/util/regex/Matcher;
    .end local v11           #p:Ljava/util/regex/Pattern;
    .end local v12           #skip:I
    .end local v14           #time:[Ljava/lang/String;
    .restart local v13       #skip:I
    :cond_5
    move v12, v13

    .end local v13           #skip:I
    .restart local v12       #skip:I
    goto/16 :goto_0
.end method
