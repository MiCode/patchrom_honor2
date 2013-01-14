.class Lcom/android/internal/telephony/RIL$RILEx;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RILEx"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 4600
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILEx;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RIL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4600
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL$RILEx;-><init>(Lcom/android/internal/telephony/RIL;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/RIL$RILEx;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4600
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL$RILEx;->writeContent(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    return-void
.end method

.method private writeContent(Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 13
    .parameter "rr"
    .parameter "pdu"

    .prologue
    const/16 v12, 0x24

    .line 4603
    :try_start_0
    const-string v9, "ISO-8859-1"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 4604
    .local v8, pduBytes:[B
    move-object v0, v8

    .local v0, arr$:[B
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-byte v2, v0, v6

    .line 4606
    .local v2, content:B
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeSmsToRuim pdu is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4608
    .end local v2           #content:B
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v9, "ISO-8859-1"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4609
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4610
    .local v3, dis:Ljava/io/DataInputStream;
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4611
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 4612
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4613
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4614
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4615
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4616
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4617
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 4618
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v12, :cond_1

    .line 4619
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 4618
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4621
    :cond_1
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4622
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 4623
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 4624
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v12, :cond_2

    .line 4625
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 4624
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4627
    :cond_2
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4628
    const/4 v5, 0x0

    :goto_3
    const/16 v9, 0xff

    if-ge v5, v9, :cond_3

    .line 4629
    iget-object v9, p1, Lcom/android/internal/telephony/RILRequest;->mp:Landroid/os/Parcel;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeByte(B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4628
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 4631
    .end local v0           #arr$:[B
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #dis:Ljava/io/DataInputStream;
    .end local v5           #i:I
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #pduBytes:[B
    :catch_0
    move-exception v4

    .line 4632
    .local v4, ex:Ljava/io/UnsupportedEncodingException;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILEx;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeSmsToRuim: UnsupportedEncodingException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 4638
    .end local v4           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_4
    return-void

    .line 4634
    :catch_1
    move-exception v4

    .line 4635
    .local v4, ex:Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILEx;->this$0:Lcom/android/internal/telephony/RIL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "writeSmsToRuim: conversion from input stream to object failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->access$1000(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    goto :goto_4
.end method
