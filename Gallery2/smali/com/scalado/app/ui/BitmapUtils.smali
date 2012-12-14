.class public Lcom/scalado/app/ui/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"
    .parameter "config"

    .prologue
    .line 18
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eq v0, p3, :cond_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    const/4 p0, 0x0

    .line 24
    :cond_1
    if-nez p0, :cond_2

    .line 25
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 27
    :cond_2
    return-object p0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;Lcom/scalado/base/Size;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bitmap"
    .parameter "dims"
    .parameter "config"

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/scalado/base/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/scalado/base/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1, p2}, Lcom/scalado/app/ui/BitmapUtils;->createBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
