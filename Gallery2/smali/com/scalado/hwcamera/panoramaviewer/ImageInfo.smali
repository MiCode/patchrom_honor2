.class public Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field public angleOfView:F

.field public fieldOfView:F

.field public fileName:Ljava/lang/String;

.field focalLength:F

.field public isDefaultImage:Z

.field public isWallpaper:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFocalLength(F)V
    .locals 5
    .parameter "fl"

    .prologue
    .line 12
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->focalLength:F

    .line 13
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->focalLength:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/ImageInfo;->fieldOfView:F

    .line 14
    return-void
.end method
