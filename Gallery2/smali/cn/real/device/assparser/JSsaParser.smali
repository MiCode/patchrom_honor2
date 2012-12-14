.class public Lcn/real/device/assparser/JSsaParser;
.super Ljava/lang/Object;
.source "JSsaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/assparser/JSsaParser$SomeParserThread;
    }
.end annotation


# static fields
.field private static mCancelThreads:Z

.field private static mCountsMainThread:J

.field private static mCountsPerThread:J

.field private static mEventBuffer:Ljava/lang/String;


# instance fields
.field private mData:Lcn/real/device/assparser/SsaData;

.field private mFilePath:Ljava/lang/String;

.field private mFinshedParserThreads:I

.field private mFormat:Lcn/real/device/assparser/SsaFormat;

.field private final mMultiThreadHandler:Landroid/os/Handler;

.field private final mMultiThreadTask:Ljava/lang/Runnable;

.field private mParserCounts:J

.field private mParserThreads:I

.field private mStyleData:Lcn/real/device/assparser/SsaStyleData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/real/device/assparser/JSsaParser;->mCountsPerThread:J

    .line 19
    const-wide/16 v0, 0x14

    sput-wide v0, Lcn/real/device/assparser/JSsaParser;->mCountsMainThread:J

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcn/real/device/assparser/JSsaParser;->mEventBuffer:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcn/real/device/assparser/JSsaParser;->mCancelThreads:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcn/real/device/assparser/JSsaParser;->mFilePath:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/assparser/JSsaParser;->mParserCounts:J

    .line 23
    iput v3, p0, Lcn/real/device/assparser/JSsaParser;->mParserThreads:I

    .line 24
    iput v3, p0, Lcn/real/device/assparser/JSsaParser;->mFinshedParserThreads:I

    .line 25
    iput-object v2, p0, Lcn/real/device/assparser/JSsaParser;->mStyleData:Lcn/real/device/assparser/SsaStyleData;

    .line 26
    iput-object v2, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mMultiThreadHandler:Landroid/os/Handler;

    .line 248
    new-instance v0, Lcn/real/device/assparser/JSsaParser$1;

    invoke-direct {v0, p0}, Lcn/real/device/assparser/JSsaParser$1;-><init>(Lcn/real/device/assparser/JSsaParser;)V

    iput-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mMultiThreadTask:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcn/real/device/assparser/JSsaParser;->mFilePath:Ljava/lang/String;

    .line 32
    new-instance v0, Lcn/real/device/assparser/SsaData;

    invoke-direct {v0}, Lcn/real/device/assparser/SsaData;-><init>()V

    iput-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;

    .line 33
    new-instance v0, Lcn/real/device/assparser/SsaStyleData;

    invoke-direct {v0}, Lcn/real/device/assparser/SsaStyleData;-><init>()V

    iput-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mStyleData:Lcn/real/device/assparser/SsaStyleData;

    .line 34
    new-instance v0, Lcn/real/device/assparser/SsaFormat;

    invoke-direct {v0}, Lcn/real/device/assparser/SsaFormat;-><init>()V

    iput-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    .line 35
    sput-boolean v3, Lcn/real/device/assparser/JSsaParser;->mCancelThreads:Z

    .line 36
    return-void
.end method

