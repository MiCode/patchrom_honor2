.class public abstract Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;
.super Landroid/os/Binder;
.source "IDolbyMobileSystemInterface.java"

# interfaces
.implements Landroid/media/dolby/IDolbyMobileSystemInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dolby/IDolbyMobileSystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.dolby.IDolbyMobileSystemInterface"

.field static final TRANSACTION_currentPreset:I = 0x3

.field static final TRANSACTION_getEffectOn:I = 0x1

.field static final TRANSACTION_getGlobalAudioHeadsetByPass:I = 0x11

.field static final TRANSACTION_getGlobalAudioPreset:I = 0xf

.field static final TRANSACTION_getGlobalAudioSpeakerByPass:I = 0x13

.field static final TRANSACTION_getGlobalEffectOn:I = 0xd

.field static final TRANSACTION_getGlobalVideoHeadsetByPass:I = 0x17

.field static final TRANSACTION_getGlobalVideoPreset:I = 0x15

.field static final TRANSACTION_getGlobalVideoSpeakerByPass:I = 0x19

.field static final TRANSACTION_getPresetCategory:I = 0x6

.field static final TRANSACTION_numPresets:I = 0x7

.field static final TRANSACTION_numPresetsPerCategory:I = 0x8

.field static final TRANSACTION_presetName:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0xa

.field static final TRANSACTION_selectPreset:I = 0x4

.field static final TRANSACTION_setEffectByPass:I = 0xc

.field static final TRANSACTION_setEffectOn:I = 0x2

.field static final TRANSACTION_setGlobalAudioHeadsetByPass:I = 0x12

.field static final TRANSACTION_setGlobalAudioPreset:I = 0x10

.field static final TRANSACTION_setGlobalAudioSpeakerByPass:I = 0x14

.field static final TRANSACTION_setGlobalEffectOn:I = 0xe

.field static final TRANSACTION_setGlobalVideoHeadsetByPass:I = 0x18

.field static final TRANSACTION_setGlobalVideoPreset:I = 0x16

.field static final TRANSACTION_setGlobalVideoSpeakerByPass:I = 0x1a

.field static final TRANSACTION_setPresetCategory:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/dolby/IDolbyMobileSystemInterface;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getEffectOn()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:Z
    :sswitch_2
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEffectOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->currentPreset()I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->selectPreset(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:I
    :sswitch_5
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setPresetCategory(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:I
    :sswitch_6
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getPresetCategory()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_7
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresets()I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_result:I
    :sswitch_8
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->numPresetsPerCategory(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_9
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->presetName(I)Ljava/lang/String;

    move-result-object v1

    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .local v0, _arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->registerCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_b
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/dolby/IDolbyMobileServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    move-result-object v0

    .restart local v0       #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->unregisterCallback(Landroid/media/dolby/IDolbyMobileServiceCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    :sswitch_c
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setEffectByPass(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v2

    goto :goto_2

    :sswitch_d
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalEffectOn()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Z
    :sswitch_e
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalEffectOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v2

    goto :goto_3

    :sswitch_f
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalAudioPreset()I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:I
    :sswitch_10
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalAudioPreset(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_11
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalAudioHeadsetByPass()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Z
    :sswitch_12
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalAudioHeadsetByPass(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v2

    goto :goto_4

    :sswitch_13
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalAudioSpeakerByPass()Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Z
    :sswitch_14
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalAudioSpeakerByPass(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v2

    goto :goto_5

    :sswitch_15
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalVideoPreset()I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:I
    :sswitch_16
    const-string v2, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalVideoPreset(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_17
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalVideoHeadsetByPass()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Z
    :sswitch_18
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v0, v3

    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalVideoHeadsetByPass(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v2

    goto :goto_6

    :sswitch_19
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->getGlobalVideoSpeakerByPass()Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Z
    :sswitch_1a
    const-string v4, "android.media.dolby.IDolbyMobileSystemInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    move v0, v3

    .restart local v0       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Landroid/media/dolby/IDolbyMobileSystemInterface$Stub;->setGlobalVideoSpeakerByPass(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_c
    move v0, v2

    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
