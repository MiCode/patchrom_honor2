.class public Lcn/real/device/subidxparser/JSubIdxParser;
.super Ljava/lang/Object;
.source "JSubIdxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/subidxparser/JSubIdxParser$SomeParserThread;
    }
.end annotation


# static fields
.field private static mCancelThreads:Z

.field private static mCountsMainThread:J

.field private static mCountsPerThread:J

.field private static mIdxBuffer:Ljava/lang/String;


# instance fields
.field private mData:Lcn/real/device/subidxparser/IdxData;

.field private mFinshedParserThreads:I

.field private mIdxFilePath:Ljava/lang/String;

.field private mLangId:Ljava/lang/String;

.field private final mMultiThreadHandler:Landroid/os/Handler;

.field private final mMultiThreadTask:Ljava/lang/Runnable;

.field private mParserCounts:J

.field private mParserThreads:I

.field private mSubFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsPerThread:J

    .line 18
    const-wide/16 v0, 0x32

    sput-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    .line 21
    iput v3, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    .line 22
    iput v3, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    .line 23
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadHandler:Landroid/os/Handler;

    .line 265
    new-instance v0, Lcn/real/device/subidxparser/JSubIdxParser$1;

    invoke-direct {v0, p0}, Lcn/real/device/subidxparser/JSubIdxParser$1;-><init>(Lcn/real/device/subidxparser/JSubIdxParser;)V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadTask:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    .line 31
    new-instance v0, Lcn/real/device/subidxparser/IdxData;

    invoke-direct {v0}, Lcn/real/device/subidxparser/IdxData;-><init>()V

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    .line 32
    sput-boolean v3, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    .line 33
    return-void
.end method

.method private ParserDisplayInfo(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 275
    .line 276
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v0, "\n"

    invoke-direct {v1, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    return-void

    .line 278
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "langidx:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "(\\d+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$0(Lcn/real/device/subidxparser/JSubIdxParser;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    return-wide v0
.end method

.method static synthetic access$3()J
    .locals 2

    .prologue
    .line 14
    sget-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsPerThread:J

    return-wide v0
.end method

.method static synthetic access$4(Lcn/real/device/subidxparser/JSubIdxParser;)Lcn/real/device/subidxparser/IdxData;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    return-object v0
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    return v0
.end method

.method static synthetic access$6(Lcn/real/device/subidxparser/JSubIdxParser;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    return v0
.end method

.method static synthetic access$7(Lcn/real/device/subidxparser/JSubIdxParser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCancelThreads:Z

    .line 37
    return-void
.end method

.method public DoParser()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x32

    const-wide/16 v6, 0x0

    const/4 v9, 0x2

    const/16 v8, 0x2000

    const/4 v2, 0x0

    .line 58
    const/4 v3, -0x2

    .line 61
    iget-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 63
    if-lez v0, :cond_0

    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".idx"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    .line 67
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mSubFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    :cond_1
    const/4 v2, -0x1

    .line 207
    :goto_0
    return v2

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_4

    :cond_3
    move v2, v3

    .line 73
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/real/device/FileUtils;->GetFileFormat(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 78
    sget v0, Lcn/real/device/FileUtils;->mFileFormat:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 94
    goto :goto_0

    .line 80
    :pswitch_1
    const-string v0, "UTF-16"

    .line 102
    :goto_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 103
    new-array v1, v8, [B

    .line 104
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxFilePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 105
    :goto_2
    invoke-virtual {v5, v1, v2, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    if-eq v6, v8, :cond_6

    .line 108
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v2, v6, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 115
    const-string v0, "timestamp:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 116
    const-string v1, "timestamp"

    .line 124
    :goto_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/real/device/subidxparser/JSubIdxParser;->ParserDisplayInfo(Ljava/lang/String;)V

    .line 127
    const-string v0, "index:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 128
    const-string v0, "index: "

    .line 136
    :goto_4
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 147
    if-gez v1, :cond_c

    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####please Check the Index Tag in Idx File####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 149
    goto/16 :goto_0

    .line 83
    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_1

    .line 86
    :pswitch_3
    const-string v0, "utf-8"

    goto/16 :goto_1

    .line 89
    :pswitch_4
    const-string v0, "GB2312"

    goto/16 :goto_1

    :cond_5
    move v2, v3

    .line 98
    goto/16 :goto_0

    .line 106
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 117
    :cond_7
    const-string v0, "TIMESTAMP:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 118
    const-string v1, "TIMESTAMP"

    goto :goto_3

    .line 120
    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####please Check the timestamp Tag in Idx File####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 121
    goto/16 :goto_0

    .line 129
    :cond_9
    const-string v0, "INDEX:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    .line 130
    const-string v0, "INDEX: "

    goto :goto_4

    .line 132
    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####please Check the Language Index Tag in Idx File####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 133
    goto/16 :goto_0

    .line 141
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mLangId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_5

    .line 151
    :cond_c
    if-gez v0, :cond_e

    .line 152
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    .line 159
    :goto_6
    new-instance v3, Ljava/util/StringTokenizer;

    sget-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    const-string v1, "\n"

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    .line 161
    iget-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_f

    .line 162
    iput v2, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    .line 163
    iget-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    sput-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    :goto_7
    move v0, v2

    .line 174
    :cond_d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_10

    .line 203
    :goto_8
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mMultiThreadTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#########Parser completed from 0 to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#########"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_e
    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/real/device/subidxparser/JSubIdxParser;->mIdxBuffer:Ljava/lang/String;

    goto :goto_6

    .line 166
    :cond_f
    iput v9, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    .line 167
    iget-wide v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserCounts:J

    sub-long/2addr v0, v10

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    sput-wide v0, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsPerThread:J

    goto :goto_7

    .line 175
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 177
    const-string v1, "#"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 179
    const-string v1, "(\\d\\d:\\d\\d:\\d\\d:\\d\\d\\d)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_9
    if-eqz v1, :cond_d

    .line 185
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 187
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0xe10

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v5

    int-to-long v5, v1

    .line 188
    const/16 v1, 0x3a

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 193
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    new-instance v4, Lcn/real/device/subidxparser/IdxContent;

    invoke-direct {v4, v5, v6, v7, v8}, Lcn/real/device/subidxparser/IdxContent;-><init>(JJ)V

    invoke-virtual {v1, v4}, Lcn/real/device/subidxparser/IdxData;->insert(Lcn/real/device/subidxparser/IdxContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    int-to-long v4, v0

    sget-wide v6, Lcn/real/device/subidxparser/JSubIdxParser;->mCountsMainThread:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_d

    goto/16 :goto_8

    .line 181
    :cond_11
    const/4 v1, 0x0

    goto :goto_9

    .line 194
    :catch_0
    move-exception v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized GetNextVobIDX(J)Lcn/real/device/subidxparser/IdxContent;
    .locals 3
    .parameter "nPos"

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x0

    .line 41
    .local v0, temp:Lcn/real/device/subidxparser/IdxContent;
    :try_start_0
    invoke-virtual {p0}, Lcn/real/device/subidxparser/JSubIdxParser;->ParserDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/subidxparser/IdxData;->QueryNext(J)Lcn/real/device/subidxparser/IdxContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    :goto_0
    monitor-exit p0

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "####Still in Parsering,So Find It in TempMap####"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mData:Lcn/real/device/subidxparser/IdxData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/subidxparser/IdxData;->QueryNextFromTemp(J)Lcn/real/device/subidxparser/IdxContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ParserDone()Z
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mFinshedParserThreads:I

    iget v1, p0, Lcn/real/device/subidxparser/JSubIdxParser;->mParserThreads:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
