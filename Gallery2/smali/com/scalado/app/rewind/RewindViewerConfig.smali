.class public Lcom/scalado/app/rewind/RewindViewerConfig;
.super Ljava/lang/Object;
.source "RewindViewerConfig.java"


# instance fields
.field public cancelButton:Lcom/scalado/app/rewind/ExtWidget;

.field public commitButton:Lcom/scalado/app/rewind/ExtWidget;

.field public indexSelector:Lcom/scalado/app/rewind/ExtIndexSelector;

.field public indicatorExtraY:F

.field public indicatorY:F

.field public jobbingBitmap:Landroid/graphics/Bitmap;

.field public mMode:I

.field public predefinedImages:[Ljava/lang/String;

.field public predefinedSizes:[I

.field public relCenter:Landroid/graphics/PointF;

.field public relR:F

.field public relRimW:F

.field public saveButton:Lcom/scalado/app/rewind/ExtWidget;

.field public shutterButton:Lcom/scalado/app/rewind/ExtWidget;

.field public topBar:Lcom/scalado/app/rewind/ExtWidget;

.field public wheelBitmap:Landroid/graphics/Bitmap;

.field public wheelIndicatorBitmap:Landroid/graphics/Bitmap;

.field public wheelIndicatorBitmapNormals:[I

.field public wheelIndicatorBitmapPresseds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/app/rewind/RewindViewerConfig;->mMode:I

    .line 85
    const v0, 0x3f57a91d

    iput v0, p0, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorY:F

    .line 92
    const v0, 0x3d6a0ea1

    iput v0, p0, Lcom/scalado/app/rewind/RewindViewerConfig;->indicatorExtraY:F

    return-void
.end method
