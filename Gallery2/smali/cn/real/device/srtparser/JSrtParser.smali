.class public Lcn/real/device/srtparser/JSrtParser;
.super Ljava/lang/Object;
.source "JSrtParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/srtparser/JSrtParser$SomeParserThread;
    }
.end annotation


# static fields
.field private static mBuffer:Ljava/lang/StringBuffer;

.field private static mCancelThreads:Z

.field private static mCountsMainThread:J

.field private static mCountsPerThread:J


# instance fields
.field private mData:Lcn/real/device/srtparser/SrtData;

.field private mFilePath:Ljava/lang/String;

.field private mFinshedParserThreads:I

.field private final mMultiThreadHandler:Landroid/os/Handler;

.field private final mMultiThreadTask:Ljava/lang/Runnable;

.field private mParserCounts:J

.field private mParserThreads:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcn/real/device/srtparser/JSrtParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/real/device/srtparser/JSrtParser;->mCountsPerThread:J

    .line 31
    const-wide/16 v0, 0x64

    sput-wide v0, Lcn/real/device/srtparser/JSrtParser;->mCountsMainThread:J

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcn/real/device/srtparser/JSrtParser;->mCancelThreads:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;

    .line 25
    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser;->mFilePath:Ljava/lang/String;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/srtparser/JSrtParser;->mParserCounts:J

    .line 28
    iput v2, p0, Lcn/real/device/srtparser/JSrtParser;->mParserThreads:I

    .line 29
    iput v2, p0, Lcn/real/device/srtparser/JSrtParser;->mFinshedParserThreads:I

    .line 303
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser;->mMultiThreadHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcn/real/device/srtparser/JSrtParser$1;

    invoke-direct {v0, p0}, Lcn/real/device/srtparser/JSrtParser$1;-><init>(Lcn/real/device/srtparser/JSrtParser;)V

    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser;->mMultiThreadTask:Ljava/lang/Runnable;

    .line 36
    iput-object p1, p0, Lcn/real/device/srtparser/JSrtParser;->mFilePath:Ljava/lang/String;

    .line 37
    new-instance v0, Lcn/real/device/srtparser/SrtData;

    invoke-direct {v0}, Lcn/real/device/srtparser/SrtData;-><init>()V

    iput-object v0, p0, Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;

    .line 38
    sput-boolean v2, Lcn/real/device/srtparser/JSrtParser;->mCancelThreads:Z

    .line 39
    return-void
.end method

