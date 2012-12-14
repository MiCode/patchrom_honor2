.class public Lcn/real/device/subidxparser/VobSubFileHandler;
.super Ljava/lang/Object;
.source "VobSubFileHandler.java"


# instance fields
.field private BColor:I

.field private COLOR_TABLE:[I

.field private E1Color:I

.field private E2Color:I

.field private PColor:I

.field private b_ptr:I

.field private buffer:[B

.field private isBTransparency:Z

.field private isE1Transparency:Z

.field private isE2Transparency:Z

.field private isPTransparency:Z

.field private mDisplayH:I

.field private mDisplayW:I

.field private mDuration:J

.field private mFileHandler:Ljava/io/RandomAccessFile;

.field private mFileName:Ljava/lang/String;

.field private mHeight:I

.field private mOffset1:I

.field private mOffset2:I

.field private mWidth:I

.field private ptr:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileHandler:Ljava/io/RandomAccessFile;

    .line 19
    iput-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    .line 20
    iput-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileName:Ljava/lang/String;

    .line 21
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mWidth:I

    .line 22
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mHeight:I

    .line 23
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    .line 24
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    .line 25
    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J

    .line 26
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayW:I

    .line 27
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayH:I

    .line 28
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    .line 29
    const/16 v1, 0x80

    iput v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    .line 31
    iput-boolean v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isBTransparency:Z

    .line 32
    iput-boolean v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isPTransparency:Z

    .line 33
    iput-boolean v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isE1Transparency:Z

    .line 34
    iput-boolean v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isE2Transparency:Z

    .line 36
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->BColor:I

    .line 37
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->PColor:I

    .line 38
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->E1Color:I

    .line 39
    iput v3, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->E2Color:I

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 62
    iput-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->COLOR_TABLE:[I

    .line 214
    iput-object p1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileName:Ljava/lang/String;

    .line 216
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileName:Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileHandler:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xaat 0xaat 0xaat 0xfft
    .end array-data
.end method

.method private ByteAlign()V
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    .line 133
    const/16 v0, 0x80

    iput v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    .line 135
    :cond_0
    return-void
.end method

.method private EvaluateCmnd(I)V
    .locals 7
    .parameter "cmnd"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 141
    sparse-switch p1, :sswitch_data_0

    .line 204
    :goto_0
    :sswitch_0
    return-void

    .line 156
    :sswitch_1
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->E2Color:I

    .line 157
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->E1Color:I

    .line 158
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->PColor:I

    .line 159
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->BColor:I

    goto :goto_0

    .line 168
    :sswitch_2
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isE2Transparency:Z

    .line 169
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isE1Transparency:Z

    .line 170
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isPTransparency:Z

    .line 171
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    if-nez v4, :cond_3

    :goto_4
    iput-boolean v5, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->isBTransparency:Z

    goto :goto_0

    :cond_0
    move v4, v6

    .line 168
    goto :goto_1

    :cond_1
    move v4, v6

    .line 169
    goto :goto_2

    :cond_2
    move v4, v6

    .line 170
    goto :goto_3

    :cond_3
    move v5, v6

    .line 171
    goto :goto_4

    .line 180
    :sswitch_3
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v5

    or-int v0, v4, v5

    .line 181
    .local v0, x1:I
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v5

    or-int v1, v4, v5

    .line 182
    .local v1, x2:I
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v5

    or-int v2, v4, v5

    .line 183
    .local v2, y1:I
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v5

    or-int v3, v4, v5

    .line 185
    .local v3, y2:I
    sub-int v4, v1, v0

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mWidth:I

    .line 186
    sub-int v4, v3, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mHeight:I

    goto/16 :goto_0

    .line 191
    .end local v0           #x1:I
    .end local v1           #x2:I
    .end local v2           #y1:I
    .end local v3           #y2:I
    :sswitch_4
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    .line 192
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    goto/16 :goto_0

    .line 141
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private GetByte()I
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v2

    or-int v0, v1, v2

    .line 99
    .local v0, res:I
    return v0
.end method

.method private GetNibble()I
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, res:I
    :try_start_0
    iget v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    if-ne v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    iget v2, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v0, v1, 0x4

    .line 82
    const/16 v1, 0x8

    iput v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    .line 91
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    iget v2, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v0, v1, 0xf

    .line 85
    iget v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    .line 86
    const/16 v1, 0x80

    iput v1, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private GetVLC()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 106
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v0

    .line 107
    .local v0, res:I
    if-lt v0, v4, :cond_0

    move v1, v0

    .line 126
    .end local v0           #res:I
    .local v1, res:I
    :goto_0
    return v1

    .line 108
    .end local v1           #res:I
    .restart local v0       #res:I
    :cond_0
    if-lt v0, v2, :cond_1

    if-gt v0, v3, :cond_1

    .line 109
    shl-int/lit8 v0, v0, 0x4

    .line 110
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v2

    or-int/2addr v0, v2

    move v1, v0

    .line 111
    .end local v0           #res:I
    .restart local v1       #res:I
    goto :goto_0

    .line 114
    .end local v1           #res:I
    .restart local v0       #res:I
    :cond_1
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v0

    .line 115
    if-lt v0, v4, :cond_2

    .line 116
    shl-int/lit8 v0, v0, 0x4

    .line 117
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetNibble()I

    move-result v2

    or-int/2addr v0, v2

    move v1, v0

    .line 118
    .end local v0           #res:I
    .restart local v1       #res:I
    goto :goto_0

    .line 120
    .end local v1           #res:I
    .restart local v0       #res:I
    :cond_2
    if-lt v0, v2, :cond_3

    if-gt v0, v3, :cond_3

    .line 121
    shl-int/lit8 v0, v0, 0x8

    .line 122
    invoke-direct {p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v2

    or-int/2addr v0, v2

    move v1, v0

    .line 123
    .end local v0           #res:I
    .restart local v1       #res:I
    goto :goto_0

    .end local v1           #res:I
    .restart local v0       #res:I
    :cond_3
    move v1, v0

    .line 126
    .end local v0           #res:I
    .restart local v1       #res:I
    goto :goto_0
.end method

.method private ResetParameter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    .line 208
    iput v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    .line 209
    iput v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mWidth:I

    .line 210
    iput v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mHeight:I

    .line 211
    return-void
.end method


# virtual methods
.method public GetDuration()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J

    return-wide v0
.end method

.method public GetHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayH:I

    return v0
.end method

.method public GetRawData(J)Landroid/graphics/Bitmap;
    .locals 54
    .parameter "filepos"

    .prologue
    .line 265
    const/16 v29, 0x0

    .line 266
    .local v29, len:I
    const/4 v13, 0x0

    .line 267
    .local v13, cmnd:I
    const/16 v31, 0x0

    .line 268
    .local v31, nRead:I
    const/16 v37, 0x0

    .line 269
    .local v37, to_write:I
    const/16 v17, 0x0

    .line 270
    .local v17, data_ptr:I
    const/4 v10, 0x0

    .line 271
    .local v10, buff_ptr:I
    const/16 v4, 0x30

    .line 272
    .local v4, MaxSize:I
    const/4 v8, 0x0

    .line 273
    .local v8, blockSize:I
    const/4 v6, 0x0

    .line 274
    .local v6, actualSize:I
    const/16 v21, 0x0

    .line 275
    .local v21, extendSize:I
    const/16 v33, 0x0

    .line 276
    .local v33, packet_size:I
    const/16 v16, 0x0

    .line 277
    .local v16, data_packet_size:I
    :try_start_0
    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 278
    .local v24, head:[B
    const/4 v15, 0x0

    check-cast v15, [B

    .line 280
    .local v15, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileHandler:Ljava/io/RandomAccessFile;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileHandler:Ljava/io/RandomAccessFile;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v24

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v31

    .line 282
    move/from16 v0, v31

    if-ge v0, v4, :cond_1

    .line 283
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v51, "####Got the wrong size at the header####"

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    const/16 v32, 0x0

    .line 526
    .end local v15           #data:[B
    .end local v24           #head:[B
    :cond_0
    :goto_0
    return-object v32

    .line 286
    .restart local v15       #data:[B
    .restart local v24       #head:[B
    :cond_1
    const/16 v50, 0x16

    aget-byte v50, v24, v50

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 287
    add-int/lit8 v50, v21, 0x17

    add-int/lit8 v29, v50, 0x1

    .line 288
    const/16 v50, 0x12

    aget-byte v50, v24, v50

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    shl-int/lit8 v50, v50, 0x8

    const/16 v51, 0x13

    aget-byte v51, v24, v51

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    or-int v6, v50, v51

    .line 289
    add-int/lit8 v50, v29, 0x0

    aget-byte v50, v24, v50

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    shl-int/lit8 v50, v50, 0x8

    add-int/lit8 v51, v29, 0x1

    aget-byte v51, v24, v51

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    or-int v33, v50, v51

    .line 290
    add-int/lit8 v50, v29, 0x2

    aget-byte v50, v24, v50

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    shl-int/lit8 v50, v50, 0x8

    add-int/lit8 v51, v29, 0x3

    aget-byte v51, v24, v51

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    or-int v16, v50, v51

    .line 291
    move/from16 v0, v33

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 292
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v51, "####Got the wrong size at the packet info####"

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    const/16 v32, 0x0

    goto :goto_0

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileHandler:Ljava/io/RandomAccessFile;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 296
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x400

    move/from16 v50, v0

    move/from16 v0, v50

    new-array v15, v0, [B

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mFileHandler:Ljava/io/RandomAccessFile;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v31

    .line 298
    move/from16 v37, v33

    .line 299
    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    .line 300
    :goto_1
    if-gtz v37, :cond_5

    .line 321
    add-int/lit8 v12, v16, 0x18

    .line 322
    .local v12, cmdSizeValue:I
    div-int/lit16 v0, v12, 0x100

    move/from16 v25, v0

    .line 323
    .local v25, highValue:I
    rem-int/lit16 v0, v12, 0x100

    move/from16 v30, v0

    .line 324
    .local v30, lowValue:I
    add-int/lit8 v20, v33, -0x1

    .line 325
    .local v20, end:I
    const/16 v39, 0x0

    .line 326
    .local v39, tryCount:I
    const/16 v35, 0x0

    .line 328
    .local v35, ptrEnd:I
    :goto_2
    add-int/lit8 v50, v16, -0x2

    move/from16 v0, v20

    move/from16 v1, v50

    if-le v0, v1, :cond_9

    .line 341
    :cond_3
    :goto_3
    add-int/lit8 v50, v16, -0x2

    move/from16 v0, v20

    move/from16 v1, v50

    if-ge v0, v1, :cond_c

    .line 342
    add-int/lit8 v35, v33, -0x1

    .line 348
    :goto_4
    add-int/lit8 v50, v16, 0x4

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    .line 349
    const/16 v50, 0x80

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    .line 350
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->ResetParameter()V

    move/from16 v40, v39

    .line 351
    .end local v39           #tryCount:I
    .local v40, tryCount:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v35

    if-le v0, v1, :cond_d

    move/from16 v39, v40

    .line 359
    .end local v40           #tryCount:I
    .restart local v39       #tryCount:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mWidth:I

    move/from16 v50, v0

    if-lez v50, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mHeight:I

    move/from16 v50, v0

    if-lez v50, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mWidth:I

    move/from16 v50, v0

    const/16 v51, 0x3e8

    move/from16 v0, v50

    move/from16 v1, v51

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mHeight:I

    move/from16 v50, v0

    const/16 v51, 0x3e8

    move/from16 v0, v50

    move/from16 v1, v51

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_f

    .line 360
    :cond_4
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v51, "#################Break at the Invalid Value###################"

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 301
    .end local v12           #cmdSizeValue:I
    .end local v20           #end:I
    .end local v25           #highValue:I
    .end local v30           #lowValue:I
    .end local v35           #ptrEnd:I
    .end local v39           #tryCount:I
    :cond_5
    add-int/lit8 v50, v17, 0x12

    aget-byte v50, v15, v50

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    shl-int/lit8 v50, v50, 0x8

    add-int/lit8 v51, v17, 0x13

    aget-byte v51, v15, v51

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    or-int v6, v50, v51

    .line 302
    add-int/lit8 v50, v17, 0x16

    aget-byte v50, v15, v50
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 303
    add-int/lit8 v50, v21, 0x17

    add-int/lit8 v29, v50, 0x1

    .line 305
    add-int v17, v17, v29

    .line 306
    add-int v50, v37, v29

    const/16 v51, 0x800

    move/from16 v0, v50

    move/from16 v1, v51

    if-gt v0, v1, :cond_7

    .line 307
    const/16 v26, 0x0

    .local v26, i:I
    move v11, v10

    .end local v10           #buff_ptr:I
    .local v11, buff_ptr:I
    move/from16 v18, v17

    .end local v17           #data_ptr:I
    .local v18, data_ptr:I
    :goto_7
    move/from16 v0, v26

    move/from16 v1, v37

    if-lt v0, v1, :cond_6

    .line 310
    const/16 v37, 0x0

    move v10, v11

    .end local v11           #buff_ptr:I
    .restart local v10       #buff_ptr:I
    move/from16 v17, v18

    .end local v18           #data_ptr:I
    .restart local v17       #data_ptr:I
    goto/16 :goto_1

    .line 308
    .end local v10           #buff_ptr:I
    .end local v17           #data_ptr:I
    .restart local v11       #buff_ptr:I
    .restart local v18       #data_ptr:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v50, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v10, v11, 0x1

    .end local v11           #buff_ptr:I
    .restart local v10       #buff_ptr:I
    add-int/lit8 v17, v18, 0x1

    .end local v18           #data_ptr:I
    .restart local v17       #data_ptr:I
    :try_start_2
    aget-byte v51, v15, v18

    aput-byte v51, v50, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    add-int/lit8 v26, v26, 0x1

    move v11, v10

    .end local v10           #buff_ptr:I
    .restart local v11       #buff_ptr:I
    move/from16 v18, v17

    .end local v17           #data_ptr:I
    .restart local v18       #data_ptr:I
    goto :goto_7

    .line 313
    .end local v11           #buff_ptr:I
    .end local v18           #data_ptr:I
    .end local v26           #i:I
    .restart local v10       #buff_ptr:I
    .restart local v17       #data_ptr:I
    :cond_7
    sub-int v50, v6, v29

    add-int/lit8 v8, v50, 0x14

    .line 314
    const/16 v26, 0x0

    .restart local v26       #i:I
    move v11, v10

    .end local v10           #buff_ptr:I
    .restart local v11       #buff_ptr:I
    move/from16 v18, v17

    .end local v17           #data_ptr:I
    .restart local v18       #data_ptr:I
    :goto_8
    move/from16 v0, v26

    if-lt v0, v8, :cond_8

    .line 317
    sub-int v37, v37, v8

    move v10, v11

    .end local v11           #buff_ptr:I
    .restart local v10       #buff_ptr:I
    move/from16 v17, v18

    .end local v18           #data_ptr:I
    .restart local v17       #data_ptr:I
    goto/16 :goto_1

    .line 315
    .end local v10           #buff_ptr:I
    .end local v17           #data_ptr:I
    .restart local v11       #buff_ptr:I
    .restart local v18       #data_ptr:I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v50, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v10, v11, 0x1

    .end local v11           #buff_ptr:I
    .restart local v10       #buff_ptr:I
    add-int/lit8 v17, v18, 0x1

    .end local v18           #data_ptr:I
    .restart local v17       #data_ptr:I
    :try_start_4
    aget-byte v51, v15, v18

    aput-byte v51, v50, v11

    .line 314
    add-int/lit8 v26, v26, 0x1

    move v11, v10

    .end local v10           #buff_ptr:I
    .restart local v11       #buff_ptr:I
    move/from16 v18, v17

    .end local v17           #data_ptr:I
    .restart local v18       #data_ptr:I
    goto :goto_8

    .line 329
    .end local v11           #buff_ptr:I
    .end local v18           #data_ptr:I
    .end local v26           #i:I
    .restart local v10       #buff_ptr:I
    .restart local v12       #cmdSizeValue:I
    .restart local v17       #data_ptr:I
    .restart local v20       #end:I
    .restart local v25       #highValue:I
    .restart local v30       #lowValue:I
    .restart local v35       #ptrEnd:I
    .restart local v39       #tryCount:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v50, v0

    add-int/lit8 v51, v20, -0x1

    aget-byte v50, v50, v51

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v50, v0

    aget-byte v50, v50, v20

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v50, v0

    add-int/lit8 v51, v20, -0x3

    aget-byte v50, v50, v51

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0xff

    move/from16 v50, v0

    mul-int/lit8 v50, v50, 0xa

    shl-int/lit8 v50, v50, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v51, v0

    add-int/lit8 v52, v20, -0x2

    aget-byte v51, v51, v52

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xff

    move/from16 v51, v0

    or-int v50, v50, v51

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J

    .line 331
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x3e8

    cmp-long v50, v50, v52

    if-gez v50, :cond_a

    .line 332
    const-wide/16 v50, 0x3e8

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 523
    .end local v12           #cmdSizeValue:I
    .end local v15           #data:[B
    .end local v20           #end:I
    .end local v24           #head:[B
    .end local v25           #highValue:I
    .end local v30           #lowValue:I
    .end local v35           #ptrEnd:I
    .end local v39           #tryCount:I
    :catch_0
    move-exception v19

    .line 524
    .local v19, e:Ljava/lang/Exception;
    :goto_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 333
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v12       #cmdSizeValue:I
    .restart local v15       #data:[B
    .restart local v20       #end:I
    .restart local v24       #head:[B
    .restart local v25       #highValue:I
    .restart local v30       #lowValue:I
    .restart local v35       #ptrEnd:I
    .restart local v39       #tryCount:I
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J

    move-wide/from16 v50, v0

    const-wide/16 v52, 0x7530

    cmp-long v50, v50, v52

    if-ltz v50, :cond_3

    .line 334
    const-wide/16 v50, 0x7d0

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/real/device/subidxparser/VobSubFileHandler;->mDuration:J

    goto/16 :goto_3

    .line 337
    :cond_b
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v51, Ljava/lang/StringBuilder;

    const-string v52, "buff_ptr["

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v52, v20, -0x1

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "]=####!!!!"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v52, v0

    add-int/lit8 v53, v20, -0x1

    aget-byte v52, v52, v53

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v51, Ljava/lang/StringBuilder;

    const-string v52, "next ptr=####!!!!"

    invoke-direct/range {v51 .. v52}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->buffer:[B

    move-object/from16 v52, v0

    aget-byte v52, v52, v20

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    .line 345
    :cond_c
    add-int/lit8 v35, v20, -0x5

    goto/16 :goto_4

    .line 352
    .end local v39           #tryCount:I
    .restart local v40       #tryCount:I
    :cond_d
    add-int/lit8 v39, v40, 0x1

    .end local v40           #tryCount:I
    .restart local v39       #tryCount:I
    const/16 v50, 0x1e

    move/from16 v0, v40

    move/from16 v1, v50

    if-le v0, v1, :cond_e

    .line 353
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v51, "#################break at tryCount++>30###################"

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 356
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    move-result v13

    .line 357
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcn/real/device/subidxparser/VobSubFileHandler;->EvaluateCmnd(I)V

    move/from16 v40, v39

    .end local v39           #tryCount:I
    .restart local v40       #tryCount:I
    goto/16 :goto_5

    .line 367
    .end local v40           #tryCount:I
    .restart local v39       #tryCount:I
    :cond_f
    const/4 v5, 0x0

    .line 368
    .local v5, VLC:I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mWidth:I

    move/from16 v50, v0

    mul-int/lit8 v50, v50, 0x2

    add-int/lit8 v46, v50, 0x1

    .line 369
    .local v46, xOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mHeight:I

    move/from16 v50, v0

    mul-int/lit8 v50, v50, 0x2

    add-int/lit8 v49, v50, 0x2

    .line 370
    .local v49, yOffset:I
    move/from16 v0, v46

    move/from16 v1, v49

    filled-new-array {v0, v1}, [I

    move-result-object v50

    sget-object v51, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 371
    .local v7, bitmap:[[I
    const/16 v26, 0x0

    .restart local v26       #i:I
    :goto_a
    move/from16 v0, v26

    move/from16 v1, v46

    if-lt v0, v1, :cond_16

    .line 374
    const/16 v34, 0x0

    .line 375
    .local v34, pixels:I
    const/4 v14, 0x0

    .line 376
    .local v14, colour:I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    move/from16 v51, v0

    move/from16 v0, v51

    add-int/lit16 v0, v0, 0x800

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_10

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    move/from16 v50, v0

    move/from16 v0, v50

    add-int/lit16 v0, v0, 0x800

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    .line 380
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset1:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    .line 381
    const/16 v50, 0x80

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    .line 382
    const/16 v47, 0x0

    .local v47, y:I
    move/from16 v43, v47

    .line 383
    .local v43, x:I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_18

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mOffset2:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    .line 402
    const/16 v50, 0x80

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->b_ptr:I

    .line 403
    const/16 v47, 0x0

    move/from16 v43, v47

    .line 404
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->ptr:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v16

    if-lt v0, v1, :cond_1c

    .line 421
    const/16 v28, 0x0

    .local v28, left:I
    const/16 v36, 0x0

    .local v36, right:I
    const/16 v38, 0x0

    .local v38, top:I
    const/4 v9, 0x0

    .line 422
    .local v9, bottom:I
    const/16 v23, 0x0

    .line 423
    .local v23, hasData:Z
    const/16 v43, 0x0

    :goto_d
    move/from16 v0, v43

    move/from16 v1, v46

    if-ge v0, v1, :cond_11

    if-eqz v23, :cond_20

    .line 432
    :cond_11
    const/16 v23, 0x0

    .line 433
    add-int/lit8 v43, v46, -0x1

    :goto_e
    if-ltz v43, :cond_12

    if-eqz v23, :cond_23

    .line 442
    :cond_12
    const/16 v23, 0x0

    .line 443
    const/16 v47, 0x0

    :goto_f
    move/from16 v0, v47

    move/from16 v1, v49

    if-ge v0, v1, :cond_13

    if-eqz v23, :cond_26

    .line 452
    :cond_13
    const/16 v23, 0x0

    .line 453
    add-int/lit8 v47, v49, -0x1

    :goto_10
    if-ltz v47, :cond_14

    if-eqz v23, :cond_29

    .line 463
    :cond_14
    if-nez v38, :cond_15

    if-eqz v9, :cond_15

    .line 464
    move/from16 v38, v9

    .line 465
    const/16 v50, 0x14

    move/from16 v0, v38

    move/from16 v1, v50

    if-lt v0, v1, :cond_2c

    .line 466
    add-int/lit8 v38, v38, -0x14

    .line 472
    :cond_15
    :goto_11
    sub-int v50, v46, v38

    sub-int v50, v50, v9

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayW:I

    .line 473
    sub-int v50, v49, v28

    sub-int v50, v50, v36

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayH:I

    .line 474
    invoke-static {}, Lcn/real/device/FileUtils;->GetSurfaceHeight()I

    move-result v50

    if-lez v50, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayH:I

    move/from16 v50, v0

    invoke-static {}, Lcn/real/device/FileUtils;->GetSurfaceHeight()I

    move-result v51

    mul-int/lit8 v51, v51, 0x2

    div-int/lit8 v51, v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_2d

    .line 475
    sget-object v50, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v51, "#################Break at the full screen###################"

    invoke-virtual/range {v50 .. v51}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 372
    .end local v9           #bottom:I
    .end local v14           #colour:I
    .end local v23           #hasData:Z
    .end local v28           #left:I
    .end local v34           #pixels:I
    .end local v36           #right:I
    .end local v38           #top:I
    .end local v43           #x:I
    .end local v47           #y:I
    :cond_16
    const/16 v27, 0x0

    .local v27, j:I
    :goto_12
    move/from16 v0, v27

    move/from16 v1, v49

    if-lt v0, v1, :cond_17

    .line 371
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 373
    :cond_17
    aget-object v50, v7, v26

    const/16 v51, 0x0

    aput v51, v50, v27

    .line 372
    add-int/lit8 v27, v27, 0x1

    goto :goto_12

    .line 384
    .end local v27           #j:I
    .restart local v14       #colour:I
    .restart local v34       #pixels:I
    .restart local v43       #x:I
    .restart local v47       #y:I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetVLC()I

    move-result v5

    .line 385
    if-nez v5, :cond_19

    .line 386
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    .line 387
    const/16 v43, 0x0

    add-int/lit8 v47, v47, 0x1

    .line 388
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->ByteAlign()V

    .line 390
    :cond_19
    shr-int/lit8 v34, v5, 0x2

    .line 391
    and-int/lit8 v14, v5, 0x3

    .line 392
    const/16 v26, 0x0

    move/from16 v44, v43

    .end local v43           #x:I
    .local v44, x:I
    :goto_13
    move/from16 v0, v26

    move/from16 v1, v34

    if-lt v0, v1, :cond_1a

    move/from16 v43, v44

    .end local v44           #x:I
    .restart local v43       #x:I
    goto/16 :goto_b

    .line 393
    .end local v43           #x:I
    .restart local v44       #x:I
    :cond_1a
    move/from16 v0, v44

    move/from16 v1, v46

    if-ge v0, v1, :cond_37

    div-int/lit8 v50, v49, 0x2

    move/from16 v0, v47

    move/from16 v1, v50

    if-lt v0, v1, :cond_1b

    move/from16 v43, v44

    .line 392
    .end local v44           #x:I
    .restart local v43       #x:I
    :goto_14
    add-int/lit8 v26, v26, 0x1

    move/from16 v44, v43

    .end local v43           #x:I
    .restart local v44       #x:I
    goto :goto_13

    .line 395
    :cond_1b
    add-int/lit8 v43, v44, 0x1

    .end local v44           #x:I
    .restart local v43       #x:I
    aget-object v50, v7, v44

    mul-int/lit8 v51, v47, 0x2

    aput v14, v50, v51

    goto :goto_14

    .line 405
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetVLC()I

    move-result v5

    .line 406
    if-nez v5, :cond_1d

    .line 407
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->GetByte()I

    .line 408
    const/16 v43, 0x0

    add-int/lit8 v47, v47, 0x1

    .line 409
    invoke-direct/range {p0 .. p0}, Lcn/real/device/subidxparser/VobSubFileHandler;->ByteAlign()V

    .line 411
    :cond_1d
    shr-int/lit8 v34, v5, 0x2

    .line 412
    and-int/lit8 v14, v5, 0x3

    .line 413
    const/16 v26, 0x0

    move/from16 v44, v43

    .end local v43           #x:I
    .restart local v44       #x:I
    :goto_15
    move/from16 v0, v26

    move/from16 v1, v34

    if-lt v0, v1, :cond_1e

    move/from16 v43, v44

    .end local v44           #x:I
    .restart local v43       #x:I
    goto/16 :goto_c

    .line 414
    .end local v43           #x:I
    .restart local v44       #x:I
    :cond_1e
    move/from16 v0, v44

    move/from16 v1, v46

    if-ge v0, v1, :cond_36

    div-int/lit8 v50, v49, 0x2

    move/from16 v0, v47

    move/from16 v1, v50

    if-lt v0, v1, :cond_1f

    move/from16 v43, v44

    .line 413
    .end local v44           #x:I
    .restart local v43       #x:I
    :goto_16
    add-int/lit8 v26, v26, 0x1

    move/from16 v44, v43

    .end local v43           #x:I
    .restart local v44       #x:I
    goto :goto_15

    .line 416
    :cond_1f
    add-int/lit8 v43, v44, 0x1

    .end local v44           #x:I
    .restart local v43       #x:I
    aget-object v50, v7, v44

    mul-int/lit8 v51, v47, 0x2

    add-int/lit8 v51, v51, 0x1

    aput v14, v50, v51

    goto :goto_16

    .line 424
    .restart local v9       #bottom:I
    .restart local v23       #hasData:Z
    .restart local v28       #left:I
    .restart local v36       #right:I
    .restart local v38       #top:I
    :cond_20
    const/16 v47, 0x0

    :goto_17
    move/from16 v0, v47

    move/from16 v1, v49

    if-lt v0, v1, :cond_21

    .line 423
    :goto_18
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_d

    .line 425
    :cond_21
    aget-object v50, v7, v43

    aget v50, v50, v47

    if-eqz v50, :cond_22

    .line 426
    const/16 v23, 0x1

    .line 427
    move/from16 v38, v43

    .line 428
    goto :goto_18

    .line 424
    :cond_22
    add-int/lit8 v47, v47, 0x1

    goto :goto_17

    .line 434
    :cond_23
    const/16 v47, 0x0

    :goto_19
    move/from16 v0, v47

    move/from16 v1, v49

    if-lt v0, v1, :cond_24

    .line 433
    :goto_1a
    add-int/lit8 v43, v43, -0x1

    goto/16 :goto_e

    .line 435
    :cond_24
    aget-object v50, v7, v43

    aget v50, v50, v47

    if-eqz v50, :cond_25

    .line 436
    const/16 v23, 0x1

    .line 437
    add-int/lit8 v50, v46, -0x1

    sub-int v9, v50, v43

    .line 438
    goto :goto_1a

    .line 434
    :cond_25
    add-int/lit8 v47, v47, 0x1

    goto :goto_19

    .line 444
    :cond_26
    const/16 v43, 0x0

    :goto_1b
    move/from16 v0, v43

    move/from16 v1, v46

    if-lt v0, v1, :cond_27

    .line 443
    :goto_1c
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_f

    .line 445
    :cond_27
    aget-object v50, v7, v43

    aget v50, v50, v47

    if-eqz v50, :cond_28

    .line 446
    const/16 v23, 0x1

    .line 447
    move/from16 v28, v47

    .line 448
    goto :goto_1c

    .line 444
    :cond_28
    add-int/lit8 v43, v43, 0x1

    goto :goto_1b

    .line 454
    :cond_29
    const/16 v43, 0x0

    :goto_1d
    move/from16 v0, v43

    move/from16 v1, v46

    if-lt v0, v1, :cond_2a

    .line 453
    :goto_1e
    add-int/lit8 v47, v47, -0x1

    goto/16 :goto_10

    .line 455
    :cond_2a
    aget-object v50, v7, v43

    aget v50, v50, v47

    if-eqz v50, :cond_2b

    .line 456
    const/16 v23, 0x1

    .line 457
    add-int/lit8 v50, v49, -0x1

    sub-int v36, v50, v47

    .line 458
    goto :goto_1e

    .line 454
    :cond_2b
    add-int/lit8 v43, v43, 0x1

    goto :goto_1d

    .line 468
    :cond_2c
    const/16 v38, 0x0

    goto/16 :goto_11

    .line 479
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayW:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayH:I

    move/from16 v51, v0

    sget-object v52, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v50 .. v52}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 481
    .local v32, outBitmap:Landroid/graphics/Bitmap;
    const/16 v41, 0x0

    .line 482
    .local v41, w:I
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayH:I

    move/from16 v50, v0

    add-int/lit8 v22, v50, -0x1

    .line 483
    .local v22, h:I
    sub-int v50, v49, v36

    add-int/lit8 v48, v50, -0x1

    .local v48, y1:I
    :goto_1f
    move/from16 v0, v48

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    .line 484
    move/from16 v45, v38

    .local v45, x1:I
    :goto_20
    sub-int v50, v46, v9

    move/from16 v0, v45

    move/from16 v1, v50

    if-lt v0, v1, :cond_2e

    .line 483
    add-int/lit8 v48, v48, -0x1

    goto :goto_1f

    .line 486
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->mDisplayW:I

    move/from16 v50, v0

    move/from16 v0, v41

    move/from16 v1, v50

    if-ne v0, v1, :cond_35

    .line 487
    const/16 v41, 0x0

    .line 488
    add-int/lit8 v22, v22, -0x1

    move/from16 v42, v41

    .line 491
    .end local v41           #w:I
    .local v42, w:I
    :goto_21
    aget-object v50, v7, v45

    aget v50, v50, v48

    if-nez v50, :cond_2f

    .line 492
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    const/16 v50, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 484
    :goto_22
    add-int/lit8 v45, v45, 0x1

    goto :goto_20

    .line 499
    .end local v41           #w:I
    .restart local v42       #w:I
    :cond_2f
    aget-object v50, v7, v45

    aget v50, v50, v48

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_31

    .line 500
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->isPTransparency:Z

    move/from16 v50, v0

    if-eqz v50, :cond_30

    .line 501
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    const/16 v50, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_22

    .line 503
    .end local v41           #w:I
    .restart local v42       #w:I
    :cond_30
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->COLOR_TABLE:[I

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->PColor:I

    move/from16 v51, v0

    rem-int/lit8 v51, v51, 0x2

    aget v50, v50, v51

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_22

    .line 506
    .end local v41           #w:I
    .restart local v42       #w:I
    :cond_31
    aget-object v50, v7, v45

    aget v50, v50, v48

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_33

    .line 507
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->isE1Transparency:Z

    move/from16 v50, v0

    if-eqz v50, :cond_32

    .line 508
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    const/16 v50, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_22

    .line 510
    .end local v41           #w:I
    .restart local v42       #w:I
    :cond_32
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->COLOR_TABLE:[I

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->E1Color:I

    move/from16 v51, v0

    rem-int/lit8 v51, v51, 0x2

    aget v50, v50, v51

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto/16 :goto_22

    .line 514
    .end local v41           #w:I
    .restart local v42       #w:I
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->isE2Transparency:Z

    move/from16 v50, v0

    if-eqz v50, :cond_34

    .line 515
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    const/16 v50, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto/16 :goto_22

    .line 517
    .end local v41           #w:I
    .restart local v42       #w:I
    :cond_34
    add-int/lit8 v41, v42, 0x1

    .end local v42           #w:I
    .restart local v41       #w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->COLOR_TABLE:[I

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/real/device/subidxparser/VobSubFileHandler;->E2Color:I

    move/from16 v51, v0

    rem-int/lit8 v51, v51, 0x2

    aget v50, v50, v51

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v22

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_22

    .line 523
    .end local v5           #VLC:I
    .end local v7           #bitmap:[[I
    .end local v9           #bottom:I
    .end local v10           #buff_ptr:I
    .end local v12           #cmdSizeValue:I
    .end local v14           #colour:I
    .end local v17           #data_ptr:I
    .end local v20           #end:I
    .end local v22           #h:I
    .end local v23           #hasData:Z
    .end local v25           #highValue:I
    .end local v28           #left:I
    .end local v30           #lowValue:I
    .end local v32           #outBitmap:Landroid/graphics/Bitmap;
    .end local v34           #pixels:I
    .end local v35           #ptrEnd:I
    .end local v36           #right:I
    .end local v38           #top:I
    .end local v39           #tryCount:I
    .end local v41           #w:I
    .end local v43           #x:I
    .end local v45           #x1:I
    .end local v46           #xOffset:I
    .end local v47           #y:I
    .end local v48           #y1:I
    .end local v49           #yOffset:I
    .restart local v11       #buff_ptr:I
    .restart local v18       #data_ptr:I
    :catch_1
    move-exception v19

    move v10, v11

    .end local v11           #buff_ptr:I
    .restart local v10       #buff_ptr:I
    move/from16 v17, v18

    .end local v18           #data_ptr:I
    .restart local v17       #data_ptr:I
    goto/16 :goto_9

    .restart local v5       #VLC:I
    .restart local v7       #bitmap:[[I
    .restart local v9       #bottom:I
    .restart local v12       #cmdSizeValue:I
    .restart local v14       #colour:I
    .restart local v20       #end:I
    .restart local v22       #h:I
    .restart local v23       #hasData:Z
    .restart local v25       #highValue:I
    .restart local v28       #left:I
    .restart local v30       #lowValue:I
    .restart local v32       #outBitmap:Landroid/graphics/Bitmap;
    .restart local v34       #pixels:I
    .restart local v35       #ptrEnd:I
    .restart local v36       #right:I
    .restart local v38       #top:I
    .restart local v39       #tryCount:I
    .restart local v41       #w:I
    .restart local v43       #x:I
    .restart local v45       #x1:I
    .restart local v46       #xOffset:I
    .restart local v47       #y:I
    .restart local v48       #y1:I
    .restart local v49       #yOffset:I
    :cond_35
    move/from16 v42, v41

    .end local v41           #w:I
    .restart local v42       #w:I
    goto/16 :goto_21

    .end local v9           #bottom:I
    .end local v22           #h:I
    .end local v23           #hasData:Z
    .end local v28           #left:I
    .end local v32           #outBitmap:Landroid/graphics/Bitmap;
    .end local v36           #right:I
    .end local v38           #top:I
    .end local v42           #w:I
    .end local v43           #x:I
    .end local v45           #x1:I
    .end local v48           #y1:I
    .restart local v44       #x:I
    :cond_36
    move/from16 v43, v44

    .end local v44           #x:I
    .restart local v43       #x:I
    goto/16 :goto_16

    .end local v43           #x:I
    .restart local v44       #x:I
    :cond_37
    move/from16 v43, v44

    .end local v44           #x:I
    .restart local v43       #x:I
    goto/16 :goto_14
.end method
