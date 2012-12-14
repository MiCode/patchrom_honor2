.class public Lcom/scalado/hwcamera/panoramaviewer/Rectangle;
.super Lcom/scalado/hwcamera/panoramaviewer/Shape;
.source "Rectangle.java"


# instance fields
.field private final DEFAULT_TEXTURE_VERTICES:[F

.field private rectangleVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/scalado/hwcamera/panoramaviewer/Point3D;Lcom/scalado/hwcamera/panoramaviewer/Point3D;JI)V
    .locals 5
    .parameter "p1"
    .parameter "p2"
    .parameter "in_color"
    .parameter "texture"

    .prologue
    const/16 v4, 0x8

    .line 66
    iget v1, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    iget v2, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    iget v3, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-direct {p0, v1, v2, v3}, Lcom/scalado/hwcamera/panoramaviewer/Shape;-><init>(FFF)V

    .line 28
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->DEFAULT_TEXTURE_VERTICES:[F

    .line 68
    const/16 v1, 0xc

    new-array v0, v1, [F

    const/4 v1, 0x0

    iget v2, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    iget v1, p1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    aput v1, v0, v4

    const/16 v1, 0x9

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    aput v2, v0, v1

    const/16 v1, 0xb

    iget v2, p2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    aput v2, v0, v1

    .line 73
    .local v0, rectangleVertexArray:[F
    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    .line 74
    iput p5, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureId:I

    .line 75
    invoke-virtual {p0, p3, p4}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->setColor(J)V

    .line 76
    return-void

    .line 28
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawColoredSquare(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    const v6, 0x8074

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 134
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 138
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->color:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->color:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->color:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->color:[F

    aget v3, v3, v5

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 140
    const/16 v0, 0x1406

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v5, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 144
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 152
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->indexShortBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 160
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 163
    return-void
.end method

.method private drawTexturedSquare(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const v5, 0x8074

    const/16 v3, 0x1406

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/16 v4, 0xde1

    .line 166
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 168
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 169
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 171
    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 173
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->rectangleVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 178
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "Rectangle"

    const-string v1, "ERROR: Texture coordinate buffer null! Did textures not load properly? Falling back..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->DEFAULT_TEXTURE_VERTICES:[F

    invoke-virtual {p0, v0}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 185
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureCoordinateBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 189
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureId:I

    invoke-interface {p1, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 199
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 201
    const/16 v0, 0x2803

    const v1, 0x812f

    invoke-interface {p1, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 204
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 212
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->indexShortBuffer:Ljava/nio/ShortBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 219
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 220
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 221
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 223
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 113
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 114
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->position:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    iget-object v1, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->position:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v1, v1, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    iget-object v2, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->position:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v2, v2, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 117
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->rotation:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->x:F

    invoke-interface {p1, v0, v4, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 118
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->rotation:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->y:F

    invoke-interface {p1, v0, v3, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 119
    iget-object v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->rotation:Lcom/scalado/hwcamera/panoramaviewer/Point3D;

    iget v0, v0, Lcom/scalado/hwcamera/panoramaviewer/Point3D;->z:F

    invoke-interface {p1, v0, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 121
    iget v0, p0, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->textureId:I

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->drawTexturedSquare(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 130
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 131
    return-void

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/panoramaviewer/Rectangle;->drawColoredSquare(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method
