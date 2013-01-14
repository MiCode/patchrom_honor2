.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SensorEventListenerImplHelper;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorEventListenerImplHelper"
.end annotation


# static fields
.field private static final ADJACENT_ORIENTATION_ANGLE_H2V_GAP:I = 0x0

.field private static final ADJACENT_ORIENTATION_ANGLE_V2H_GAP:I = 0xf


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 725
    invoke-static {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SensorEventListenerImplHelper;->getLowerBound(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 725
    invoke-static {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl$SensorEventListenerImplHelper;->getUpperBound(I)I

    move-result v0

    return v0
.end method

.method private static getLowerBound(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 749
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    mul-int/lit8 v0, p0, 0x5a

    add-int/lit8 v0, v0, -0x2d

    add-int/lit8 v0, v0, 0xf

    :goto_0
    return v0

    :cond_1
    mul-int/lit8 v0, p0, 0x5a

    add-int/lit8 v0, v0, -0x2d

    add-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method private static getUpperBound(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 756
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    mul-int/lit8 v0, p0, 0x5a

    add-int/lit8 v0, v0, 0x2d

    add-int/lit8 v0, v0, -0xf

    :goto_0
    return v0

    :cond_1
    mul-int/lit8 v0, p0, 0x5a

    add-int/lit8 v0, v0, 0x2d

    add-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method
