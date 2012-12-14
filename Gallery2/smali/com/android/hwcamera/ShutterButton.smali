.class public Lcom/android/hwcamera/ShutterButton;
.super Landroid/widget/RelativeLayout;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;,
        Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

.field private mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-virtual {p0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 110
    invoke-virtual {p0}, Lcom/android/hwcamera/ShutterButton;->isPressed()Z

    move-result v0

    .line 111
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 112
    if-nez v0, :cond_1

    .line 134
    new-instance v1, Lcom/android/hwcamera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/android/hwcamera/ShutterButton$1;-><init>(Lcom/android/hwcamera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 142
    :goto_0
    iput-boolean v0, p0, Lcom/android/hwcamera/ShutterButton;->mOldPressed:Z

    .line 144
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ShutterButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 95
    .local v0, view:Lcom/android/hwcamera/RotateImageView;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/hwcamera/ShutterButton;->mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v0}, Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;->onShutterButtonLongPressed()V

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    .line 155
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 158
    :cond_0
    return v0
.end method

.method public setImageResource(I)V
    .locals 2
    .parameter "drawableId"

    .prologue
    .line 85
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ShutterButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 86
    .local v0, view:Lcom/android/hwcamera/RotateImageView;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton;->mListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;

    .line 77
    return-void
.end method

.method public setOnShutterButtonLongPressListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/hwcamera/ShutterButton;->mLongPressListener:Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;

    .line 81
    return-void
.end method
