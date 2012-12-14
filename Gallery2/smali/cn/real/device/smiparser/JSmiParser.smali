.class public Lcn/real/device/smiparser/JSmiParser;
.super Ljava/lang/Object;
.source "JSmiParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/smiparser/JSmiParser$SomeParserThread;
    }
.end annotation


# static fields
.field private static mBuffer:Ljava/lang/StringBuffer;

.field private static mCancelThreads:Z

.field private static mCountsMainThread:J

.field private static mCountsPerThread:J


# instance fields
.field private mData:Lcn/real/device/smiparser/SmiData;

.field private mFilePath:Ljava/lang/String;

.field private mFinshedParserThreads:I

.field private final mMultiThreadHandler:Landroid/os/Handler;

.field private final mMultiThreadTask:Ljava/lang/Runnable;

.field private mParserCounts:J

.field private mParserThreads:I

.field private mTypeData:Lcn/real/device/smiparser/SmiTypeData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/real/device/smiparser/JSmiParser;->mCountsPerThread:J

    .line 18
    const-wide/16 v0, 0x32

    sput-wide v0, Lcn/real/device/smiparser/JSmiParser;->mCountsMainThread:J

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcn/real/device/smiparser/JSmiParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcn/real/device/smiparser/JSmiParser;->mCancelThreads:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v3, p0, Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;

    .line 20
    iput-object v3, p0, Lcn/real/device/smiparser/JSmiParser;->mFilePath:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserCounts:J

    .line 22
    iput v2, p0, Lcn/real/device/smiparser/JSmiParser;->mParserThreads:I

    .line 23
    iput v2, p0, Lcn/real/device/smiparser/JSmiParser;->mFinshedParserThreads:I

    .line 24
    iput-object v3, p0, Lcn/real/device/smiparser/JSmiParser;->mTypeData:Lcn/real/device/smiparser/SmiTypeData;

    .line 348
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mMultiThreadHandler:Landroid/os/Handler;

    .line 349
    new-instance v0, Lcn/real/device/smiparser/JSmiParser$1;

    invoke-direct {v0, p0}, Lcn/real/device/smiparser/JSmiParser$1;-><init>(Lcn/real/device/smiparser/JSmiParser;)V

    iput-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mMultiThreadTask:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcn/real/device/smiparser/JSmiParser;->mFilePath:Ljava/lang/String;

    .line 30
    new-instance v0, Lcn/real/device/smiparser/SmiData;

    invoke-direct {v0}, Lcn/real/device/smiparser/SmiData;-><init>()V

    iput-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;

    .line 31
    sput-boolean v2, Lcn/real/device/smiparser/JSmiParser;->mCancelThreads:Z

    .line 32
    return-void
.end method

