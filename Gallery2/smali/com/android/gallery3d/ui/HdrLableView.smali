.class public Lcom/android/gallery3d/ui/HdrLableView;
.super Lcom/android/gallery3d/ui/GLView;
.source "HdrLableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;
    }
.end annotation


# static fields
.field public static HDR_LABEL_HEIGHT:I

.field public static HDR_LABEL_LEFT_MARGIN:I

.field public static HDR_LABEL_TOP_MARGIN:I

.field public static HDR_LABEL_WIDTH:I

.field private static PIXEL_DENSITY:F


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

.field private mHdrVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;I)V
    .locals 2
    .parameter "activity"
    .parameter "iconId"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 36
    new-instance v0, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    iget-object v1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/android/gallery3d/ui/HdrLableView;->setPIXEL_DENSITY(F)V

    .line 38
    sget v0, Lcom/android/gallery3d/ui/HdrLableView;->PIXEL_DENSITY:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/HdrLableView;->init(F)V

    .line 39
    return-void
.end method

.method private init(F)V
    .locals 1
    .parameter "pixelDensity"

    .prologue
    .line 113
    float-to-int v0, p1

    mul-int/lit8 v0, v0, 0x46

    sput v0, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_TOP_MARGIN:I

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_LEFT_MARGIN:I

    .line 115
    float-to-int v0, p1

    mul-int/lit8 v0, v0, 0x2c

    sput v0, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_HEIGHT:I

    .line 116
    float-to-int v0, p1

    mul-int/lit16 v0, v0, 0x8c

    sput v0, Lcom/android/gallery3d/ui/HdrLableView;->HDR_LABEL_WIDTH:I

    .line 117
    return-void
.end method

.method private isLocalImageItem(Lcom/android/gallery3d/data/Path;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, "local"

    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExif(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    .line 128
    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, exifInterface:Landroid/media/ExifInterface;
    const-string v3, "hdr"

    const-string v4, "ImageDescription"

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    .end local v1           #exifInterface:Landroid/media/ExifInterface;
    :cond_0
    :goto_0
    return v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setHdrLableVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrVisible:Z

    if-ne v0, p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrVisible:Z

    .line 72
    if-nez p1, :cond_1

    .line 73
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->start()V

    .line 79
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/HdrLableView;->invalidate()V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public static setPIXEL_DENSITY(F)V
    .locals 0
    .parameter "pIXEL_DENSITY"

    .prologue
    .line 177
    sput p0, Lcom/android/gallery3d/ui/HdrLableView;->PIXEL_DENSITY:F

    .line 178
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/HdrLableView;->setHdrLableVisible(Z)V

    .line 88
    return-void
.end method

.method public isHdrPhoto(Lcom/android/gallery3d/data/MediaItem;)Z
    .locals 4
    .parameter "photo"

    .prologue
    .line 97
    const-string v2, "HDRView"

    const-string v3, "isHdrPhoto"

    invoke-static {v2, v3}, Lcom/android/gallery3d/data/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, showHdr:Z
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/HdrLableView;->isLocalImageItem(Lcom/android/gallery3d/data/Path;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/HdrLableView;->readExif(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 108
    .end local v0           #showHdr:Z
    .local v1, showHdr:I
    :goto_1
    return v1

    .line 103
    .end local v1           #showHdr:I
    .restart local v0       #showHdr:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 108
    .restart local v1       #showHdr:I
    goto :goto_1
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    #calls: Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->recycle()V
    invoke-static {v0}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->access$000(Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 44
    .local v0, anim:Lcom/android/gallery3d/anim/CanvasAnimation;
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrVisible:Z

    if-nez v3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v2, 0x0

    .line 48
    .local v2, needRestore:Z
    if-eqz v0, :cond_2

    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0}, Lcom/android/gallery3d/anim/CanvasAnimation;->getCanvasSaveFlags()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 52
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->calculate(J)Z

    move-result v1

    .line 53
    .local v1, more:Z
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/anim/CanvasAnimation;->apply(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 54
    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/HdrLableView;->invalidate()V

    .line 60
    .end local v1           #more:Z
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    iget-object v4, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrLabel:Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->getHeight()I

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/gallery3d/ui/HdrLableView$HdrLabel;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 61
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 62
    if-eqz v2, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    goto :goto_0

    .line 57
    .restart local v1       #more:Z
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/ui/HdrLableView;->mHdrAnimation:Lcom/android/gallery3d/anim/CanvasAnimation;

    goto :goto_1
.end method

.method public show()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/HdrLableView;->setHdrLableVisible(Z)V

    .line 84
    return-void
.end method
