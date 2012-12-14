.class Lcn/real/device/srtparser/JSrtParser$SomeParserThread;
.super Ljava/lang/Thread;
.source "JSrtParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/srtparser/JSrtParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SomeParserThread"
.end annotation


# instance fields
.field private SubTitle:Ljava/lang/StringBuffer;

.field private mStart:J

.field private stoke:Ljava/util/StringTokenizer;

.field final synthetic this$0:Lcn/real/device/srtparser/JSrtParser;


# direct methods
.method constructor <init>(Lcn/real/device/srtparser/JSrtParser;I)V
    .locals 6
    .parameter
    .parameter "index"

    .prologue
    .line 246
    iput-object p1, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->this$0:Lcn/real/device/srtparser/JSrtParser;

    .line 244
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->mStart:J

    .line 241
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    .line 242
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {}, Lcn/real/device/srtparser/JSrtParser;->access$1()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    .line 245
    invoke-static {}, Lcn/real/device/srtparser/JSrtParser;->access$2()J

    move-result-wide v0

    int-to-long v2, p2

    invoke-static {}, Lcn/real/device/srtparser/JSrtParser;->access$3()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->mStart:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, skip:I
    const/4 v1, 0x0

    .line 251
    .local v1, detail:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [J

    fill-array-data v0, :array_0

    .line 252
    .local v0, Times:[J
    const/4 v2, 0x0

    .line 254
    .local v2, hasParseredNum:I
    :goto_0
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 262
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "++++++++++++++++start to parser in others thread++++++++++++++++"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_3

    .line 298
    :cond_1
    :goto_2
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->this$0:Lcn/real/device/srtparser/JSrtParser;

    #getter for: Lcn/real/device/srtparser/JSrtParser;->mFinshedParserThreads:I
    invoke-static {v5}, Lcn/real/device/srtparser/JSrtParser;->access$8(Lcn/real/device/srtparser/JSrtParser;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    #setter for: Lcn/real/device/srtparser/JSrtParser;->mFinshedParserThreads:I
    invoke-static {v5, v6}, Lcn/real/device/srtparser/JSrtParser;->access$9(Lcn/real/device/srtparser/JSrtParser;I)V

    .line 299
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!!!!!!!!!!!Parser completed from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->mStart:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->mStart:J

    int-to-long v9, v2

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!!!!!!!!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 300
    return-void

    .line 255
    :cond_2
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 256
    add-int/lit8 v4, v3, 0x1

    .end local v3           #skip:I
    .local v4, skip:I
    int-to-long v5, v3

    iget-wide v7, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->mStart:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_7

    move v3, v4

    .end local v4           #skip:I
    .restart local v3       #skip:I
    goto :goto_0

    .line 264
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 265
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 266
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->this$0:Lcn/real/device/srtparser/JSrtParser;

    #calls: Lcn/real/device/srtparser/JSrtParser;->IsNotTimeStamp(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcn/real/device/srtparser/JSrtParser;->access$4(Lcn/real/device/srtparser/JSrtParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->this$0:Lcn/real/device/srtparser/JSrtParser;

    #calls: Lcn/real/device/srtparser/JSrtParser;->ParseTimes(Ljava/lang/String;)[J
    invoke-static {v5, v1}, Lcn/real/device/srtparser/JSrtParser;->access$5(Lcn/real/device/srtparser/JSrtParser;Ljava/lang/String;)[J

    move-result-object v0

    .line 270
    aget-wide v5, v0, v11

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 273
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 276
    add-int/lit8 v2, v2, 0x1

    .line 277
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    .line 286
    :cond_4
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 287
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v11, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 292
    :goto_4
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->this$0:Lcn/real/device/srtparser/JSrtParser;

    #getter for: Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;
    invoke-static {v5}, Lcn/real/device/srtparser/JSrtParser;->access$6(Lcn/real/device/srtparser/JSrtParser;)Lcn/real/device/srtparser/SrtData;

    move-result-object v5

    new-instance v6, Lcn/real/device/srtparser/SrtContent;

    invoke-direct {v6, v0, v1}, Lcn/real/device/srtparser/SrtContent;-><init>([JLjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcn/real/device/srtparser/SrtData;->Insert(Lcn/real/device/srtparser/SrtContent;)V

    .line 293
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 294
    int-to-long v5, v2

    invoke-static {}, Lcn/real/device/srtparser/JSrtParser;->access$3()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-static {}, Lcn/real/device/srtparser/JSrtParser;->access$7()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    .line 278
    :cond_5
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 280
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->stoke:Ljava/util/StringTokenizer;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 290
    :cond_6
    iget-object v5, p0, Lcn/real/device/srtparser/JSrtParser$SomeParserThread;->SubTitle:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .end local v3           #skip:I
    .restart local v4       #skip:I
    :cond_7
    move v3, v4

    .end local v4           #skip:I
    .restart local v3       #skip:I
    goto/16 :goto_1

    .line 251
    nop

    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
