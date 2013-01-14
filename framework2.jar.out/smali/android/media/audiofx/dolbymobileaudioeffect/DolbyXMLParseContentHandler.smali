.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;
.super Ljava/lang/Object;
.source "DolbyXMLParseContentHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private allSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private buf:Ljava/lang/StringBuffer;

.field private category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

.field private custom:Z

.field private description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private dolbyMobilePreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

.field private efficients:I

.field private intList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private intList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private key:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

.field private presets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients24000_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients32000_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients44100_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private speakerCoefficients48000_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    return-void
.end method

.method private listToArray(Ljava/util/List;)[[I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)[[I"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v6, 0x0

    const/4 v0, 0x0

    check-cast v0, [[I

    .local v0, arr:[[I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    filled-new-array {v5, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #arr:[[I
    check-cast v0, [[I

    .restart local v0       #arr:[[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, innerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    aget-object v5, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #innerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3           #j:I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "fullName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/4 v7, 0x0

    const-string v0, "SpeakerCoefficients24000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void

    :cond_1
    const-string v0, "SpeakerCoefficients32000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_0

    :cond_2
    const-string v0, "SpeakerCoefficients44100"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_0

    :cond_3
    const-string v0, "SpeakerCoefficients48000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_0

    :cond_4
    const-string v0, "byte"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5dc0

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/16 v0, 0x7d00

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const v0, 0xac44

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const v0, 0xbb80

    iget v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "Presets"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DolbyMobilePreset"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->displayName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->description:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->allSettings:Ljava/util/Map;

    iget-boolean v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->custom:Z

    iget-object v5, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;)V

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->dolbyMobilePreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->presets:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->dolbyMobilePreset:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v0, "allSettings"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "entrySet"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList1:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->listToArray(Ljava/util/List;)[[I

    move-result-object v6

    .local v6, i:[[I
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->allSettings:Ljava/util/Map;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->key:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    new-instance v2, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    invoke-direct {v2, v6}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;-><init>([[I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v6           #i:[[I
    :cond_a
    const-string v0, "key"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;->valueOf(Ljava/lang/String;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->key:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileEndpoint;

    goto/16 :goto_0

    :cond_b
    const-string v0, "value"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DolbyMobileSettings"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList1:Ljava/util/List;

    iget-object v1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    return-void
.end method

.method public getPresets()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->presets:Ljava/util/Vector;

    return-object v0
.end method

.method public getSpeakerCoefficients24000()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, speakerCoefficients24000:[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method public getSpeakerCoefficients32000()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, speakerCoefficients32000:[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method public getSpeakerCoefficients44100()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, speakerCoefficients44100:[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method public getSpeakerCoefficients48000()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, speakerCoefficients48000:[B
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "instruction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->buf:Ljava/lang/StringBuffer;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "fullName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v4, "SpeakerCoefficients24000"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients24000_list:Ljava/util/List;

    const/16 v4, 0x5dc0

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "SpeakerCoefficients32000"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients32000_list:Ljava/util/List;

    const/16 v4, 0x7d00

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_0

    :cond_2
    const-string v4, "SpeakerCoefficients44100"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients44100_list:Ljava/util/List;

    const v4, 0xac44

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_0

    :cond_3
    const-string v4, "SpeakerCoefficients48000"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->speakerCoefficients48000_list:Ljava/util/List;

    const v4, 0xbb80

    iput v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->efficients:I

    goto :goto_0

    :cond_4
    const-string v4, "byte"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Presets"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->presets:Ljava/util/Vector;

    goto :goto_0

    :cond_5
    const-string v4, "DolbyMobilePreset"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "qName"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->displayName:Ljava/lang/String;

    const-string v4, "qNum"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->description:Ljava/lang/String;

    const-string v4, "qResult"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->custom:Z

    const-string v4, "qCategory"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v3, v4, v5

    .local v3, type:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;->valueOf(Ljava/lang/String;)Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    move-result-object v4

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->category:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobilePreset$Category;

    goto/16 :goto_0

    .end local v3           #type:Ljava/lang/String;
    :cond_6
    const-string v4, "allSettings"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->allSettings:Ljava/util/Map;

    goto/16 :goto_0

    :cond_7
    const-string v4, "entrySet"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "key"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "value"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList1:Ljava/util/List;

    goto/16 :goto_0

    :cond_8
    const-string v4, "DolbyMobileSettings"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    :try_start_0
    const-class v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const-string v5, "s1"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, s1:I
    const-class v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    const-string v5, "s2"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, s2:I
    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyXMLParseContentHandler;->intList2:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v1           #s1:I
    .end local v2           #s2:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"

    .prologue
    return-void
.end method
