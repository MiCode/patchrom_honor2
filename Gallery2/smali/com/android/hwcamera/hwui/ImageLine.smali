.class public Lcom/android/hwcamera/hwui/ImageLine;
.super Landroid/widget/LinearLayout;
.source "ImageLine.java"


# instance fields
.field private mLine:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ImageLine;->setOrientation(I)V

    .line 14
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ImageLine;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImageLine;->mLine:Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImageLine;->mLine:Landroid/widget/ImageView;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 18
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImageLine;->mLine:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImageLine;->mLine:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 20
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImageLine;->mLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/ImageLine;->addView(Landroid/view/View;)V

    .line 22
    return-void
.end method
