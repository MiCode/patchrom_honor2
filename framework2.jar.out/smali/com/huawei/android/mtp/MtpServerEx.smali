.class public Lcom/huawei/android/mtp/MtpServerEx;
.super Landroid/mtp/MtpServer;
.source "MtpServerEx.java"


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 0
    .parameter "database"
    .parameter "usePtp"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    return-void
.end method


# virtual methods
.method public sendAllStorageInfoChangedIfNeed()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/mtp/MtpServer;->sendAllStorageInfoChangedIfNeed()V

    return-void
.end method
