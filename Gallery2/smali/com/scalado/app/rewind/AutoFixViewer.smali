.class public Lcom/scalado/app/rewind/AutoFixViewer;
.super Lcom/scalado/app/rewind/RewindViewer;
.source "AutoFixViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/app/rewind/AutoFixViewer$1;,
        Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;
    }
.end annotation


# instance fields
.field private mAutoSession:Lcom/scalado/app/rewind/AutoSession;

.field private mCurIndex:I

.field private mDrawRects:Z

.field private mMergedIsDisplayed:Z

.field private mMsg:Ljava/lang/String;

.field private mNotReplacedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPaint:Landroid/graphics/Paint;

.field private mReplacedRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBmp:Landroid/graphics/Bitmap;

.field private mScreenCfg:Lcom/scalado/base/Image$Config;

.field private mScreenDims:Lcom/scalado/base/Size;

.field private mSurfaceChanged:Z

.field private mTxtPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 7
    .parameter "surfaceView"

    .prologue
    const/16 v6, 0xff

    const/high16 v5, -0x4000

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 37
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindViewer;-><init>(Landroid/view/SurfaceView;)V

    .line 30
    iput-boolean v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    .line 34
    iput v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 42
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/scalado/app/rewind/AutoFixViewer;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/scalado/app/rewind/AutoFixViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/scalado/app/rewind/AutoFixViewer;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$302(Lcom/scalado/app/rewind/AutoFixViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/scalado/app/rewind/AutoFixViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    return-void
.end method

.method static synthetic access$502(Lcom/scalado/app/rewind/AutoFixViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    return p1
.end method

.method static synthetic access$602(Lcom/scalado/app/rewind/AutoFixViewer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/scalado/app/rewind/AutoFixViewer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/app/rewind/AutoFixViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    return v0
.end method

.method private draw()V
    .locals 8

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_4

    .line 229
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenBmp:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    :cond_0
    iget-boolean v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z

    if-eqz v4, :cond_4

    .line 233
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 235
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mNotReplacedRects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 237
    .local v3, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    const-string v4, "RewindViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception in privateDraw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    if-eqz v0, :cond_1

    .line 254
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 258
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 241
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 242
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mReplacedRects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 244
    .restart local v3       #r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 253
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #r:Landroid/graphics/Rect;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 254
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v4

    .line 253
    :cond_4
    if-eqz v0, :cond_1

    .line 254
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private privateClear()V
    .locals 8

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 171
    .local v0, canvas:Landroid/graphics/Canvas;
    :try_start_0
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 174
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 176
    .local v2, x:I
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 177
    .local v3, y:I
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mTxtPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_0
    if-eqz v0, :cond_1

    .line 186
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string v4, "RewindViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception in privateDraw "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    iget-object v4, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 185
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 186
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    throw v4
.end method


# virtual methods
.method public clearDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    .line 144
    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mSurfaceChanged:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->privateClear()V

    .line 147
    :cond_0
    return-void
.end method

.method public display()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected onSurfaceChanged(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenDims:Lcom/scalado/base/Size;

    .line 126
    sget-object v0, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    iput-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mScreenCfg:Lcom/scalado/base/Image$Config;

    .line 127
    iget-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mSurfaceChanged:Z

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mSurfaceChanged:Z

    .line 129
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->privateClear()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 72
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v0, r:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v5, v0}, Lcom/scalado/app/rewind/ExtWidget;->getRect(Landroid/graphics/Rect;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 77
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 78
    .local v2, y:I
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    iget-object v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v3, v3, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v3}, Lcom/scalado/app/rewind/ExtWidget;->show()V

    .line 97
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 82
    .restart local v0       #r:Landroid/graphics/Rect;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_1
    iget-object v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mConfig:Lcom/scalado/app/rewind/RewindViewerConfig;

    iget-object v5, v5, Lcom/scalado/app/rewind/RewindViewerConfig;->topBar:Lcom/scalado/app/rewind/ExtWidget;

    invoke-interface {v5}, Lcom/scalado/app/rewind/ExtWidget;->hide()V

    .line 86
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v4, v3

    .line 97
    goto :goto_0

    .line 91
    :pswitch_1
    iget-boolean v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mMergedIsDisplayed:Z

    if-eqz v5, :cond_0

    .line 92
    iget-boolean v5, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mDrawRects:Z

    .line 93
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/scalado/app/rewind/AutoFixViewer;->draw()V

    .line 151
    return-void
.end method

.method public save(Ljava/lang/String;III)V
    .locals 0
    .parameter "path"
    .parameter "jpegQuality"
    .parameter "thumbnailWidth"
    .parameter "thumbnailHeight"

    .prologue
    .line 311
    return-void
.end method

.method public selectBackground(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 113
    iget v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    if-ne p1, v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->getMergedImage()V

    .line 121
    :goto_1
    iput p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mCurIndex:I

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->getSourceImage(I)V

    goto :goto_1
.end method

.method public setAutoReplacer(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 3
    .parameter "autoReplacer"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 139
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoFixViewer;->mAutoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/scalado/app/rewind/AutoFixViewer$MySessionListener;-><init>(Lcom/scalado/app/rewind/AutoFixViewer;Lcom/scalado/app/rewind/AutoFixViewer$1;)V

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V

    .line 140
    return-void
.end method

.method public setRewindSession(Lcom/scalado/app/rewind/RewindSession;I)V
    .locals 0
    .parameter "ltw"
    .parameter "numImages"

    .prologue
    .line 63
    return-void
.end method