.method private GetStartAndEndTime(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 228
    const-string v0, "((\\d)+:(\\d)+:(\\d)+,(\\d)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 230
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 231
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v4

    .line 232
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v5

    .line 234
    aget-object v0, v2, v4

    if-eqz v0, :cond_0

    aget-object v0, v2, v5

    if-nez v0, :cond_3

    .line 236
    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    .line 231
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 232
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 236
    goto :goto_2
.end method

.method private GetTimes(Ljava/lang/String;)[I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 211
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    const/4 v2, 0x3

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 213
    aget-object v1, v1, v4

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    .line 215
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v5

    .line 216
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    .line 217
    return-object v0
.end method

.method private IsNotTimeStamp(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 221
    const-string v0, "((\\d)+:(\\d)+:(\\d)+,(\\d)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private ParseTimes(Ljava/lang/String;)[J
    .locals 11
    .parameter "inTime"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 176
    const/4 v4, 0x2

    new-array v3, v4, [J

    fill-array-data v3, :array_0

    .line 177
    .local v3, times:[J
    const-wide/16 v4, -0x1

    aput-wide v4, v3, v6

    .line 180
    invoke-direct {p0, p1}, Lcn/real/device/srtparser/JSrtParser;->GetStartAndEndTime(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, startAndEndTimes:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v3

    .line 182
    :cond_1
    aget-object v4, v1, v6

    invoke-direct {p0, v4}, Lcn/real/device/srtparser/JSrtParser;->GetTimes(Ljava/lang/String;)[I

    move-result-object v2

    .line 183
    .local v2, startTimes:[I
    aget-object v4, v1, v8

    invoke-direct {p0, v4}, Lcn/real/device/srtparser/JSrtParser;->GetTimes(Ljava/lang/String;)[I

    move-result-object v0

    .line 184
    .local v0, endTimes:[I
    invoke-direct {p0, v2}, Lcn/real/device/srtparser/JSrtParser;->TimesToMs([I)J

    move-result-wide v4

    aput-wide v4, v3, v6

    .line 185
    invoke-direct {p0, v0}, Lcn/real/device/srtparser/JSrtParser;->TimesToMs([I)J

    move-result-wide v4

    aget-wide v6, v3, v6

    sub-long/2addr v4, v6

    aput-wide v4, v3, v8

    .line 186
    aget-wide v4, v3, v8

    cmp-long v4, v4, v9

    if-gez v4, :cond_0

    .line 189
    aput-wide v9, v3, v8

    goto :goto_0

    .line 176
    nop

    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private TimesToMs([I)J
    .locals 4
    .parameter "times"

    .prologue
    .line 205
    const/4 v2, 0x0

    aget v2, p1, v2

    mul-int/lit16 v2, v2, 0xe10

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p1, v3

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x3

    aget v3, p1, v3

    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 206
    .local v0, ms:J
    return-wide v0
.end method

.method static synthetic access$0(Lcn/real/device/srtparser/JSrtParser;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcn/real/device/srtparser/JSrtParser;->mParserThreads:I

    return v0
.end method

.method static synthetic access$1()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcn/real/device/srtparser/JSrtParser;->mBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcn/real/device/srtparser/JSrtParser;->mCountsMainThread:J

    return-wide v0
.end method

.method static synthetic access$3()J
    .locals 2

    .prologue
    .line 30
    sget-wide v0, Lcn/real/device/srtparser/JSrtParser;->mCountsPerThread:J

    return-wide v0
.end method

.method static synthetic access$4(Lcn/real/device/srtparser/JSrtParser;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcn/real/device/srtparser/JSrtParser;->IsNotTimeStamp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcn/real/device/srtparser/JSrtParser;Ljava/lang/String;)[J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcn/real/device/srtparser/JSrtParser;->ParseTimes(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcn/real/device/srtparser/JSrtParser;)Lcn/real/device/srtparser/SrtData;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcn/real/device/srtparser/JSrtParser;->mCancelThreads:Z

    return v0
.end method

.method static synthetic access$8(Lcn/real/device/srtparser/JSrtParser;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcn/real/device/srtparser/JSrtParser;->mFinshedParserThreads:I

    return v0
.end method

.method static synthetic access$9(Lcn/real/device/srtparser/JSrtParser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcn/real/device/srtparser/JSrtParser;->mFinshedParserThreads:I

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcn/real/device/srtparser/JSrtParser;->mCancelThreads:Z

    .line 43
    return-void
.end method

.method public DoParser()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v10, -0x2

    .line 62
    .local v10, ret:I
    const/4 v3, 0x0

    .line 63
    .local v3, detail:Ljava/lang/String;
    const/4 v1, 0x0

    .line 65
    .local v1, SubTitle:Ljava/lang/StringBuffer;
    const-wide/16 v11, 0x0

    .line 66
    .local v11, size:J
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/real/device/srtparser/JSrtParser;->mFilePath:Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 68
    const/4 v10, -0x1

    .line 171
    .end local v10           #ret:I
    :cond_0
    :goto_0
    return v10

    .line 70
    .restart local v10       #ret:I
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-lez v14, :cond_0

    const-wide/32 v14, 0x4b000

    cmp-long v14, v11, v14

    if-gtz v14, :cond_0

    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, fileFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/real/device/srtparser/JSrtParser;->mFilePath:Ljava/lang/String;

    invoke-static {v14}, Lcn/real/device/FileUtils;->GetFileFormat(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_0

    .line 76
    sget v14, Lcn/real/device/FileUtils;->mFileFormat:I

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 84
    :pswitch_1
    const-string v6, "utf-8"

    .line 100
    :goto_1
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v8, input:Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v9, reader:Ljava/io/BufferedReader;
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 103
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v15, 0x2000

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v14, Lcn/real/device/srtparser/JSrtParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 104
    :goto_2
    if-nez v3, :cond_4

    .line 110
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 111
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    new-instance v13, Ljava/util/StringTokenizer;

    sget-object v14, Lcn/real/device/srtparser/JSrtParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\n"

    invoke-direct {v13, v14, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v13, stoke:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcn/real/device/srtparser/JSrtParser;->mParserCounts:J

    .line 121
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/real/device/srtparser/JSrtParser;->mParserCounts:J

    const-wide/16 v16, 0x64

    cmp-long v14, v14, v16

    if-gtz v14, :cond_6

    .line 122
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcn/real/device/srtparser/JSrtParser;->mParserThreads:I

    .line 123
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/real/device/srtparser/JSrtParser;->mParserCounts:J

    sput-wide v14, Lcn/real/device/srtparser/JSrtParser;->mCountsMainThread:J

    .line 131
    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #SubTitle:Ljava/lang/StringBuffer;
    const/16 v14, 0x200

    invoke-direct {v1, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    .restart local v1       #SubTitle:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 133
    .local v7, hasParseredNum:I
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "++++++++++++++++start to parser in main thread++++++++++++++++"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :cond_2
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v14

    if-nez v14, :cond_7

    .line 169
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/real/device/srtparser/JSrtParser;->mMultiThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/real/device/srtparser/JSrtParser;->mMultiThreadTask:Ljava/lang/Runnable;

    const-wide/16 v16, 0x64

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "#########Parser completed from 0 to "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "#########"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 78
    .end local v7           #hasParseredNum:I
    .end local v8           #input:Ljava/io/InputStream;
    .end local v9           #reader:Ljava/io/BufferedReader;
    .end local v13           #stoke:Ljava/util/StringTokenizer;
    :pswitch_2
    const-string v6, "UTF-16"

    .line 79
    goto/16 :goto_1

    .line 81
    :pswitch_3
    const-string v6, "UTF-16BE"

    .line 82
    goto/16 :goto_1

    .line 87
    :pswitch_4
    const-string v6, "GB2312"

    .line 88
    goto/16 :goto_1

    .line 105
    .restart local v8       #input:Ljava/io/InputStream;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_5

    .line 106
    sget-object v14, Lcn/real/device/srtparser/JSrtParser;->mBuffer:Ljava/lang/StringBuffer;

    const-string v15, "\u0008"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_5
    sget-object v14, Lcn/real/device/srtparser/JSrtParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_2

    .line 112
    .end local v8           #input:Ljava/io/InputStream;
    .end local v9           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 113
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 126
    .end local v4           #e:Ljava/io/IOException;
    .restart local v8       #input:Ljava/io/InputStream;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    .restart local v13       #stoke:Ljava/util/StringTokenizer;
    :cond_6
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcn/real/device/srtparser/JSrtParser;->mParserThreads:I

    .line 127
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcn/real/device/srtparser/JSrtParser;->mParserCounts:J

    const-wide/16 v16, 0x64

    sub-long v14, v14, v16

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    sput-wide v14, Lcn/real/device/srtparser/JSrtParser;->mCountsPerThread:J

    goto/16 :goto_3

    .line 135
    .restart local v7       #hasParseredNum:I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 136
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/real/device/srtparser/JSrtParser;->IsNotTimeStamp(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 140
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/real/device/srtparser/JSrtParser;->ParseTimes(Ljava/lang/String;)[J

    move-result-object v2

    .line 141
    .local v2, Times:[J
    const/4 v14, 0x0

    aget-wide v14, v2, v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    .line 144
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 146
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 147
    add-int/lit8 v7, v7, 0x1

    .line 148
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-gtz v14, :cond_9

    .line 157
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 158
    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 163
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;

    new-instance v15, Lcn/real/device/srtparser/SrtContent;

    invoke-direct {v15, v2, v3}, Lcn/real/device/srtparser/SrtContent;-><init>([JLjava/lang/String;)V

    invoke-virtual {v14, v15}, Lcn/real/device/srtparser/SrtData;->Insert(Lcn/real/device/srtparser/SrtContent;)V

    .line 164
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 165
    int-to-long v14, v7

    sget-wide v16, Lcn/real/device/srtparser/JSrtParser;->mCountsMainThread:J

    cmp-long v14, v14, v16

    if-ltz v14, :cond_2

    goto/16 :goto_4

    .line 149
    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 151
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 152
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 161
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized GetNextSRTSubTitle(J)Lcn/real/device/srtparser/SrtContent;
    .locals 3
    .parameter "nPos"

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    .line 47
    .local v0, temp:Lcn/real/device/srtparser/SrtContent;
    :try_start_0
    invoke-virtual {p0}, Lcn/real/device/srtparser/JSrtParser;->ParserDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/srtparser/SrtData;->QueryNext(J)Lcn/real/device/srtparser/SrtContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 53
    :goto_0
    monitor-exit p0

    return-object v0

    .line 50
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "####Still in Parsering,So Find It in TempMap####"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcn/real/device/srtparser/JSrtParser;->mData:Lcn/real/device/srtparser/SrtData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/srtparser/SrtData;->QueryNextFromTemp(J)Lcn/real/device/srtparser/SrtContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public ParserDone()Z
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcn/real/device/srtparser/JSrtParser;->mFinshedParserThreads:I

    iget v1, p0, Lcn/real/device/srtparser/JSrtParser;->mParserThreads:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
