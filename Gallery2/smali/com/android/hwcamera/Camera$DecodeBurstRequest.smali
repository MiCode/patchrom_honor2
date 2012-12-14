.class Lcom/android/hwcamera/Camera$DecodeBurstRequest;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeBurstRequest"
.end annotation


# instance fields
.field data:[B

.field previewWidth:I

.field width:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/hwcamera/Camera$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2387
    invoke-direct {p0}, Lcom/android/hwcamera/Camera$DecodeBurstRequest;-><init>()V

    return-void
.end method
