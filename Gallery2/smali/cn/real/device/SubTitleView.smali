.class public Lcn/real/device/SubTitleView;
.super Landroid/widget/TextView;
.source "SubTitleView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final namespace:Ljava/lang/String;

.field private resourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, "http://cn.real.com"

    iput-object v0, p0, Lcn/real/device/SubTitleView;->namespace:Ljava/lang/String;

    .line 14
    iput v2, p0, Lcn/real/device/SubTitleView;->resourceId:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    .line 20
    const-string v0, "http://cn.real.com"

    const-string v1, "picSrc"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/real/device/SubTitleView;->resourceId:I

    .line 21
    iget v0, p0, Lcn/real/device/SubTitleView;->resourceId:I

    if-lez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcn/real/device/SubTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/real/device/SubTitleView;->resourceId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 33
    iget-object v7, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    .line 35
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v5, src:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v6, target:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 38
    .local v4, origWidth:I
    const/4 v3, 0x0

    .line 39
    .local v3, origHeight:I
    const/4 v2, 0x0

    .line 40
    .local v2, newWidth:I
    const/4 v0, 0x0

    .line 41
    .local v0, newHeight:I
    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 42
    iput v9, v5, Landroid/graphics/Rect;->top:I

    .line 43
    iget-object v7, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 44
    iget-object v7, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 45
    iput v4, v5, Landroid/graphics/Rect;->right:I

    .line 46
    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 47
    int-to-float v7, v4

    sget v8, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 48
    int-to-float v7, v3

    sget v8, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 50
    invoke-virtual {p0}, Lcn/real/device/SubTitleView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 51
    invoke-virtual {p0}, Lcn/real/device/SubTitleView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 52
    sget v7, Lcn/real/device/FileUtils;->mDefaultSTViewHight:I

    int-to-float v7, v7

    sget v8, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 53
    .local v1, newSTViewHeight:I
    if-ge v0, v1, :cond_1

    .line 54
    sub-int v7, v1, v0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 55
    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 61
    :goto_0
    iget-object v7, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcn/real/device/SubTitleView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {p1, v7, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 63
    .end local v0           #newHeight:I
    .end local v1           #newSTViewHeight:I
    .end local v2           #newWidth:I
    .end local v3           #origHeight:I
    .end local v4           #origWidth:I
    .end local v5           #src:Landroid/graphics/Rect;
    .end local v6           #target:Landroid/graphics/Rect;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    return-void

    .line 58
    .restart local v0       #newHeight:I
    .restart local v1       #newSTViewHeight:I
    .restart local v2       #newWidth:I
    .restart local v3       #origHeight:I
    .restart local v4       #origWidth:I
    .restart local v5       #src:Landroid/graphics/Rect;
    .restart local v6       #target:Landroid/graphics/Rect;
    :cond_1
    iput v9, v6, Landroid/graphics/Rect;->top:I

    .line 59
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "picSrc"

    .prologue
    .line 27
    iput-object p1, p0, Lcn/real/device/SubTitleView;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method
