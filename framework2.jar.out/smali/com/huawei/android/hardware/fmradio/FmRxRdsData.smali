.class public Lcom/huawei/android/hardware/fmradio/FmRxRdsData;
.super Ljava/lang/Object;
.source "FmRxRdsData.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FmRxRdsData"

.field private static final RDS_AF_AUTO:I = 0x40

.field private static final RDS_GROUP_AF:I = 0x4

.field private static final RDS_GROUP_PS:I = 0x2

.field private static final RDS_GROUP_RT:I = 0x1

.field private static final RDS_PS_ALL:I = 0x10

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_PSALL:I = 0x8000014

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSD_BUF:I = 0x8000013

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f


# instance fields
.field private mFd:I

.field private mPrgmId:I

.field private mPrgmServices:Ljava/lang/String;

.field private mPrgmType:I

.field private mRadioText:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "fd"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    return-void
.end method


# virtual methods
.method public enableAFjump(Z)I
    .locals 5
    .parameter "AFenable"

    .prologue
    const v4, 0x8000010

    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enableAFjump: AFenable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v1, v4}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .local v0, rds_group_mask:I
    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enableAFjump: rds_group_mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    or-int/lit8 v2, v0, 0x40

    invoke-static {v1, v4, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    iget v1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    and-int/lit8 v2, v0, -0x41

    invoke-static {v1, v4, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public getPrgmId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    return v0
.end method

.method public getPrgmServices()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-object v0
.end method

.method public getPrgmType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public rdsGrpOptions(IIZ)I
    .locals 6
    .parameter "grpMask"
    .parameter "buffSize"
    .parameter "rdsFilter"

    .prologue
    const v5, 0x8000010

    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v1, v4

    .local v1, rds_group_mask:B
    and-int/lit16 v4, v1, 0xfe

    int-to-byte v1, v4

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .local v0, rdsFilt:I
    :goto_0
    or-int v4, v1, v0

    int-to-byte v1, v4

    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5, v1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .local v2, re:I
    if-eqz v2, :cond_1

    move v3, v2

    .end local v2           #re:I
    .local v3, re:I
    :goto_1
    return v3

    .end local v0           #rdsFilt:I
    .end local v3           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #rdsFilt:I
    goto :goto_0

    .restart local v2       #re:I
    :cond_1
    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000013

    invoke-static {v4, v5, p2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v2

    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1

    .end local v3           #re:I
    .restart local v2       #re:I
    :cond_2
    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000006

    invoke-static {v4, v5, p1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    move v3, v2

    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1
.end method

.method public rdsOn(Z)I
    .locals 5
    .parameter "on"

    .prologue
    const v4, 0x800000f

    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In rdsOn: RDS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .local v0, ret:I
    :goto_0
    return v0

    .end local v0           #ret:I
    :cond_0
    iget v1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public rdsOptions(I)I
    .locals 8
    .parameter "rdsMask"

    .prologue
    const v7, 0x8000010

    const/4 v3, 0x0

    .local v3, re:I
    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v2, v4

    .local v2, rds_group_mask:B
    const/4 v1, 0x0

    .local v1, rdsFilt:B
    and-int/lit8 v0, p1, 0x10

    .local v0, psAllVal:I
    const-string v4, "FmRxRdsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In rdsOptions: rdsMask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v4, v2, 0xc7

    int-to-byte v2, v4

    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v4, v2

    int-to-byte v2, v4

    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7, v2}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    iget v4, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000014

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v4, v5, v6}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    return v3
.end method

.method public setPrgmId(I)V
    .locals 0
    .parameter "x"

    .prologue
    iput p1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    return-void
.end method

.method public setPrgmServices(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    iput-object p1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-void
.end method

.method public setPrgmType(I)V
    .locals 0
    .parameter "x"

    .prologue
    iput p1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    return-void
.end method

.method public setRadioText(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    iput-object p1, p0, Lcom/huawei/android/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-void
.end method
