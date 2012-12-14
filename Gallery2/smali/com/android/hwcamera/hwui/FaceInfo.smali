.class public Lcom/android/hwcamera/hwui/FaceInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# instance fields
.field public blinkScore:I

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field private mFocusStatus:I

.field private mTimeStamp:J

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I

.field public smileScore:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mFocusStatus:I

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mTimeStamp:J

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->id:I

    .line 69
    iput-object v2, p0, Lcom/android/hwcamera/hwui/FaceInfo;->leftEye:Landroid/graphics/Point;

    .line 78
    iput-object v2, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rightEye:Landroid/graphics/Point;

    .line 87
    iput-object v2, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mouth:Landroid/graphics/Point;

    .line 22
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/FaceInfo;->initFace()V

    .line 23
    return-void
.end method


# virtual methods
.method public clone(Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 2
    .parameter "face"

    .prologue
    .line 104
    iget v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->id:I

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->id:I

    .line 106
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    iget v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->score:I

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->score:I

    .line 108
    iget v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->smileScore:I

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->smileScore:I

    .line 109
    iget v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->blinkScore:I

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->blinkScore:I

    .line 110
    iget-wide v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->mTimeStamp:J

    iput-wide v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mTimeStamp:J

    .line 111
    iget-object v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->leftEye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->leftEye:Landroid/graphics/Point;

    .line 112
    iget-object v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->rightEye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rightEye:Landroid/graphics/Point;

    .line 113
    iget-object v0, p1, Lcom/android/hwcamera/hwui/FaceInfo;->mouth:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mouth:Landroid/graphics/Point;

    .line 114
    return-void
.end method

.method public getFaceArea()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getFaceId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->id:I

    return v0
.end method

.method public getFocusStatus()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mFocusStatus:I

    return v0
.end method

.method public getSmilePercent()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->smileScore:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public initFace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->id:I

    .line 91
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->score:I

    .line 93
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->smileScore:I

    .line 94
    iput v1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->blinkScore:I

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    .line 96
    iget-object v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 97
    iput-object v2, p0, Lcom/android/hwcamera/hwui/FaceInfo;->leftEye:Landroid/graphics/Point;

    .line 98
    iput-object v2, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rightEye:Landroid/graphics/Point;

    .line 99
    iput-object v2, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mouth:Landroid/graphics/Point;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mTimeStamp:J

    .line 101
    return-void
.end method

.method public setBlinkPercent(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->blinkScore:I

    return-void
.end method

.method public setFaceId(I)V
    .locals 0
    .parameter "faceId"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->id:I

    return-void
.end method

.method public setFaceRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method public setFocusStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->mFocusStatus:I

    return-void
.end method

.method public setSmilePercent(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/hwcamera/hwui/FaceInfo;->smileScore:I

    return-void
.end method
