.class public Lcom/android/hwcamera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/FocusManager$MainHandler;,
        Lcom/android/hwcamera/FocusManager$Listener;
    }
.end annotation


# static fields
.field private static FOCUS_AREA_WIDTH_DP:I


# instance fields
.field private cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

.field private mAeAwbLock:Z

.field private mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mFaceView:Lcom/android/hwcamera/hwui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusMode:Ljava/lang/String;

.field private mFocusPolicy:I

.field private mFocusState:I

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mInitialized:Z

.field private mIsMute:Z

.field private mIsNeedPlaySound:Z

.field private mLastFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/android/hwcamera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

.field private mState:I

.field private mTargetFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchFocusEnable:Z

.field private mTouchPointX:I

.field private mTouchPointY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0x4c

    sput v0, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_WIDTH_DP:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "defaultFocusMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 91
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 92
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 93
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsMute:Z

    .line 103
    new-instance v0, Lcom/android/hwcamera/FocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/FocusManager$1;-><init>(Lcom/android/hwcamera/FocusManager;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    .line 122
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 124
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    .line 172
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/android/hwcamera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/FocusManager$MainHandler;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/FocusManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 177
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/FocusManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/FocusManager;)Lcom/android/hwcamera/CameraMovedController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->resetFocusUIbyGsensor()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/hwcamera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->updatePreviewStoppedUi()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/hwcamera/FocusManager;)Lcom/android/hwcamera/hwui/FocusIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    return-object v0
.end method

.method private autoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 506
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusManager autoFocus() mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 511
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->autoFocus()V

    .line 515
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 516
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private capture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 545
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 546
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    :cond_0
    return-void
.end method

