.class Lcn/real/device/assparser/JSsaParser$SomeParserThread;
.super Ljava/lang/Thread;
.source "JSsaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/assparser/JSsaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SomeParserThread"
.end annotation


# instance fields
.field private mStart:J

.field private stoke:Ljava/util/StringTokenizer;

.field final synthetic this$0:Lcn/real/device/assparser/JSsaParser;


# direct methods
.method constructor <init>(Lcn/real/device/assparser/JSsaParser;I)V
    .locals 6
    .parameter
    .parameter "index"

    .prologue
    .line 215
    iput-object p1, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->this$0:Lcn/real/device/assparser/JSsaParser;

    .line 213
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->mStart:J

    .line 211
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {}, Lcn/real/device/assparser/JSsaParser;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    .line 214
    invoke-static {}, Lcn/real/device/assparser/JSsaParser;->access$2()J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {}, Lcn/real/device/assparser/JSsaParser;->access$3()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->mStart:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, skip:I
    const/4 v0, 0x0

    .line 219
    .local v0, detail:Ljava/lang/String;
    const/4 v1, 0x0

    .line 220
    .local v1, hasParseredNum:I
    const/4 v4, 0x0

    .line 221
    .local v4, temp:Lcn/real/device/assparser/SsaContent;
    :goto_0
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "++++++++++++++++start to parser in others thread++++++++++++++++"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    .line 242
    :cond_1
    :goto_2
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->this$0:Lcn/real/device/assparser/JSsaParser;

    #getter for: Lcn/real/device/assparser/JSsaParser;->mFinshedParserThreads:I
    invoke-static {v5}, Lcn/real/device/assparser/JSsaParser;->access$7(Lcn/real/device/assparser/JSsaParser;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    #setter for: Lcn/real/device/assparser/JSsaParser;->mFinshedParserThreads:I
    invoke-static {v5, v6}, Lcn/real/device/assparser/JSsaParser;->access$8(Lcn/real/device/assparser/JSsaParser;I)V

    .line 243
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!!!!!!!!!!!Parser completed from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->mStart:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->mStart:J

    int-to-long v9, v1

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!!!!!!!!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    return-void

    .line 222
    :cond_2
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 223
    add-int/lit8 v3, v2, 0x1

    .end local v2           #skip:I
    .local v3, skip:I
    int-to-long v5, v2

    iget-wide v7, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->mStart:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_5

    move v2, v3

    .line 224
    .end local v3           #skip:I
    .restart local v2       #skip:I
    goto :goto_1

    .line 229
    :cond_3
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->this$0:Lcn/real/device/assparser/JSsaParser;

    #getter for: Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;
    invoke-static {v5}, Lcn/real/device/assparser/JSsaParser;->access$4(Lcn/real/device/assparser/JSsaParser;)Lcn/real/device/assparser/SsaFormat;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/real/device/assparser/SsaFormat;->GetEventContent(Ljava/lang/String;)Lcn/real/device/assparser/SsaContent;

    move-result-object v4

    .line 234
    add-int/lit8 v1, v1, 0x1

    .line 235
    if-eqz v4, :cond_4

    .line 236
    iget-object v5, p0, Lcn/real/device/assparser/JSsaParser$SomeParserThread;->this$0:Lcn/real/device/assparser/JSsaParser;

    #getter for: Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;
    invoke-static {v5}, Lcn/real/device/assparser/JSsaParser;->access$5(Lcn/real/device/assparser/JSsaParser;)Lcn/real/device/assparser/SsaData;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/real/device/assparser/SsaData;->Insert(Lcn/real/device/assparser/SsaContent;)V

    .line 238
    :cond_4
    int-to-long v5, v1

    invoke-static {}, Lcn/real/device/assparser/JSsaParser;->access$3()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-static {}, Lcn/real/device/assparser/JSsaParser;->access$6()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    .end local v2           #skip:I
    .restart local v3       #skip:I
    :cond_5
    move v2, v3

    .end local v3           #skip:I
    .restart local v2       #skip:I
    goto/16 :goto_0
.end method
