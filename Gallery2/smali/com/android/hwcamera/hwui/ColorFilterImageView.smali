.class public Lcom/android/hwcamera/hwui/ColorFilterImageView;
.super Landroid/widget/ImageView;
.source "ColorFilterImageView.java"


# instance fields
.field private final DISABLED_COLOR:I

.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/ColorFilterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ColorFilterImageView;->mFilterEnabled:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ColorFilterImageView;->DISABLED_COLOR:I

    .line 36
    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/ColorFilterImageView;->mFilterEnabled:Z

    .line 56
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ColorFilterImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/ColorFilterImageView;->clearColorFilter()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/ColorFilterImageView;->DISABLED_COLOR:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ColorFilterImageView;->setColorFilter(I)V

    goto :goto_0
.end method
