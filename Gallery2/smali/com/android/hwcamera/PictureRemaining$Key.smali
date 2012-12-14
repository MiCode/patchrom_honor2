.class public Lcom/android/hwcamera/PictureRemaining$Key;
.super Ljava/lang/Object;
.source "PictureRemaining.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/PictureRemaining;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private mKeyColorEffect:Ljava/lang/String;

.field private mKeyPicsize:Ljava/lang/String;

.field private mKeyQuality:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "pictureSize"
    .parameter "quality"
    .parameter "colorEffect"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyPicsize:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyQuality:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyColorEffect:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/PictureRemaining$Key;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/hwcamera/PictureRemaining$Key;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/PictureRemaining$Key;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/hwcamera/PictureRemaining$Key;->getMainKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyPicsize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyQuality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyColorEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMainKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/hwcamera/PictureRemaining$Key;->mKeyPicsize:Ljava/lang/String;

    return-object v0
.end method
