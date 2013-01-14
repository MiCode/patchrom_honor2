.class public abstract Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.super Landroid/os/Binder;
.source "IHuaweiTelephony.java"

# interfaces
.implements Lcom/huawei/telephony/IHuaweiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/telephony/IHuaweiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.telephony.IHuaweiTelephony"

.field static final TRANSACTION_ATDirectChannel:I = 0x6

.field static final TRANSACTION_clearUserPrefWhenChangeMode:I = 0xe

.field static final TRANSACTION_getCardType:I = 0x5

.field static final TRANSACTION_getCdmaPrlVersion:I = 0xb

.field static final TRANSACTION_getDSDARadioState:I = 0xd

.field static final TRANSACTION_getDemoStringAsync:I = 0x1

.field static final TRANSACTION_getEsn:I = 0xa

.field static final TRANSACTION_getMin:I = 0x9

.field static final TRANSACTION_getServiceState:I = 0x8

.field static final TRANSACTION_getSignalStrength:I = 0x7

.field static final TRANSACTION_getSlotIdFromSubId:I = 0x4

.field static final TRANSACTION_getSubidFromSlotId:I = 0x3

.field static final TRANSACTION_isCTNationRoamingEnable:I = 0xc

.field static final TRANSACTION_isCardPresent:I = 0x2

.field static final TRANSACTION_isSubActive:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IHuaweiTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.huawei.telephony.IHuaweiTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/telephony/IHuaweiTelephony;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/huawei/telephony/IHuaweiTelephony;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IPhoneCallback;

    move-result-object v0

    .local v0, _arg0:Lcom/huawei/telephony/IPhoneCallback;
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Lcom/huawei/telephony/IPhoneCallback;
    :sswitch_2
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isCardPresent(I)Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSubidFromSlotId(I)I

    move-result v1

    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSlotIdFromSubId(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_5
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getCardType(I)I

    move-result v1

    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_6
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v1

    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_8
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_9
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getMin()Ljava/lang/String;

    move-result-object v1

    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isCTNationRoamingEnable()Z

    move-result v1

    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_result:Z
    :sswitch_d
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getDSDARadioState(I)Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_e
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->clearUserPrefWhenChangeMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_f
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isSubActive(I)Z

    move-result v1

    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
