.class public Lcom/huawei/android/media/AudioManagerEx;
.super Ljava/lang/Object;
.source "AudioManagerEx.java"


# static fields
.field private static final ADJUST_STR_VOL:I = 0x1

.field private static final ADJUST_SUG_STR_VOL:I = 0x2

.field private static final AUDIO_DEVICE_BT_SCO:I = 0x4

.field private static final AUDIO_DEVICE_DEFAULT:I = 0x1

.field private static final AUDIO_DEVICE_HEADSET:I = 0x2

.field private static final AUDIO_DEVICE_SPEAKER:I = 0x3

.field private static final MODEM_EXC_ERROR:I = -0x2

.field private static final MODEM_TYPE_INVALID:I = -0x1

.field private static final MTK_MODEM:I = 0x2

.field private static final MUTE_TYPE_DL:I = 0x1

.field private static final MUTE_TYPE_UL:I = 0x0

.field private static final MaxVolume:I = 0x5

.field private static final MinVolume:I = 0x1

.field private static final ORIG_RETURN_FALSE:I = 0x0

.field private static final ORIG_RETURN_TRUE:I = 0x1

.field private static final QC_MODEM:I = 0x1

.field private static final READ_AT_CMD:I = 0x2

.field private static final SET_AT_CMD:I = 0x1

.field private static final SET_AUDIO_DEVICE:I = 0x2

.field private static final SET_AUDIO_MUTE:I = 0x4

.field private static final SET_AUDIO_UNMUTE:I = 0x5

.field private static final SET_AUDIO_VOLUME:I = 0x3

.field private static final SET_BT_SCO_ON:I = 0x9

.field private static final SET_DEFAULT_ON:I = 0xa

.field private static final SET_HEADSET_ON:I = 0x8

.field private static final SET_SPEAKER_PHONE_OFF:I = 0x5

.field private static final SET_SPEAKER_PHONE_ON:I = 0x4

.field private static final SET_STR_VOL:I = 0x3


# instance fields
.field private currentDeviceType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/media/AudioManagerEx;->currentDeviceType:I

    return-void
.end method

.method public static isMicrophoneMute(Landroid/media/AudioManager;I)I
    .locals 1
    .parameter "obj"
    .parameter "modemType"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static setMicrophoneMute(Landroid/media/AudioManager;IZ)V
    .locals 0
    .parameter "obj"
    .parameter "modemType"
    .parameter "on"

    .prologue
    return-void
.end method
