.class public Lcom/scalado/app/rewind/Geom;
.super Ljava/lang/Object;
.source "Geom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertRect(Landroid/graphics/Rect;)Lcom/scalado/base/Rect;
    .locals 1
    .parameter "r"

    .prologue
    .line 35
    new-instance v0, Lcom/scalado/base/Rect;

    invoke-direct {v0}, Lcom/scalado/base/Rect;-><init>()V

    .line 36
    .local v0, dst:Lcom/scalado/base/Rect;
    invoke-static {p0, v0}, Lcom/scalado/app/rewind/Geom;->rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V

    .line 37
    return-object v0
.end method

.method public static final rectToRect(Landroid/graphics/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 20
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 21
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 24
    return-void
.end method

.method public static final rectToRect(Lcom/scalado/base/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    return-void
.end method

.method public static final rectToStr(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "r"

    .prologue
    .line 54
    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final rectToStr(Lcom/scalado/base/Rect;)Ljava/lang/String;
    .locals 4
    .parameter "r"

    .prologue
    .line 49
    const-string v0, "{(%d, %d), %dx%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setRect(Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 1
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getX()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setX(I)V

    .line 43
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setY(I)V

    .line 44
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 45
    invoke-virtual {p0}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 46
    return-void
.end method

.method public static transformFromSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 13
    .parameter "screen"
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 73
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v9

    invoke-direct {v3, v8, v9}, Lcom/scalado/base/Point;-><init>(II)V

    .line 74
    .local v3, pScr0:Lcom/scalado/base/Point;
    new-instance v4, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v4, v8, v9}, Lcom/scalado/base/Point;-><init>(II)V

    .line 76
    .local v4, pScr1:Lcom/scalado/base/Point;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 79
    .local v1, p0:Lcom/scalado/base/Point;
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    if-gez v8, :cond_1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getSession()Lcom/scalado/caps/Session;

    move-result-object v5

    .line 81
    .local v5, session:Lcom/scalado/caps/Session;
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 82
    .local v0, image:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 83
    .local v6, sizeImg:Lcom/scalado/base/Size;
    invoke-virtual {v5}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 84
    .local v7, sizeSession:Lcom/scalado/base/Size;
    const-string v8, "jimmy"

    const-string v9, "transformFromSessionViewport error pScr0 %d,%d ,p0 %d,%d ,screen %dx%d session %dx%d"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v0           #image:Lcom/scalado/base/Image;
    .end local v5           #session:Lcom/scalado/caps/Session;
    .end local v6           #sizeImg:Lcom/scalado/base/Size;
    .end local v7           #sizeSession:Lcom/scalado/base/Size;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/scalado/caps/screen/Screen;->transformFromSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v2

    .line 95
    .local v2, p1:Lcom/scalado/base/Point;
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    if-gez v8, :cond_3

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getSession()Lcom/scalado/caps/Session;

    move-result-object v5

    .line 97
    .restart local v5       #session:Lcom/scalado/caps/Session;
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 98
    .restart local v0       #image:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 99
    .restart local v6       #sizeImg:Lcom/scalado/base/Size;
    invoke-virtual {v5}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 100
    .restart local v7       #sizeSession:Lcom/scalado/base/Size;
    const-string v8, "jimmy"

    const-string v9, "transformFromSessionViewport error pScr1 %d,%d ,p1 %d,%d ,screen %dx%d session %dx%d"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0           #image:Lcom/scalado/base/Image;
    .end local v5           #session:Lcom/scalado/caps/Session;
    .end local v6           #sizeImg:Lcom/scalado/base/Size;
    .end local v7           #sizeSession:Lcom/scalado/base/Size;
    :cond_3
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setX(I)V

    .line 109
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setY(I)V

    .line 110
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 111
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 112
    return-void
.end method

.method public static transformToSessionViewport(Lcom/scalado/caps/screen/Screen;Lcom/scalado/base/Rect;Lcom/scalado/base/Rect;)V
    .locals 13
    .parameter "screen"
    .parameter "r"
    .parameter "dstRect"

    .prologue
    .line 116
    new-instance v3, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v9

    invoke-direct {v3, v8, v9}, Lcom/scalado/base/Point;-><init>(II)V

    .line 117
    .local v3, pScr0:Lcom/scalado/base/Point;
    new-instance v4, Lcom/scalado/base/Point;

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v8

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v4, v8, v9}, Lcom/scalado/base/Point;-><init>(II)V

    .line 119
    .local v4, pScr1:Lcom/scalado/base/Point;
    invoke-virtual {p0, v3}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v1

    .line 122
    .local v1, p0:Lcom/scalado/base/Point;
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    if-gez v8, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getSession()Lcom/scalado/caps/Session;

    move-result-object v5

    .line 124
    .local v5, session:Lcom/scalado/caps/Session;
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 125
    .local v0, image:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 126
    .local v6, sizeImg:Lcom/scalado/base/Size;
    invoke-virtual {v5}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 127
    .local v7, sizeSession:Lcom/scalado/base/Size;
    const-string v8, "jimmy"

    const-string v9, "transformToSessionViewport error pScr0 %d,%d ,p0 %d,%d ,screen %dx%d session %dx%d"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0           #image:Lcom/scalado/base/Image;
    .end local v5           #session:Lcom/scalado/caps/Session;
    .end local v6           #sizeImg:Lcom/scalado/base/Size;
    .end local v7           #sizeSession:Lcom/scalado/base/Size;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/scalado/caps/screen/Screen;->transformToSessionViewport(Lcom/scalado/base/Point;)Lcom/scalado/base/Point;

    move-result-object v2

    .line 138
    .local v2, p1:Lcom/scalado/base/Point;
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    if-gez v8, :cond_3

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getSession()Lcom/scalado/caps/Session;

    move-result-object v5

    .line 140
    .restart local v5       #session:Lcom/scalado/caps/Session;
    invoke-virtual {p0}, Lcom/scalado/caps/screen/Screen;->getImage()Lcom/scalado/base/Image;

    move-result-object v0

    .line 141
    .restart local v0       #image:Lcom/scalado/base/Image;
    invoke-virtual {v0}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    .line 142
    .restart local v6       #sizeImg:Lcom/scalado/base/Size;
    invoke-virtual {v5}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/base/Rect;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    .line 143
    .restart local v7       #sizeSession:Lcom/scalado/base/Size;
    const-string v8, "jimmy"

    const-string v9, "transformToSessionViewport error pScr1 %d,%d ,p1 %d,%d ,screen %dx%d session %dx%d"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-virtual {v6}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getWidth()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-virtual {v7}, Lcom/scalado/base/Size;->getHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0           #image:Lcom/scalado/base/Image;
    .end local v5           #session:Lcom/scalado/caps/Session;
    .end local v6           #sizeImg:Lcom/scalado/base/Size;
    .end local v7           #sizeSession:Lcom/scalado/base/Size;
    :cond_3
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setX(I)V

    .line 152
    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setY(I)V

    .line 153
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getX()I

    move-result v8

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setWidth(I)V

    .line 154
    invoke-virtual {v2}, Lcom/scalado/base/Point;->getY()I

    move-result v8

    invoke-virtual {v1}, Lcom/scalado/base/Point;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p2, v8}, Lcom/scalado/base/Rect;->setHeight(I)V

    .line 155
    return-void
.end method
