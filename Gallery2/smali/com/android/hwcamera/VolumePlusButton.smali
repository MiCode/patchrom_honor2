.class public Lcom/android/hwcamera/VolumePlusButton;
.super Ljava/lang/Object;
.source "VolumePlusButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;
    }
.end annotation


# instance fields
.field private final LONG_PRESS_REPET_COUNT:I

.field private isEnable:Z

.field private onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/VolumePlusButton;->LONG_PRESS_REPET_COUNT:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VolumePlusButton;->isEnable:Z

    .line 14
    return-void
.end method


# virtual methods
.method public enableVolumePlusButton(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/hwcamera/VolumePlusButton;->isEnable:Z

    .line 22
    return-void
.end method

.method public onVolumePlusButtonDown(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/hwcamera/VolumePlusButton;->isEnable:Z

    if-nez v0, :cond_1

    .line 26
    const-string v0, "VolumePlusButton"

    const-string v1, "VolumePlusButton disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;->onVolumePlusButtonFocus(Z)V

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;->onVolumePlusButtonLongPressed()V

    goto :goto_0
.end method

.method public onVolumePlusButtonUp(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/hwcamera/VolumePlusButton;->isEnable:Z

    if-nez v0, :cond_1

    .line 42
    const-string v0, "VolumePlusButton"

    const-string v1, "VolumePlusButton disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;->onVolumePlusButtonClick()V

    .line 49
    iget-object v0, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;->onVolumePlusButtonFocus(Z)V

    goto :goto_0
.end method

.method public setOnVolumePlusButtonListener(Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;)V
    .locals 0
    .parameter "onVolumePlusButtonListener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonListener:Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;

    .line 54
    return-void
.end method
