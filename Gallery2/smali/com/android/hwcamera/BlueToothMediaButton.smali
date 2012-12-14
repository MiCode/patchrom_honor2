.class public Lcom/android/hwcamera/BlueToothMediaButton;
.super Ljava/lang/Object;
.source "BlueToothMediaButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/hwcamera/BlueToothMediaButton;


# instance fields
.field private onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/android/hwcamera/BlueToothMediaButton;

    invoke-direct {v0}, Lcom/android/hwcamera/BlueToothMediaButton;-><init>()V

    sput-object v0, Lcom/android/hwcamera/BlueToothMediaButton;->instance:Lcom/android/hwcamera/BlueToothMediaButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/android/hwcamera/BlueToothMediaButton;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/hwcamera/BlueToothMediaButton;->instance:Lcom/android/hwcamera/BlueToothMediaButton;

    return-object v0
.end method


# virtual methods
.method public blueToothMediaButtonDown()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/BlueToothMediaButton;->onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/BlueToothMediaButton;->onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;->onBlueToothMediaButtonDown()V

    goto :goto_0
.end method

.method public blueToothMediaButtonUp()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/hwcamera/BlueToothMediaButton;->onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/BlueToothMediaButton;->onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;

    invoke-interface {v0}, Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;->onBlueToothMediaButtonUp()V

    goto :goto_0
.end method

.method public removeOnBlueToothMediaButtonListener()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/BlueToothMediaButton;->onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;

    .line 52
    return-void
.end method

.method public setOnBlueToothMediaButtonListener(Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;)V
    .locals 0
    .parameter "onBlueToothMediaButtonListener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/hwcamera/BlueToothMediaButton;->onBlueToothMediaButtonListener:Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;

    .line 48
    return-void
.end method
