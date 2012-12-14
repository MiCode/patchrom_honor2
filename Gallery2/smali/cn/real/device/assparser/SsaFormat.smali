.class public Lcn/real/device/assparser/SsaFormat;
.super Ljava/lang/Object;
.source "SsaFormat.java"


# instance fields
.field private final TYPE_FORMAT_EVENT:I

.field private final TYPE_FORMAT_STYLE:I

.field private mEventFormat:[Ljava/lang/String;

.field private mStyleFormat:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcn/real/device/assparser/SsaFormat;->TYPE_FORMAT_STYLE:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcn/real/device/assparser/SsaFormat;->TYPE_FORMAT_EVENT:I

    .line 15
    iput-object v1, p0, Lcn/real/device/assparser/SsaFormat;->mStyleFormat:[Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method private GetEventFormatSize()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method private GetEventTime(Ljava/lang/String;Ljava/util/HashMap;)J
    .locals 10
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, -0x1

    .line 172
    .local v0, index:J
    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    move-wide v2, v0

    .line 185
    .end local v0           #index:J
    .local v2, index:J
    :goto_0
    return-wide v2

    .line 174
    .end local v2           #index:J
    .restart local v0       #index:J
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 175
    .local v6, startTime:Ljava/lang/String;
    const/16 v8, 0x2e

    const/16 v9, 0x2c

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 176
    const-string v8, "((\\d)+:(\\d)+:(\\d)+,(\\d)+)"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 177
    .local v5, p:Ljava/util/regex/Pattern;
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 178
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, temp:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_3

    .line 180
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "the index data in hashmap is error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-wide v2, v0

    .line 181
    .end local v0           #index:J
    .restart local v2       #index:J
    goto :goto_0

    .line 178
    .end local v2           #index:J
    .end local v7           #temp:Ljava/lang/String;
    .restart local v0       #index:J
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 184
    .restart local v7       #temp:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v7}, Lcn/real/device/assparser/SsaFormat;->getTimes(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 185
    .end local v0           #index:J
    .restart local v2       #index:J
    goto :goto_0
.end method

.method private GetMapContent(Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 15
    .parameter "detail"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    move-object v6, v5

    .line 167
    .end local v5           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v6

    .line 101
    .end local v6           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 102
    .local v3, index:I
    if-gez v3, :cond_1

    move-object v6, v5

    .line 103
    .end local v5           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 104
    .end local v6           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, temp:Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, elem:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 107
    .local v7, num:I
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 108
    .restart local v5       #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 109
    .local v2, i:I
    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_1
    move-object v6, v5

    .line 167
    .end local v5           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 111
    .end local v6           #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    invoke-direct {p0}, Lcn/real/device/assparser/SsaFormat;->GetEventFormatSize()I

    move-result v7

    .line 112
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v12, v7, -0x1

    if-lt v2, v12, :cond_4

    .line 115
    array-length v12, v0

    if-le v12, v7, :cond_7

    .line 116
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v11, text:Ljava/lang/StringBuffer;
    add-int/lit8 v4, v7, -0x1

    .local v4, j:I
    :goto_3
    array-length v12, v0

    if-lt v4, v12, :cond_5

    .line 119
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 121
    const/4 v8, -0x1

    .local v8, start:I
    const/4 v1, -0x1

    .line 122
    .local v1, end:I
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, subTitle:Ljava/lang/String;
    const/16 v12, 0x7b

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 124
    :goto_4
    if-gez v8, :cond_6

    .line 133
    :cond_3
    const-string v12, "\n"

    const-string v13, "<br>"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\N"

    const-string v14, "<br>"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 134
    iget-object v12, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 113
    .end local v1           #end:I
    .end local v4           #j:I
    .end local v8           #start:I
    .end local v9           #subTitle:Ljava/lang/String;
    .end local v11           #text:Ljava/lang/StringBuffer;
    :cond_4
    iget-object v12, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v0, v2

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    .restart local v4       #j:I
    .restart local v11       #text:Ljava/lang/StringBuffer;
    :cond_5
    aget-object v12, v0, v4

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x2c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 125
    .restart local v1       #end:I
    .restart local v8       #start:I
    .restart local v9       #subTitle:Ljava/lang/String;
    :cond_6
    const/16 v12, 0x7d

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 126
    if-lez v1, :cond_3

    .line 127
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 131
    const/16 v12, 0x7b

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    goto :goto_4

    .line 136
    .end local v1           #end:I
    .end local v4           #j:I
    .end local v8           #start:I
    .end local v9           #subTitle:Ljava/lang/String;
    .end local v11           #text:Ljava/lang/StringBuffer;
    :cond_7
    array-length v12, v0

    if-ne v12, v7, :cond_a

    .line 138
    const/4 v8, -0x1

    .restart local v8       #start:I
    const/4 v1, -0x1

    .line 139
    .restart local v1       #end:I
    aget-object v12, v0, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 140
    .restart local v9       #subTitle:Ljava/lang/String;
    const/16 v12, 0x7b

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 141
    :goto_5
    if-gez v8, :cond_9

    .line 150
    :cond_8
    const-string v12, "\n"

    const-string v13, "<br>"

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\N"

    const-string v14, "<br>"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 151
    iget-object v12, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 142
    :cond_9
    const/16 v12, 0x7d

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 143
    if-lez v1, :cond_8

    .line 144
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v1, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 148
    const/16 v12, 0x7b

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    goto :goto_5

    .line 155
    .end local v1           #end:I
    .end local v8           #start:I
    .end local v9           #subTitle:Ljava/lang/String;
    :cond_a
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "the event data is error"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcn/real/device/assparser/SsaFormat;->GetStyleFormatSize()I

    move-result v7

    .line 160
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_2

    .line 161
    iget-object v12, p0, Lcn/real/device/assparser/SsaFormat;->mStyleFormat:[Ljava/lang/String;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v0, v2

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private GetStyleFormatSize()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/real/device/assparser/SsaFormat;->mStyleFormat:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/real/device/assparser/SsaFormat;->mStyleFormat:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method private getTimes(Ljava/lang/String;)J
    .locals 14
    .parameter "inTime"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 189
    const/4 v8, 0x4

    new-array v4, v8, [I

    .line 190
    .local v4, times:[I
    const-wide/16 v1, 0x0

    .line 191
    .local v1, ms:J
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, tmp:[Ljava/lang/String;
    array-length v8, v5

    if-gt v8, v10, :cond_0

    .line 205
    :goto_0
    return-wide v6

    .line 194
    :cond_0
    aget-object v8, v5, v11

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, time:[Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v8

    .line 197
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v8

    .line 198
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v8

    .line 199
    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v4, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    aget v6, v4, v11

    mul-int/lit16 v6, v6, 0xe10

    aget v7, v4, v10

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    aget v7, v4, v12

    add-int/2addr v6, v7

    mul-int/lit16 v6, v6, 0x3e8

    aget v7, v4, v13

    add-int/2addr v6, v7

    int-to-long v1, v6

    move-wide v6, v1

    .line 205
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public GetEventContent(Ljava/lang/String;)Lcn/real/device/assparser/SsaContent;
    .locals 9
    .parameter "detail"

    .prologue
    const-wide/16 v7, -0x1

    .line 73
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcn/real/device/assparser/SsaFormat;->GetMapContent(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v2

    .line 74
    .local v2, mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "start"

    invoke-direct {p0, v6, v2}, Lcn/real/device/assparser/SsaFormat;->GetEventTime(Ljava/lang/String;Ljava/util/HashMap;)J

    move-result-wide v3

    .line 75
    .local v3, start:J
    const-string v6, "end"

    invoke-direct {p0, v6, v2}, Lcn/real/device/assparser/SsaFormat;->GetEventTime(Ljava/lang/String;Ljava/util/HashMap;)J

    move-result-wide v0

    .line 76
    .local v0, end:J
    cmp-long v6, v3, v7

    if-eqz v6, :cond_0

    cmp-long v6, v0, v7

    if-eqz v6, :cond_0

    cmp-long v6, v3, v0

    if-lez v6, :cond_1

    .line 77
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "error found in start/end timestamp"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const/4 v5, 0x0

    .line 85
    :goto_0
    return-object v5

    .line 81
    :cond_1
    const-string v6, "duration"

    sub-long v7, v0, v3

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v5, Lcn/real/device/assparser/SsaContent;

    invoke-direct {v5, v3, v4, v2}, Lcn/real/device/assparser/SsaContent;-><init>(JLjava/util/HashMap;)V

    .line 85
    .local v5, temp:Lcn/real/device/assparser/SsaContent;
    goto :goto_0
.end method

.method public GetStyleContent(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .parameter "detail"
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
    .line 91
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/real/device/assparser/SsaFormat;->GetMapContent(Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

    .line 92
    .local v0, mapDat:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public SetEventFormat(Ljava/lang/String;)V
    .locals 3
    .parameter "detail"

    .prologue
    .line 23
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/real/device/assparser/SsaFormat;->mEventFormat:[Ljava/lang/String;

    goto :goto_0
.end method

.method public SetStyleFormat(Ljava/lang/String;)V
    .locals 3
    .parameter "detail"

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/real/device/assparser/SsaFormat;->mStyleFormat:[Ljava/lang/String;

    goto :goto_0
.end method
