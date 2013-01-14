.class public Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;
.super Ljava/lang/Object;
.source "DolbyMobile.java"


# static fields
.field protected static final DM_PARAM_ALL_VALUES:I = 0x3

.field protected static final DM_PARAM_BYPASS:I = 0x1

.field protected static final DM_PARAM_DDP_PORTABLE_MODE:I = 0x5

.field protected static final DM_PARAM_DEFINE_SETTINGS:I = 0x0

.field protected static final DM_PARAM_IN_CHANS:I = 0x9

.field protected static final DM_PARAM_MOBILE_SURROUND_ENABLE:I = 0x6

.field protected static final DM_PARAM_MOBILE_SURROUND_MAX_PROFILE:I = 0x7

.field protected static final DM_PARAM_SINGLE_DEVICE_VALUE:I = 0x2

.field protected static final DM_PARAM_SPEAKER_COEFFS:I = 0x4

.field protected static final DM_PARAM_TDAS_IN_MATRIX:I = 0x8

.field public static final EFFECT_TDAS:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID; = null

.field public static final EFFECT_TYPE_TDAS:Ljava/util/UUID; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DolbyMobile"


# instance fields
.field private _audioSessionId:I

.field protected audioEffect:Landroid/media/audiofx/AudioEffect;

.field protected classAudioEffect:Ljava/lang/Class;

.field protected methodGetParameter:Ljava/lang/reflect/Method;

.field protected methodSetParameter:Ljava/lang/reflect/Method;

