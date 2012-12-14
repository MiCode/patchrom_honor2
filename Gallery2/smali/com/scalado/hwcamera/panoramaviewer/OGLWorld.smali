.class public Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;
.super Ljava/lang/Object;
.source "OGLWorld.java"


# instance fields
.field public currentTexture:I

.field public eyePosition:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

.field private fov:F

.field public lookAtRadius:F

.field private shapeVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/hwcamera/panoramaviewer/Shape;",
            ">;"
        }
    .end annotation
.end field

.field public textureFd:Landroid/content/res/AssetFileDescriptor;

.field public textureIdVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public textureProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;

.field public texturesNeedUpdating:Z

.field public xAngle:F

.field private xLimitMax:I

.field private xLimitMin:I

.field public yAngle:F

.field private yLimitMax:I

.field private yLimitMin:I

.field private zoomAmount:F

.field public zoomStep:F


# direct methods
.method public constructor <init>(FLcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;)V
    .locals 3
    .parameter "fov"
    .parameter "texProvider"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    .line 18
    iput v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->currentTexture:I

    .line 19
    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 20
    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 22
    new-instance v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    invoke-direct {v0}, Lcom/scalado/hwcamera/panoramaviewer/Point3D;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->eyePosition:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    .line 23
    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    .line 24
    iput v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    .line 32
    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureFd:Landroid/content/res/AssetFileDescriptor;

    .line 135
    const/4 v0, -0x2

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    .line 139
    const/16 v0, -0x12

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    .line 140
    const/16 v0, 0x12

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->setFov(F)V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    .line 42
    iput-object p2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureProvider:Lcom/scalado/hwcamera/panoramaviewer/OGLTextureProvider;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    .line 44
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method


# virtual methods
.method public addShape(Lcom/scalado/hwcamera/panoramaviewer/Shape;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public clearShape()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 66
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 83
    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->shapeVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/scalado/hwcamera/panoramaviewer/Shape;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/hwcamera/panoramaviewer/Shape;

    .line 87
    .local v1, nextShape:Lcom/scalado/hwcamera/panoramaviewer/Shape;
    iget-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    if-eqz v2, :cond_0

    .line 89
    iget v2, v1, Lcom/scalado/hwcamera/panoramaviewer/Shape;->textureIndex:I

    invoke-virtual {p0, v2}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->getTextureId(I)I

    move-result v2

    iput v2, v1, Lcom/scalado/hwcamera/panoramaviewer/Shape;->textureId:I

    .line 92
    :cond_0
    invoke-virtual {v1, p1}, Lcom/scalado/hwcamera/panoramaviewer/Shape;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 95
    .end local v1           #nextShape:Lcom/scalado/hwcamera/panoramaviewer/Shape;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->texturesNeedUpdating:Z

    .line 96
    return-void
.end method

.method public ensureAnglesWithinLimits()V
    .locals 5

    .prologue
    .line 113
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 114
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    int-to-float v0, v0

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 116
    const-string v0, "OGLWorld"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureAnglesWithinLimits(): yAngle OVER MAX LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limiting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    :goto_0
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 127
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    int-to-float v0, v0

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    .line 132
    :cond_1
    :goto_1
    return-void

    .line 119
    :cond_2
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 120
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    int-to-float v0, v0

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    .line 122
    const-string v0, "OGLWorld"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureAnglesWithinLimits(): yAngle UNDER MIN LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limiting to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/scalado/hwcamera/panoramaviewer/PanoramaData;->df:Ljava/text/DecimalFormat;

    iget v3, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yAngle:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_3
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 130
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    int-to-float v0, v0

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xAngle:F

    goto :goto_1
.end method

.method public getFov()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->fov:F

    return v0
.end method

.method public getTextureId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->textureIdVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZoomAmount()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    return v0
.end method

.method public setFov(F)V
    .locals 0
    .parameter "in_fov"

    .prologue
    .line 55
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->fov:F

    .line 56
    return-void
.end method

.method public setRotationLimits(IIII)V
    .locals 0
    .parameter "yLimitMin"
    .parameter "yLimitMax"
    .parameter "xLimitMin"
    .parameter "xLimitMax"

    .prologue
    .line 144
    invoke-virtual {p0, p3, p4}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->setxLimit(II)V

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->setyLimit(II)V

    .line 146
    invoke-virtual {p0}, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->ensureAnglesWithinLimits()V

    .line 147
    return-void
.end method

.method public setZoomAmount(F)V
    .locals 2
    .parameter "newZoom"

    .prologue
    .line 101
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    .line 102
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->lookAtRadius:F

    iget v1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomAmount:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->zoomStep:F

    .line 103
    return-void
.end method

.method public setxLimit(II)V
    .locals 3
    .parameter "xLimitMin"
    .parameter "xLimitMax"

    .prologue
    .line 150
    if-gt p1, p2, :cond_0

    .line 152
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMin:I

    .line 153
    iput p2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->xLimitMax:I

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setxLimit: ERROR (Skipping update): min "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setyLimit(II)V
    .locals 3
    .parameter "yLimitMin"
    .parameter "yLimitMax"

    .prologue
    .line 161
    if-gt p1, p2, :cond_0

    .line 162
    iput p1, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMin:I

    .line 163
    iput p2, p0, Lcom/scalado/hwcamera/panoramaviewer/OGLWorld;->yLimitMax:I

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "PanoramaActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setyLimit: ERROR (Skipping update): min "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
