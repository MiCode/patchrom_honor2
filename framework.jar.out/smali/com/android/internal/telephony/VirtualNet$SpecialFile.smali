.class Lcom/android/internal/telephony/VirtualNet$SpecialFile;
.super Ljava/lang/Object;
.source "VirtualNet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/VirtualNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialFile"
.end annotation


# instance fields
.field public fileId:Ljava/lang/String;

.field public filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"
    .parameter "fileId"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->filePath:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->fileId:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 37
    instance-of v2, p1, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    if-nez v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;

    .line 41
    .local v0, other:Lcom/android/internal/telephony/VirtualNet$SpecialFile;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->fileId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->filePath:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->fileId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->fileId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->fileId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/VirtualNet$SpecialFile;->fileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method
