.class public final Lcom/android/internal/telephony/gsm/EONS;
.super Ljava/lang/Object;
.source "EONS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EONS$CphsType;,
        Lcom/android/internal/telephony/gsm/EONS$EonsControlState;,
        Lcom/android/internal/telephony/gsm/EONS$EonsState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mCphsOnsName:Ljava/lang/String;

.field mCphsOnsShortName:Ljava/lang/String;

.field mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

.field mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

.field mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

.field mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EONS;->reset()V

    return-void
.end method

.method private getEonsState()Lcom/android/internal/telephony/gsm/EONS$EonsState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->isIniting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->isIniting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsState;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsState;->PNN_AND_OPL_PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsState;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsState;->PNN_PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsState;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsState;->DISABLED:Lcom/android/internal/telephony/gsm/EONS$EonsState;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateEonsFromOplAndPnn(Ljava/lang/String;I)V
    .locals 4
    .parameter "regOperator"
    .parameter "lac"

    .prologue
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v1

    .local v1, pnnRecord:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .local v0, pnnName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EONS] Fetched EONS name from EF_PNN record = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    return-void
.end method

.method private updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "regOperator"
    .parameter "hplmn"

    .prologue
    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] Comparing hplmn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with registered plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1, v3, v3}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v0

    .local v0, pnnName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EONS] Fetched EONS name from EF_PNN\'s first record, name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    .end local v0           #pnnName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getEons()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_0

    const-string v1, "getEons():mPnnRecords is not null!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/PnnRecords;->getCurrentEons()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEons():name is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    :cond_0
    const-string v1, "ro.config.CphsOnsEnabled"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCphsOnsName is not null!----get name is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsShortName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get name from mCphsOnsShortName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, avlNetworks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v10, 0x0

    const/4 v0, 0x0

    .local v0, eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EONS;->getEonsState()Lcom/android/internal/telephony/gsm/EONS$EonsState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/EONS$EonsState;->isPnnAndOplPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "[EONS] OPL/PNN data is not available. Use the network names from Ril."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/EONS;->loge(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, size:I
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v0       #eonsNetworkNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EONS] Available Networks List Size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    const/4 v4, 0x0

    .local v4, pnnRecord:I
    const/4 v3, 0x0

    .local v3, pnnName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .local v2, oi:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/internal/telephony/gsm/OplRecords;->getMatchingPnnRecord(Ljava/lang/String;IZ)I

    move-result v4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-virtual {v6, v4, v10}, Lcom/android/internal/telephony/gsm/PnnRecords;->getNameFromPnnRecord(IZ)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EONS] PLMN = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ME Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PNN Name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v6, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v9

    invoke-direct {v6, v3, v7, v8, v9}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #oi:Lcom/android/internal/telephony/OperatorInfo;
    .end local v3           #pnnName:Ljava/lang/String;
    .end local v4           #pnnRecord:I
    .end local v5           #size:I
    :cond_3
    const-string v6, "[EONS] Available Networks List is empty"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/EONS;->loge(Ljava/lang/String;)V

    :cond_4
    move-object v6, v0

    goto/16 :goto_0
.end method

.method public isEonsDisabled()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EONS;->getEonsState()Lcom/android/internal/telephony/gsm/EONS$EonsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/EONS$EonsState;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->INITING:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsShortName:Ljava/lang/String;

    return-void
.end method

.method public resetCphsData(Lcom/android/internal/telephony/gsm/EONS$CphsType;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/EONS$CphsType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/EONS$CphsType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsShortName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsShortName:Ljava/lang/String;

    goto :goto_0
.end method

.method public resetOplData()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    return-void
.end method

.method public resetPnnData()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->ABSENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    return-void
.end method

.method public setCphsData(Lcom/android/internal/telephony/gsm/EONS$CphsType;[B)V
    .locals 2
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/EONS$CphsType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v1, v0}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCphsData():mCphsOnsName is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/EONS$CphsType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v1, v0}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsShortName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCphsData():mCphsOnsShortName is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mCphsOnsShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOplData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    new-instance v0, Lcom/android/internal/telephony/gsm/OplRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/OplRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    return-void
.end method

.method public setPnnData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    sget-object v0, Lcom/android/internal/telephony/gsm/EONS$EonsControlState;->PRESENT:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnDataState:Lcom/android/internal/telephony/gsm/EONS$EonsControlState;

    new-instance v0, Lcom/android/internal/telephony/gsm/PnnRecords;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/PnnRecords;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    return-void
.end method

.method public updateEons(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .parameter "regOperator"
    .parameter "lac"
    .parameter "hplmn"

    .prologue
    const/4 v0, 0x1

    .local v0, needsOperatorNameUpdate:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EONS;->getEonsState()Lcom/android/internal/telephony/gsm/EONS$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/EONS$EonsState;->isPnnAndOplPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mOplRecords:Lcom/android/internal/telephony/gsm/OplRecords;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/EONS;->updateEonsFromOplAndPnn(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EONS;->getEonsState()Lcom/android/internal/telephony/gsm/EONS$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/EONS$EonsState;->isPnnPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EONS;->mPnnRecords:Lcom/android/internal/telephony/gsm/PnnRecords;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/EONS;->updateEonsIfHplmn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EONS;->getEonsState()Lcom/android/internal/telephony/gsm/EONS$EonsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/EONS$EonsState;->isIniting()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[EONS] Reading data from EF_OPL or EF_PNN is not complete. Suppress operator name display until all EF_OPL/EF_PNN data is read."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/EONS;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