.method private genFocusAreaByFocusPolicy(I)Ljava/util/List;
    .locals 8
    .parameter "mFocusPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    const/4 v5, 0x0

    .line 1026
    .local v5, rect:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 1044
    :goto_0
    invoke-static {v5}, Lcom/android/hwcamera/Util;->isEmptyRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1045
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1046
    .local v4, previewWidth:I
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1047
    .local v3, previewHeight:I
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 1048
    .local v2, point:Landroid/graphics/Point;
    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-static {v5, v2, v6}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 1049
    .local v1, _rect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/hwcamera/Util;->isEmptyRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1050
    move-object v5, v1

    .line 1053
    .end local v1           #_rect:Landroid/graphics/Rect;
    .end local v2           #point:Landroid/graphics/Point;
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    :cond_0
    invoke-static {v5}, Lcom/android/hwcamera/Util;->isEmptyRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v0, _focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v6, Landroid/hardware/Camera$Area;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1058
    .end local v0           #_focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_1
    return-object v0

    .line 1028
    :pswitch_0
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mLastFocusArea:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/android/hwcamera/FocusManager;->genRectFromArea(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1029
    goto :goto_0

    .line 1032
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->getDefaultFocusRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1033
    goto :goto_0

    .line 1035
    :pswitch_2
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/android/hwcamera/FocusManager;->genRectFromArea(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1036
    goto :goto_0

    .line 1039
    :pswitch_3
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mTargetFocusArea:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/android/hwcamera/FocusManager;->genRectFromArea(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1040
    goto :goto_0

    .line 1058
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1026
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private genMeteringArea(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 9
    .parameter "rect"
    .parameter "areaMultiple"

    .prologue
    const/16 v8, -0x3e8

    .line 1015
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1016
    .local v4, x:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 1017
    .local v5, y:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v1, v6

    .line 1018
    .local v1, areaWidth:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p2

    float-to-int v0, v6

    .line 1019
    .local v0, areaHeight:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, v4, v6

    rsub-int v7, v1, 0x3e8

    invoke-static {v6, v8, v7}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v2

    .line 1020
    .local v2, left:I
    div-int/lit8 v6, v0, 0x2

    sub-int v6, v5, v6

    rsub-int v7, v0, 0x3e8

    invoke-static {v6, v8, v7}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 1021
    .local v3, top:I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v2, v1

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v8, v3, v0

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6
.end method

.method private genMeteringAreaByFocusPolicy(I)Ljava/util/List;
    .locals 5
    .parameter "mFocusPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 979
    const/4 v2, 0x0

    .line 980
    .local v2, rect:Landroid/graphics/Rect;
    packed-switch p1, :pswitch_data_0

    .line 995
    :goto_0
    :pswitch_0
    const/high16 v1, 0x3fc0

    .line 996
    .local v1, areaMultiple:F
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 997
    invoke-direct {p0, v2, v1}, Lcom/android/hwcamera/FocusManager;->genMeteringArea(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 999
    :cond_0
    invoke-static {v2}, Lcom/android/hwcamera/Util;->isEmptyRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1000
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v0, _meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v3, Landroid/hardware/Camera$Area;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    .end local v0           #_meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_1
    return-object v0

    .line 982
    .end local v1           #areaMultiple:F
    :pswitch_1
    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mLastFocusArea:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/FocusManager;->genRectFromArea(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v2

    .line 983
    goto :goto_0

    .line 985
    :pswitch_2
    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/FocusManager;->genRectFromArea(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v2

    .line 986
    goto :goto_0

    .line 1004
    .restart local v1       #areaMultiple:F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private genRectFromArea(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p1, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-static {p1}, Lcom/android/hwcamera/Util;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 1011
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusAreaHeight()I
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v0

    return v0
.end method

.method private getFocusAreaWidth()I
    .locals 1

    .prologue
    .line 283
    sget v0, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_WIDTH_DP:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->dpToPixel(I)I

    move-result v0

    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 762
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 775
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, focusMode:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "edof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private resetFocusUIbyGsensor()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraMovedController;->addOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V

    .line 406
    return-void
.end method

.method private toString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 972
    .local p1, areas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 974
    :goto_0
    return-object v1

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[0,0,0,0]"

    goto :goto_0
.end method

.method private updatePreviewStoppedUi()V
    .locals 0

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 498
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 499
    return-void
.end method


# virtual methods
.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 680
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 681
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 682
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 683
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 685
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 686
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 687
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/hwcamera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 688
    return-void
.end method

.method public canDoFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 480
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 483
    :cond_1
    return v0
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 521
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/FocusManager;->setFocusPolicy(I)V

    .line 528
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 530
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/FocusManager$Listener;->cancelAutoFocus(I)V

    .line 532
    const-string v0, "FocusManager"

    const-string v1, "FocusManager cancelAutoFocus() mState = STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 534
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 535
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public clearFocusUI()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->clear()V

    .line 751
    :cond_0
    return-void
.end method

.method public doFoucsPolicy(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "parameters"

    .prologue
    .line 952
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFoucsPolicy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/hwcamera/FocusManager;->mFocusPolicy:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-nez p1, :cond_1

    .line 954
    const-string v2, "FocusManager"

    const-string v3, "cannot doFoucsPolicy if parameters is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_2

    .line 959
    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusPolicy:I

    invoke-direct {p0, v2}, Lcom/android/hwcamera/FocusManager;->genMeteringAreaByFocusPolicy(I)Ljava/util/List;

    move-result-object v1

    .line 960
    .local v1, _meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set_focus : meteringArea:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/hwcamera/FocusManager;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 963
    .end local v1           #_meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_2
    iget-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_0

    .line 964
    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusPolicy:I

    invoke-direct {p0, v2}, Lcom/android/hwcamera/FocusManager;->genFocusAreaByFocusPolicy(I)Ljava/util/List;

    move-result-object v0

    .line 965
    .local v0, _focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set_focus :focusArea:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/hwcamera/FocusManager;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0

    .line 321
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 325
    const-string v0, "FocusManager"

    const-string v1, "FocusManger doSnap()  mState = STATE_FOCUSING_SNAP_ON_FINISH "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 327
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableFocusSound()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 759
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getDefaultFocusRect()Landroid/graphics/Rect;
    .locals 9

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1082
    const/4 v8, 0x0

    .line 1090
    :goto_0
    return-object v8

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1085
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1086
    .local v7, previewHeight:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1087
    .local v8, rect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v2

    const/high16 v3, 0x3f80

    div-int/lit8 v4, v6, 0x2

    div-int/lit8 v5, v7, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public declared-synchronized getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 608
    :goto_0
    return-object v0

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    if-eqz v0, :cond_2

    .line 590
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 598
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 608
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 591
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isFocusAreaNotNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public handleFocus(IIIZ)Z
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "isTouchFocus"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 424
    iput v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 425
    iput-boolean p4, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 427
    iget-boolean v8, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-ne v8, v9, :cond_1

    :cond_0
    move v6, v7

    .line 476
    :goto_0
    return v6

    .line 432
    :cond_1
    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v8, v6, :cond_2

    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 439
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    .line 440
    .local v1, focusWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v0

    .line 441
    .local v0, focusHeight:I
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 442
    .local v4, previewWidth:I
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 444
    .local v3, previewHeight:I
    iput p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 445
    iput p2, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 457
    add-int/lit8 v8, p1, -0x20

    add-int/lit8 v9, v4, -0x41

    invoke-static {v8, v7, v9}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v2

    .line 458
    .local v2, left:I
    add-int/lit8 v8, p2, -0x20

    add-int/lit8 v9, v3, -0x41

    invoke-static {v8, v7, v9}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 459
    .local v5, top:I
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v8, v2, v5}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 461
    if-ne p3, v6, :cond_4

    .line 462
    iget-object v7, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v7}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 469
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto :goto_0

    .line 471
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 473
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V
    .locals 3
    .parameter "focusIndicatorRotate"
    .parameter "previewFrame"
    .parameter "faceView"
    .parameter "listener"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 212
    const v1, 0x7f0c003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/FocusIndicatorView;

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 214
    iput-object p2, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 215
    iput-object p3, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 216
    iput-object p4, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    .line 219
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p5, p6, v1, v2}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 225
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 227
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    .line 232
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/FocusManager;->setFocusPolicy(I)V

    .line 233
    return-void

    .line 230
    :cond_0
    const-string v1, "FocusManager"

    const-string v2, "mParameters is not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    if-nez p1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 195
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mMeteringAreaSupported:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 204
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringAreaSupported:Z

    .line 205
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 201
    goto :goto_1

    :cond_5
    move v0, v2

    .line 204
    goto :goto_2
.end method

.method public initializeSoundPlayer(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isEnforceAudible"

    .prologue
    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 556
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 567
    return-void
.end method

.method public isCAFSupported()Z
    .locals 2

    .prologue
    .line 743
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isFocusAreaNotNull()Z
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 691
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 730
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 754
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongPress()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    return v0
.end method

.method public isPointOnFocusArea(Landroid/graphics/Point;)Z
    .locals 4
    .parameter "currentClickPoint"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 794
    monitor-enter p0

    .line 795
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 796
    :cond_0
    monitor-exit p0

    .line 802
    :goto_0
    return v1

    .line 798
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    const/4 v2, 0x2

    new-array v0, v2, [F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aput v2, v0, v3

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 800
    .local v0, points:[F
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 801
    monitor-enter p0

    .line 802
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 804
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 798
    .end local v0           #points:[F
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onAutoFocus(Z)V
    .locals 6
    .parameter "focused"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 342
    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FocusManager On autofocus result("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 347
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 351
    if-eqz p1, :cond_1

    .line 352
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 357
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    .line 400
    :cond_0
    :goto_1
    return-void

    .line 354
    :cond_1
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 358
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 363
    if-eqz p1, :cond_4

    .line 364
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 365
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 376
    .local v0, soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :goto_2
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsMute:Z

    if-nez v1, :cond_3

    .line 378
    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 389
    if-eqz p1, :cond_5

    .line 390
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 367
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_4
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 369
    const/4 v0, 0x0

    .restart local v0       #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    goto :goto_2

    .line 392
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 396
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 4
    .parameter "moving"

    .prologue
    const/4 v3, 0x1

    .line 898
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 904
    if-eqz p1, :cond_3

    .line 906
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setIsCafEnded(Z)V

    .line 908
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    new-instance v1, Lcom/android/hwcamera/FocusManager$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/FocusManager$2;-><init>(Lcom/android/hwcamera/FocusManager;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 923
    :cond_3
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setIsCafEnded(Z)V

    .line 925
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    new-instance v1, Lcom/android/hwcamera/FocusManager$3;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/FocusManager$3;-><init>(Lcom/android/hwcamera/FocusManager;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->post(Ljava/lang/Runnable;)Z

    .line 933
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 488
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 492
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 494
    return-void
.end method

.method public onShutterDown()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 236
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-nez v1, :cond_2

    .line 240
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 241
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/FocusManager;->setFocusPolicy(I)V

    .line 242
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v4, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, isNeedPlaySound:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v1, :cond_3

    .line 250
    const/4 v0, 0x1

    .line 252
    :cond_3
    if-eqz v0, :cond_4

    .line 253
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 255
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 273
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 275
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 808
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 810
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-ne v0, v3, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v0, v11, :cond_0

    .line 818
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    if-nez v0, :cond_3

    .line 819
    const-string v0, "FocusManager"

    const-string v3, "onTouch, !mTouchFocusEnable return"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraMovedController;->removeOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V

    .line 825
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v0, v11, :cond_4

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 831
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 833
    :cond_5
    iput-boolean v11, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 837
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    .line 838
    .local v1, focusWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v2

    .line 839
    .local v2, focusHeight:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 840
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 843
    .local v7, previewHeight:I
    monitor-enter p0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_6

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 846
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_6
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 854
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/FocusManager;->setFocusPolicy(I)V

    .line 855
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    add-int/lit8 v0, p1, -0x20

    add-int/lit8 v3, v6, -0x41

    invoke-static {v0, v12, v3}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v9

    .line 869
    .local v9, left:I
    add-int/lit8 v0, p2, -0x20

    add-int/lit8 v3, v7, -0x41

    invoke-static {v0, v12, v3}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v10

    .line 870
    .local v10, top:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v0, v9, v10}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 873
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 874
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 877
    :cond_7
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_8

    .line 878
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 885
    const-string v0, "FocusManager"

    const-string v3, "FocusMange autoFocus"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto/16 :goto_0

    .line 855
    .end local v9           #left:I
    .end local v10           #top:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 888
    .restart local v9       #left:I
    .restart local v10       #top:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 890
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v12, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 700
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 701
    return-void
.end method

.method public releaseSoundPlayer()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 581
    :cond_0
    return-void
.end method

.method public resetFocusFrame()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 667
    iget-object v4, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 668
    .local v2, previewWidth:I
    iget-object v4, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 669
    .local v1, previewHeight:I
    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, -0x20

    add-int/lit8 v5, v2, -0x41

    invoke-static {v4, v6, v5}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v0

    .line 672
    .local v0, left:I
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, -0x20

    add-int/lit8 v5, v1, -0x41

    invoke-static {v4, v6, v5}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 675
    .local v3, top:I
    iget-object v4, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v4, v0, v3}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 676
    return-void
.end method

.method public resetTouchFocus()V
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 660
    :cond_0
    monitor-enter p0

    .line 661
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 662
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 705
    return-void
.end method

.method public setCameraMovedController(Lcom/android/hwcamera/CameraMovedController;)V
    .locals 0
    .parameter "mCameraMovedController"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    .line 769
    return-void
.end method

.method public setFocusPolicy(I)V
    .locals 2
    .parameter "focusPolicy"

    .prologue
    .line 1062
    iput p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusPolicy:I

    .line 1063
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusPolicy:I

    packed-switch v1, :pswitch_data_0

    .line 1078
    :goto_0
    :pswitch_0
    return-void

    .line 1065
    :pswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mLastFocusArea:Ljava/util/List;

    goto :goto_0

    .line 1070
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetFocusFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1063
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 734
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v1, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 739
    :goto_0
    return v0

    .line 738
    :cond_0
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    goto :goto_0
.end method

.method public setSoundState(Z)V
    .locals 0
    .parameter "isMute"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mIsMute:Z

    .line 182
    return-void
.end method

.method public setTouchFocusEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    .line 413
    return-void
.end method

.method public shutterLongPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/FocusManager;->setFocusPolicy(I)V

    .line 294
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 297
    :cond_0
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid focus state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "FocusManager::shutterLongPressed - do focus."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 303
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 306
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    .line 308
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 311
    :cond_2
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    .line 618
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 631
    .local v0, focusIndicator:Lcom/android/hwcamera/hwui/FocusIndicator;
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isFocusAreaNotNull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 633
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->clear()V

    goto :goto_0

    .line 638
    :cond_2
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 640
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 641
    :cond_4
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showFocuing()V

    goto :goto_0

    .line 649
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 650
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 651
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 652
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