.method private ParserEvents(Ljava/lang/String;)I
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x14

    const/4 v1, 0x0

    .line 159
    .line 161
    const/4 v0, -0x2

    .line 162
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    move v1, v0

    .line 206
    :goto_0
    return v1

    .line 166
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    iput-wide v3, p0, Lcn/real/device/assparser/JSsaParser;->mParserCounts:J

    .line 167
    iget-wide v3, p0, Lcn/real/device/assparser/JSsaParser;->mParserCounts:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    .line 168
    iput v1, p0, Lcn/real/device/assparser/JSsaParser;->mParserThreads:I

    .line 169
    iget-wide v3, p0, Lcn/real/device/assparser/JSsaParser;->mParserCounts:J

    sput-wide v3, Lcn/real/device/assparser/JSsaParser;->mCountsMainThread:J

    .line 177
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 179
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v3, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    invoke-virtual {v3, v0}, Lcn/real/device/assparser/SsaFormat;->SetEventFormat(Ljava/lang/String;)V

    move v0, v1

    .line 184
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_3

    .line 204
    :goto_2
    iget-object v2, p0, Lcn/real/device/assparser/JSsaParser;->mMultiThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/real/device/assparser/JSsaParser;->mMultiThreadTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

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

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcn/real/device/assparser/JSsaParser;->mParserThreads:I

    .line 173
    iget-wide v3, p0, Lcn/real/device/assparser/JSsaParser;->mParserCounts:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcn/real/device/assparser/JSsaParser;->mCountsPerThread:J

    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 186
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    iget-object v4, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    invoke-virtual {v4, v3}, Lcn/real/device/assparser/SsaFormat;->GetEventContent(Ljava/lang/String;)Lcn/real/device/assparser/SsaContent;

    move-result-object v3

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 191
    if-eqz v3, :cond_4

    .line 192
    iget-object v4, p0, Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;

    invoke-virtual {v4, v3}, Lcn/real/device/assparser/SsaData;->Insert(Lcn/real/device/assparser/SsaContent;)V

    .line 200
    :goto_3
    int-to-long v3, v0

    sget-wide v5, Lcn/real/device/assparser/JSsaParser;->mCountsMainThread:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    goto :goto_2

    .line 198
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "####Get Invalid Event Content####"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private ParserStyles(Ljava/lang/String;)V
    .locals 5
    .parameter "stylePart"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, detail:Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, temp:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v1, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v1, stoke:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 156
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 139
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v3, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    invoke-virtual {v3, v0}, Lcn/real/device/assparser/SsaFormat;->SetStyleFormat(Ljava/lang/String;)V

    .line 142
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 147
    iget-object v3, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    invoke-virtual {v3, v0}, Lcn/real/device/assparser/SsaFormat;->GetStyleContent(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_2

    .line 149
    iget-object v3, p0, Lcn/real/device/assparser/JSsaParser;->mStyleData:Lcn/real/device/assparser/SsaStyleData;

    invoke-virtual {v3, v2}, Lcn/real/device/assparser/SsaStyleData;->Insert(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcn/real/device/assparser/JSsaParser;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcn/real/device/assparser/JSsaParser;->mParserThreads:I

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcn/real/device/assparser/JSsaParser;->mEventBuffer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 19
    sget-wide v0, Lcn/real/device/assparser/JSsaParser;->mCountsMainThread:J

    return-wide v0
.end method

.method static synthetic access$3()J
    .locals 2

    .prologue
    .line 16
    sget-wide v0, Lcn/real/device/assparser/JSsaParser;->mCountsPerThread:J

    return-wide v0
.end method

.method static synthetic access$4(Lcn/real/device/assparser/JSsaParser;)Lcn/real/device/assparser/SsaFormat;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mFormat:Lcn/real/device/assparser/SsaFormat;

    return-object v0
.end method

.method static synthetic access$5(Lcn/real/device/assparser/JSsaParser;)Lcn/real/device/assparser/SsaData;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;

    return-object v0
.end method

.method static synthetic access$6()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcn/real/device/assparser/JSsaParser;->mCancelThreads:Z

    return v0
.end method

.method static synthetic access$7(Lcn/real/device/assparser/JSsaParser;)I
    .locals 1
    .parameter

    .prologue
    .line 24
    iget v0, p0, Lcn/real/device/assparser/JSsaParser;->mFinshedParserThreads:I

    return v0
.end method

.method static synthetic access$8(Lcn/real/device/assparser/JSsaParser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcn/real/device/assparser/JSsaParser;->mFinshedParserThreads:I

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcn/real/device/assparser/JSsaParser;->mCancelThreads:Z

    .line 40
    return-void
.end method

.method public DoParser()I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/16 v1, 0x2000

    .line 66
    .local v1, MAX_SIZE:I
    const/4 v11, -0x2

    .line 67
    .local v11, ret:I
    const/4 v8, 0x0

    .line 68
    .local v8, mBuffer:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 69
    .local v5, fileFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/assparser/JSsaParser;->mFilePath:Ljava/lang/String;

    invoke-static {v15}, Lcn/real/device/FileUtils;->GetFileFormat(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_0

    .line 70
    sget v15, Lcn/real/device/FileUtils;->mFileFormat:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move v12, v11

    .line 127
    .end local v11           #ret:I
    .local v12, ret:I
    :goto_0
    return v12

    .line 72
    .end local v12           #ret:I
    .restart local v11       #ret:I
    :pswitch_1
    const-string v5, "UTF-16"

    .line 95
    :goto_1
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/assparser/JSsaParser;->mFilePath:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 96
    .local v6, input:Ljava/io/InputStream;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v10, reader:Ljava/io/BufferedReader;
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, detail:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v8           #mBuffer:Ljava/lang/StringBuffer;
    .local v9, mBuffer:Ljava/lang/StringBuffer;
    :try_start_1
    const-string v14, "[v4+ styles]"

    .line 100
    .local v14, strStyle:Ljava/lang/String;
    const-string v13, "[events]"

    .line 101
    .local v13, strEvent:Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_1

    .line 107
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 108
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "\r"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, element:[Ljava/lang/String;
    array-length v7, v4

    .line 116
    .local v7, len:I
    const/4 v15, 0x2

    if-ge v7, v15, :cond_4

    .line 117
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "####SubTitle File Missed Tags####"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v8, v9

    .end local v9           #mBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #mBuffer:Ljava/lang/StringBuffer;
    move v12, v11

    .line 118
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto :goto_0

    .line 75
    .end local v2           #detail:Ljava/lang/String;
    .end local v4           #element:[Ljava/lang/String;
    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #len:I
    .end local v10           #reader:Ljava/io/BufferedReader;
    .end local v12           #ret:I
    .end local v13           #strEvent:Ljava/lang/String;
    .end local v14           #strStyle:Ljava/lang/String;
    .restart local v11       #ret:I
    :pswitch_2
    const-string v5, "UTF-16BE"

    .line 76
    goto :goto_1

    .line 78
    :pswitch_3
    const-string v5, "utf-8"

    .line 79
    goto :goto_1

    .line 81
    :pswitch_4
    const-string v5, "GB2312"

    .line 82
    goto :goto_1

    :cond_0
    move v12, v11

    .line 90
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto :goto_0

    .line 102
    .end local v8           #mBuffer:Ljava/lang/StringBuffer;
    .end local v12           #ret:I
    .restart local v2       #detail:Ljava/lang/String;
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v9       #mBuffer:Ljava/lang/StringBuffer;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    .restart local v11       #ret:I
    .restart local v13       #strEvent:Ljava/lang/String;
    .restart local v14       #strStyle:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 103
    :cond_2
    const-string v15, "\r"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_3
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_2

    .line 109
    .end local v2           #detail:Ljava/lang/String;
    .end local v6           #input:Ljava/io/InputStream;
    .end local v9           #mBuffer:Ljava/lang/StringBuffer;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .end local v13           #strEvent:Ljava/lang/String;
    .end local v14           #strStyle:Ljava/lang/String;
    .restart local v8       #mBuffer:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 110
    .local v3, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move v12, v11

    .line 111
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto/16 :goto_0

    .line 120
    .end local v3           #e:Ljava/io/IOException;
    .end local v8           #mBuffer:Ljava/lang/StringBuffer;
    .end local v12           #ret:I
    .restart local v2       #detail:Ljava/lang/String;
    .restart local v4       #element:[Ljava/lang/String;
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v7       #len:I
    .restart local v9       #mBuffer:Ljava/lang/StringBuffer;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    .restart local v11       #ret:I
    .restart local v13       #strEvent:Ljava/lang/String;
    .restart local v14       #strStyle:Ljava/lang/String;
    :cond_4
    add-int/lit8 v15, v7, -0x2

    aget-object v15, v4, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/real/device/assparser/JSsaParser;->ParserStyles(Ljava/lang/String;)V

    .line 121
    add-int/lit8 v15, v7, -0x1

    aget-object v15, v4, v15

    sput-object v15, Lcn/real/device/assparser/JSsaParser;->mEventBuffer:Ljava/lang/String;

    .line 122
    sget-object v15, Lcn/real/device/assparser/JSsaParser;->mEventBuffer:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/real/device/assparser/JSsaParser;->ParserEvents(Ljava/lang/String;)I

    move-result v11

    .line 123
    if-eqz v11, :cond_5

    .line 124
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "####Failed to Parse Events####"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v8, v9

    .end local v9           #mBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #mBuffer:Ljava/lang/StringBuffer;
    move v12, v11

    .line 125
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto/16 :goto_0

    .end local v8           #mBuffer:Ljava/lang/StringBuffer;
    .end local v12           #ret:I
    .restart local v9       #mBuffer:Ljava/lang/StringBuffer;
    .restart local v11       #ret:I
    :cond_5
    move-object v8, v9

    .end local v9           #mBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #mBuffer:Ljava/lang/StringBuffer;
    move v12, v11

    .line 127
    .end local v11           #ret:I
    .restart local v12       #ret:I
    goto/16 :goto_0

    .line 109
    .end local v4           #element:[Ljava/lang/String;
    .end local v7           #len:I
    .end local v8           #mBuffer:Ljava/lang/StringBuffer;
    .end local v12           #ret:I
    .end local v13           #strEvent:Ljava/lang/String;
    .end local v14           #strStyle:Ljava/lang/String;
    .restart local v9       #mBuffer:Ljava/lang/StringBuffer;
    .restart local v11       #ret:I
    :catch_1
    move-exception v3

    move-object v8, v9

    .end local v9           #mBuffer:Ljava/lang/StringBuffer;
    .restart local v8       #mBuffer:Ljava/lang/StringBuffer;
    goto :goto_3

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized GetNextSsaSubTitle(J)Lcn/real/device/assparser/SsaContent;
    .locals 3
    .parameter "nPos"

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x0

    .line 44
    .local v0, temp:Lcn/real/device/assparser/SsaContent;
    :try_start_0
    invoke-virtual {p0}, Lcn/real/device/assparser/JSsaParser;->ParserDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/assparser/SsaData;->QueryNext(J)Lcn/real/device/assparser/SsaContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 50
    :goto_0
    monitor-exit p0

    return-object v0

    .line 47
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "####Still in Parsering,So Find It in TempMap####"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcn/real/device/assparser/JSsaParser;->mData:Lcn/real/device/assparser/SsaData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/assparser/SsaData;->QueryNextFromTemp(J)Lcn/real/device/assparser/SsaContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public GetTypesByName(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mStyleData:Lcn/real/device/assparser/SsaStyleData;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/real/device/assparser/JSsaParser;->mStyleData:Lcn/real/device/assparser/SsaStyleData;

    invoke-virtual {v0, p1}, Lcn/real/device/assparser/SsaStyleData;->GetTypesByName(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ParserDone()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcn/real/device/assparser/JSsaParser;->mFinshedParserThreads:I

    iget v1, p0, Lcn/real/device/assparser/JSsaParser;->mParserThreads:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