.field nxp_env_reverb_uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const-string v0, "60d67640-6705-11e0-ae3e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->EFFECT_TYPE_TDAS:Ljava/util/UUID;

    const-string v0, "7c0cb5a0-6705-11e0-ae3e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->EFFECT_TDAS:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .parameter "audioSessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "4a387fc0-8ab3-11df-8bad-0002a5d5c51b"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->nxp_env_reverb_uuid:Ljava/util/UUID;

    iput-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->classAudioEffect:Ljava/lang/Class;

    iput-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    iput-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->methodSetParameter:Ljava/lang/reflect/Method;

    iput-object v3, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->methodGetParameter:Ljava/lang/reflect/Method;

    :try_start_0
    const-string v2, "android.media.audiofx.AudioEffect"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->classAudioEffect:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    .local v0, ctorAudioEffect:Ljava/lang/reflect/Constructor;
    :try_start_1
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->classAudioEffect:Ljava/lang/Class;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/util/UUID;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v2, "DolbyMobile"

    const-string v3, "Found AudioEffect Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x4

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->EFFECT_TDAS:Ljava/util/UUID;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/AudioEffect;

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const-string v2, "DolbyMobile"

    const-string v3, "Created DolbyMobile AudioEffect successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v2}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .local v1, e:Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->classAudioEffect:Ljava/lang/Class;

    const-string v3, "setParameter"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->methodSetParameter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->classAudioEffect:Ljava/lang/Class;

    const-string v3, "getParameter"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v6

    const-class v5, [B

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->methodGetParameter:Ljava/lang/reflect/Method;

    const-string v2, "DolbyMobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATED EFFECT Implementor:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " connectMode:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid:\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_setDefineSettings()V

    iput p1, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_audioSessionId:I

    return-void

    .end local v0           #ctorAudioEffect:Ljava/lang/reflect/Constructor;
    .end local v1           #e:Landroid/media/audiofx/AudioEffect$Descriptor;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #ctorAudioEffect:Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_5
    move-exception v1

    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private static ByteArrayToInt([B)I
    .locals 2
    .parameter "ba"

    .prologue
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static ByteArrayToString([B)Ljava/lang/String;
    .locals 6
    .parameter "ba"

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "HEX("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .local v1, b:B
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #b:B
    :cond_0
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static IntArrayToByteArray([I)[B
    .locals 7
    .parameter "src"

    .prologue
    array-length v4, p0

    .local v4, srcLength:I
    shl-int/lit8 v6, v4, 0x2

    new-array v0, v6, [B

    .local v0, dst:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, p0, v1

    .local v5, x:I
    shl-int/lit8 v2, v1, 0x2

    .local v2, j:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    ushr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .restart local v3       #j:I
    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #j:I
    .end local v5           #x:I
    :cond_0
    return-object v0
.end method

.method private static SetInt16InByteArray(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "dst"
    .parameter "index"

    .prologue
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method private static SetInt32InByteArray(I[BI)I
    .locals 2
    .parameter "value"
    .parameter "dst"
    .parameter "index"

    .prologue
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, index:I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    .end local v0           #index:I
    .restart local p2
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #index:I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v1, 0x4

    return v1
.end method

.method private _getIntParameter(II)I
    .locals 5
    .parameter "param"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .local v2, iRet:I
    invoke-direct {p0, p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v0

    .local v0, baParam:[B
    invoke-direct {p0, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v1

    .local v1, baValue:[B
    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_invokeGetParameter([B[B)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "DolbyMobile"

    const-string v4, "_getIntParameter: Error in getting the parameter!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #iRet:I
    :goto_0
    return v2

    .restart local v2       #iRet:I
    :cond_0
    invoke-static {v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->ByteArrayToInt([B)I

    move-result v2

    goto :goto_0
.end method

.method private _invokeGetParameter([B[B)I
    .locals 7
    .parameter "baParam"
    .parameter "baValue"

    .prologue
    const/4 v3, -0x5

    const-string v2, "DolbyMobile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_invokeGetParameter baParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n baValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, iRet:I
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->methodGetParameter:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    const-string v2, "DolbyMobile"

    const-string v3, "_invokeGetParameter returning."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private _invokeSetParameter([B[B)I
    .locals 7
    .parameter "baParam"
    .parameter "baValue"

    .prologue
    const/4 v3, -0x5

    const-string v2, "DolbyMobile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_invokeSetParameter baParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n baValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, iRet:I
    :try_start_0
    iget-object v2, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->methodSetParameter:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    const-string v2, "DolbyMobile"

    const-string v3, "_invokeSetParameter returning."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const-string v2, "DolbyMobile"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method private _setDefineSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v0

    .local v0, baParam:[B
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetNumSettingsPerDevice()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .local v1, baValue:[B
    const/4 v4, 0x0

    .local v4, index:I
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetNumSettingsPerDevice()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetSettingsDefinitions()[Ljava/lang/Object;

    move-result-object v2

    .local v2, defns:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v5, v2, v3

    check-cast v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    iget-byte v5, v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->feature:B

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v2, v3

    check-cast v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;

    iget-byte v5, v5, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings$SettingDefn;->parameter:B

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_invokeSetParameter([B[B)I

    return-void
.end method

.method private _setIntParameter(II)I
    .locals 3
    .parameter "param"
    .parameter "value"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v0

    .local v0, baParam:[B
    invoke-direct {p0, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v1

    .local v1, baValue:[B
    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_invokeSetParameter([B[B)I

    move-result v2

    return v2
.end method

.method private intToByteArray(I)[B
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, converter:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBypass()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .local v1, value:I
    const/4 v0, -0x1

    .local v0, iRet:I
    const-string v4, "DolbyMobile"

    const-string v5, "getBypass()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_getIntParameter(II)I

    move-result v0

    if-gez v0, :cond_1

    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-le v0, v5, :cond_2

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_0

    const-string v2, "DolbyMobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBypass(): Error in getting the dolby mobile bypass value, iRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public getDdpPortableMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, value:I
    const/4 v0, 0x0

    .local v0, iRet:I
    const-string v2, "DolbyMobile"

    const-string v3, "getDdpPortableMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_getIntParameter(II)I

    move-result v0

    if-gez v0, :cond_0

    const-string v2, "DolbyMobile"

    const-string v3, "getDdpPortableMode(): Error in getting the ddp portable mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public getMsrEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, value:I
    const/4 v0, 0x0

    .local v0, iRet:I
    const-string v2, "DolbyMobile"

    const-string v3, "getMsrEnable()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_getIntParameter(II)I

    move-result v0

    if-gez v0, :cond_0

    const-string v2, "DolbyMobile"

    const-string v3, "getMsrEnable(): Error in getting the mobile surround enable state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMsrMaxProfile()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, value:I
    const/4 v0, -0x1

    .local v0, iRet:I
    const-string v4, "DolbyMobile"

    const-string v5, "getMsrMaxProfile()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x7

    invoke-direct {p0, v4, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_getIntParameter(II)I

    move-result v0

    if-gez v0, :cond_1

    move v4, v2

    :goto_0
    const/4 v5, 0x3

    if-le v0, v5, :cond_2

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_0

    const-string v2, "DolbyMobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMsrMaxProfile(): Error in getting the tdas_msr_max_profile value, iRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public getTdasInChans()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, value:I
    const/4 v0, -0x1

    .local v0, iRet:I
    const-string v4, "DolbyMobile"

    const-string v5, "getTdasInChans()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x9

    invoke-direct {p0, v4, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_getIntParameter(II)I

    move-result v0

    if-gez v0, :cond_1

    move v4, v2

    :goto_0
    const/16 v5, 0x1d

    if-le v0, v5, :cond_2

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_0

    const-string v2, "DolbyMobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTdasInChans(): Error in getting the tdas_in_chans value, iRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public getTdasInMatrix()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, value:I
    const/4 v0, -0x1

    .local v0, iRet:I
    const-string v4, "DolbyMobile"

    const-string v5, "getTdasInMatrix()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    invoke-direct {p0, v4, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_getIntParameter(II)I

    move-result v0

    if-gez v0, :cond_1

    move v4, v2

    :goto_0
    const/4 v5, 0x4

    if-le v0, v5, :cond_2

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_0

    const-string v2, "DolbyMobile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTdasInMatrix(): Error in getting the tdas_in_matrix value, iRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    return-void
.end method

.method public setAllSettings(Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;)I
    .locals 2
    .parameter "settings"

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    sget-object v1, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->setAllSettings(Ljava/util/Map;)I

    move-result v1

    return v1
.end method

.method public setAllSettings(Ljava/util/Map;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;",
            "Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, allSettings:Ljava/util/Map;,"Ljava/util/Map<Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;>;"
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v0

    .local v0, baParam:[B
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    .local v6, nDevCount:I
    invoke-static {}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetNumSettingsPerDevice()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x4

    mul-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x2

    new-array v1, v9, [B

    .local v1, baValue:[B
    const/4 v5, 0x0

    .local v5, index:I
    invoke-static {v6, v1, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;

    .local v2, device:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;

    .local v7, s:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    invoke-virtual {v2}, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;->toInt()I

    move-result v9

    invoke-static {v9, v1, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt32InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v7}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->getValues()[I

    move-result-object v8

    .local v8, values:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_0

    aget v9, v8, v3

    invoke-static {v9, v1, v5}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #device:Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;
    .end local v3           #i:I
    .end local v7           #s:Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;
    .end local v8           #values:[I
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_invokeSetParameter([B[B)I

    move-result v9

    return v9
.end method

.method public setBypass(Z)I
    .locals 4
    .parameter "bypass"

    .prologue
    const/4 v1, 0x1

    const-string v0, "DolbyMobile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBypass(boolean bypass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_setIntParameter(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDdpPortableMode(Z)I
    .locals 3
    .parameter "enable"

    .prologue
    const-string v0, "DolbyMobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDdpPortableMode(boolean portable mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_audioSessionId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_setIntParameter(II)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "DolbyMobile"

    const-string v1, "Global portable mode is not permitted!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setEnabled(Z)I
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setSingleSetting(IIILandroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;)I
    .locals 7
    .parameter "feature"
    .parameter "parameter"
    .parameter "value"
    .parameter "device"

    .prologue
    const-string v4, "DolbyMobile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSingleSetting() feature:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parameter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobileSettings;->GetTdasSettingIndex(II)I

    move-result v2

    .local v2, i:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const-string v4, "DolbyMobile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to set disallowed feature and parameter combination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x5

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v0

    .local v0, baParam:[B
    const/16 v4, 0x8

    new-array v1, v4, [B

    .local v1, baValue:[B
    const/4 v3, 0x0

    .local v3, index:I
    invoke-virtual {p4}, Landroid/media/audiofx/dolbymobileaudioeffect/AudioDevice;->toInt()I

    move-result v4

    invoke-static {v4, v1, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt32InByteArray(I[BI)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v1, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt16InByteArray(I[BI)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p3, v1, v3}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt16InByteArray(I[BI)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_invokeSetParameter([B[B)I

    move-result v4

    goto :goto_0
.end method

.method public setSpeakerCoeffs(I[B)I
    .locals 7
    .parameter "sample_rate_index"
    .parameter "coeffs"

    .prologue
    const-string v4, "DolbyMobile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSpeakerCoeffs() sample_rate_index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " coeffs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, p2

    .local v3, size:I
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->intToByteArray(I)[B

    move-result-object v0

    .local v0, baParam:[B
    add-int/lit8 v4, v3, 0x8

    new-array v1, v4, [B

    .local v1, baValue:[B
    const/4 v2, 0x0

    .local v2, index:I
    invoke-static {p1, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt32InByteArray(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v3, v1, v2}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->SetInt32InByteArray(I[BI)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    invoke-direct {p0, v0, v1}, Landroid/media/audiofx/dolbymobileaudioeffect/DolbyMobile;->_invokeSetParameter([B[B)I

    move-result v4

    return v4
.end method
