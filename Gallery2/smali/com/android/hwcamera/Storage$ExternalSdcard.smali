.class public Lcom/android/hwcamera/Storage$ExternalSdcard;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/android/hwcamera/Storage$SaveLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalSdcard"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/android/hwcamera/Storage;->access$000()Lcom/android/hwcamera/StoragePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/StoragePath;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, externalStoragePath:Ljava/lang/String;
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage path external: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-object v0
.end method
