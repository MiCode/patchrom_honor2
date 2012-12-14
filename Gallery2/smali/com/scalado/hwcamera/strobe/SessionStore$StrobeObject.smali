.class public Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
.super Ljava/lang/Object;
.source "SessionStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/SessionStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrobeObject"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mMask:Landroid/graphics/Bitmap;

.field private mObjectIndex:I

.field private mOpacity:F

.field private mSrcDims:Lcom/scalado/base/Size;

.field private mSrcIndex:I

.field private mVisible:Z

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(IIIILandroid/graphics/Bitmap;Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "srcIndex"
    .parameter "objectIndex"
    .parameter "mask"
    .parameter "srcDims"

    .prologue
    const/4 v0, -0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    .line 116
    iput v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mObjectIndex:I

    .line 129
    iput p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    .line 130
    iput p2, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    .line 131
    iput p3, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    .line 132
    iput p4, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mObjectIndex:I

    .line 133
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    .line 135
    iput-object p5, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    .line 136
    if-eqz p6, :cond_0

    .line 137
    invoke-virtual {p6}, Lcom/scalado/base/Size;->clone()Lcom/scalado/base/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMask()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getObjectIndex()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mObjectIndex:I

    return v0
.end method

.method public getOpacity()F
    .locals 4

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    float-to-double v0, v0

    const-wide v2, 0x406fc00000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRect()Lcom/scalado/base/Rect;
    .locals 5

    .prologue
    .line 156
    new-instance v0, Lcom/scalado/base/Rect;

    iget v1, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    iget v2, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scalado/base/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getSrcHeight()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getSrcIndex()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    return v0
.end method

.method public getSrcWidth()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcDims:Lcom/scalado/base/Size;

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mMask:Landroid/graphics/Bitmap;

    .line 234
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mBitmap:Landroid/graphics/Bitmap;

    .line 178
    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .parameter "opacity"

    .prologue
    .line 189
    iput p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mOpacity:F

    .line 190
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mVisible:Z

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    const-string v0, "%d, %d - %dx%d, src: %d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->mSrcIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
