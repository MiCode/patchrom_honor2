.class public Lcom/huawei/internal/telephony/uicc/AdnRecordEx;
.super Ljava/lang/Object;
.source "AdnRecordEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describeContents(Lcom/android/internal/telephony/AdnRecord;)I
    .locals 2
    .parameter "obj"

    .prologue
    .line 48
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeToParcel(Lcom/android/internal/telephony/AdnRecord;Landroid/os/Parcel;I)V
    .locals 0
    .parameter "obj"
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 61
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/telephony/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method