.method private ParserBody(Ljava/lang/String;)I
    .locals 12
    .parameter

    .prologue
    .line 150
    const/4 v8, -0x2

    .line 151
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\n"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v1, Lcn/real/device/smiparser/JSmiParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 153
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    new-instance v9, Ljava/util/StringTokenizer;

    sget-object v0, Lcn/real/device/smiparser/JSmiParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserCounts:J

    .line 165
    iget-wide v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserCounts:J

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserThreads:I

    .line 167
    iget-wide v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserCounts:J

    sput-wide v0, Lcn/real/device/smiparser/JSmiParser;->mCountsMainThread:J

    .line 174
    :goto_1
    const/4 v0, 0x0

    .line 182
    :goto_2
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_4

    move v7, v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mMultiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/real/device/smiparser/JSmiParser;->mMultiThreadTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#########Parser completed from 0 to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#########"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<sync start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    sget-object v2, Lcn/real/device/smiparser/JSmiParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    :cond_2
    sget-object v2, Lcn/real/device/smiparser/JSmiParser;->mBuffer:Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserThreads:I

    .line 171
    iget-wide v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserCounts:J

    const-wide/16 v2, 0x32

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcn/real/device/smiparser/JSmiParser;->mCountsPerThread:J

    goto :goto_1

    .line 183
    :cond_4
    add-int/lit8 v7, v0, 0x1

    .line 184
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ">&nbsp;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    if-ltz v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    move v0, v7

    .line 188
    goto/16 :goto_2

    .line 191
    :cond_5
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 192
    if-gez v2, :cond_6

    move v0, v7

    .line 193
    goto/16 :goto_2

    .line 194
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v3, "(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 197
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v10, v4

    .line 200
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v10, v4

    .line 202
    const/4 v0, 0x0

    aget-object v0, v10, v0

    if-nez v0, :cond_9

    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####the start TimeStamp is Not Invalid,Skip One SubTitle####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v7

    .line 204
    goto/16 :goto_2

    .line 198
    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    .line 200
    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    .line 208
    :cond_9
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 210
    if-lez v0, :cond_b

    .line 211
    const/16 v0, 0x3e

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 212
    const/16 v1, 0x3d

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 213
    if-ltz v0, :cond_d

    if-ltz v1, :cond_d

    if-lt v1, v0, :cond_a

    move v0, v7

    .line 215
    goto/16 :goto_2

    .line 217
    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 218
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    :goto_6
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v10, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 227
    const-wide/16 v3, 0x7d0

    .line 228
    const/4 v0, 0x1

    aget-object v0, v10, v0

    if-eqz v0, :cond_c

    .line 230
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 231
    const-wide/16 v10, 0x0

    cmp-long v0, v3, v10

    if-gez v0, :cond_c

    move v0, v7

    .line 232
    goto/16 :goto_2

    .line 222
    :cond_b
    const/4 v6, 0x0

    .line 223
    goto :goto_6

    .line 239
    :cond_c
    iget-object v10, p0, Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;

    new-instance v0, Lcn/real/device/smiparser/SmiContent;

    invoke-direct/range {v0 .. v6}, Lcn/real/device/smiparser/SmiContent;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lcn/real/device/smiparser/SmiData;->Insert(Lcn/real/device/smiparser/SmiContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    int-to-long v0, v7

    sget-wide v2, Lcn/real/device/smiparser/JSmiParser;->mCountsMainThread:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :cond_d
    move v0, v7

    goto/16 :goto_2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "####SYNC is Not Invalid, please Check the SMI File####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v8

    .line 243
    goto/16 :goto_3
.end method

.method private ParserHead(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "</style>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 128
    if-eq v0, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 147
    :cond_0
    return-void

    .line 130
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-direct {v2, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v0, Lcn/real/device/smiparser/SmiTypeData;

    invoke-direct {v0}, Lcn/real/device/smiparser/SmiTypeData;-><init>()V

    iput-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mTypeData:Lcn/real/device/smiparser/SmiTypeData;

    .line 143
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcn/real/device/smiparser/JSmiParser;->mTypeData:Lcn/real/device/smiparser/SmiTypeData;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcn/real/device/smiparser/SmiTypeData;->DoTypesParser(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic access$0(Lcn/real/device/smiparser/JSmiParser;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcn/real/device/smiparser/JSmiParser;->mParserThreads:I

    return v0
.end method

.method static synthetic access$1()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/real/device/smiparser/JSmiParser;->mBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcn/real/device/smiparser/JSmiParser;->mCountsMainThread:J

    return-wide v0
.end method

.method static synthetic access$3()J
    .locals 2

    .prologue
    .line 17
    sget-wide v0, Lcn/real/device/smiparser/JSmiParser;->mCountsPerThread:J

    return-wide v0
.end method

.method static synthetic access$4(Lcn/real/device/smiparser/JSmiParser;)Lcn/real/device/smiparser/SmiData;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;

    return-object v0
.end method

.method static synthetic access$5()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcn/real/device/smiparser/JSmiParser;->mCancelThreads:Z

    return v0
.end method

.method static synthetic access$6(Lcn/real/device/smiparser/JSmiParser;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcn/real/device/smiparser/JSmiParser;->mFinshedParserThreads:I

    return v0
.end method

.method static synthetic access$7(Lcn/real/device/smiparser/JSmiParser;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcn/real/device/smiparser/JSmiParser;->mFinshedParserThreads:I

    return-void
.end method


# virtual methods
.method public Close()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcn/real/device/smiparser/JSmiParser;->mCancelThreads:Z

    .line 36
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
    .line 61
    const/16 v0, 0x2000

    .line 62
    .local v0, MAX_SIZE:I
    const/4 v4, -0x1

    .line 63
    .local v4, nRead:I
    const/4 v5, -0x2

    .line 64
    .local v5, ret:I
    const/4 v7, -0x1

    .local v7, x1:I
    const/4 v8, -0x1

    .local v8, x2:I
    const/4 v9, -0x1

    .local v9, y1:I
    const/4 v10, -0x1

    .line 66
    .local v10, y2:I
    const/4 v2, 0x0

    .line 67
    .local v2, fileFormat:Ljava/lang/String;
    iget-object v11, p0, Lcn/real/device/smiparser/JSmiParser;->mFilePath:Ljava/lang/String;

    invoke-static {v11}, Lcn/real/device/FileUtils;->GetFileFormat(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 68
    sget v11, Lcn/real/device/FileUtils;->mFileFormat:I

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move v11, v5

    .line 121
    :goto_0
    return v11

    .line 70
    :pswitch_1
    const-string v2, "UTF-16"

    .line 91
    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v6, tmpBuffer:Ljava/lang/StringBuffer;
    new-array v1, v0, [B

    .line 93
    .local v1, barray:[B
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    iget-object v12, p0, Lcn/real/device/smiparser/JSmiParser;->mFilePath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v3, input:Ljava/io/BufferedInputStream;
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v3, v1, v11, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 97
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 100
    const-string v11, "<BODY>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 101
    const/4 v11, -0x1

    if-ne v8, v11, :cond_3

    .line 102
    const-string v11, "<head>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 103
    const-string v11, "</head>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 104
    const-string v11, "<body>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 105
    const-string v11, "</body>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 112
    :goto_3
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    sub-int v11, v10, v8

    const/4 v12, 0x6

    if-gt v11, v12, :cond_4

    .line 113
    :cond_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "####Error, please Check the SMI File####"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    const/4 v11, -0x2

    goto :goto_0

    .line 73
    .end local v1           #barray:[B
    .end local v3           #input:Ljava/io/BufferedInputStream;
    .end local v6           #tmpBuffer:Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v2, "UTF-16BE"

    .line 74
    goto :goto_1

    .line 76
    :pswitch_3
    const-string v2, "utf-8"

    .line 77
    goto :goto_1

    .line 79
    :pswitch_4
    const-string v2, "GB2312"

    .line 80
    goto :goto_1

    :cond_1
    move v11, v5

    .line 88
    goto :goto_0

    .line 95
    .restart local v1       #barray:[B
    .restart local v3       #input:Ljava/io/BufferedInputStream;
    .restart local v6       #tmpBuffer:Ljava/lang/StringBuffer;
    :cond_2
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 108
    :cond_3
    const-string v11, "<HEAD>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 109
    const-string v11, "</HEAD>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 110
    const-string v11, "</BODY>"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    .line 117
    :cond_4
    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    const/4 v11, -0x1

    if-eq v9, v11, :cond_5

    sub-int v11, v9, v7

    const/4 v12, 0x6

    if-le v11, v12, :cond_5

    .line 118
    add-int/lit8 v11, v7, 0x6

    invoke-virtual {v6, v11, v9}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcn/real/device/smiparser/JSmiParser;->ParserHead(Ljava/lang/String;)V

    .line 120
    :cond_5
    add-int/lit8 v11, v8, 0x6

    invoke-virtual {v6, v11, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcn/real/device/smiparser/JSmiParser;->ParserBody(Ljava/lang/String;)I

    move-result v5

    move v11, v5

    .line 121
    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized GetNextSmiSubTitle(J)Lcn/real/device/smiparser/SmiContent;
    .locals 3
    .parameter "nPos"

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x0

    .line 40
    .local v0, temp:Lcn/real/device/smiparser/SmiContent;
    :try_start_0
    invoke-virtual {p0}, Lcn/real/device/smiparser/JSmiParser;->ParserDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/smiparser/SmiData;->QueryNext(J)Lcn/real/device/smiparser/SmiContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 46
    :goto_0
    monitor-exit p0

    return-object v0

    .line 43
    :cond_0
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "####Still in Parsering,So Find It in TempMap####"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcn/real/device/smiparser/JSmiParser;->mData:Lcn/real/device/smiparser/SmiData;

    invoke-virtual {v1, p1, p2}, Lcn/real/device/smiparser/SmiData;->QueryNextFromTemp(J)Lcn/real/device/smiparser/SmiContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 39
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
    .line 54
    iget-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mTypeData:Lcn/real/device/smiparser/SmiTypeData;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/real/device/smiparser/JSmiParser;->mTypeData:Lcn/real/device/smiparser/SmiTypeData;

    invoke-virtual {v0, p1}, Lcn/real/device/smiparser/SmiTypeData;->GetTypesByName(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ParserDone()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcn/real/device/smiparser/JSmiParser;->mFinshedParserThreads:I

    iget v1, p0, Lcn/real/device/smiparser/JSmiParser;->mParserThreads:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
