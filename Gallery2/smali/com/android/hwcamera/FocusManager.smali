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
.field private static FOCUS_AREA_LENGTH:I

.field private static FOCUS_AREA_RATE:F


# instance fields
.field private cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

.field private mAeAwbLock:Z

.field private mCAFFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mCAFMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

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

.field private mFocusState:I

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mInitialized:Z

.field private mIsMute:Z

.field private mIsNeedPlaySound:Z

.field mListener:Lcom/android/hwcamera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

.field private mState:I

.field private mTouchFocusEnable:Z

.field private mTouchPointX:I

.field private mTouchPointY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 314
    const v0, 0x3e3bbbbc

    sput v0, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_RATE:F

    .line 1151
    const/16 v0, 0x7d0

    sput v0, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "defaultFocusMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 92
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 93
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 94
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsMute:Z

    .line 104
    new-instance v0, Lcom/android/hwcamera/FocusManager$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/FocusManager$1;-><init>(Lcom/android/hwcamera/FocusManager;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    .line 122
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 124
    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    .line 171
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/android/hwcamera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/FocusManager$MainHandler;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/FocusManager$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 176
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 177
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

    .line 647
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

    .line 648
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 652
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->autoFocus()V

    .line 656
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 657
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private capture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 684
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 686
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 687
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    :cond_0
    return-void
.end method

.method private genFoucsRect(I)Landroid/graphics/Rect;
    .locals 6
    .parameter "width"

    .prologue
    .line 1171
    const/high16 v2, 0x3f80

    .line 1172
    .local v2, rate:F
    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1174
    :try_start_0
    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    div-float v2, v3, v4

    .line 1180
    :cond_0
    :goto_0
    int-to-float v3, p1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1181
    .local v1, height:I
    new-instance v3, Landroid/graphics/Rect;

    neg-int v4, p1

    neg-int v5, v1

    invoke-direct {v3, v4, v5, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 1176
    .end local v1           #height:I
    :catch_0
    move-exception v0

    .line 1177
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFocusAreaHeight()I
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v0

    return v0
.end method

.method private getFocusAreaWidth()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_RATE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 944
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

    .line 957
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, focusMode:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 963
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
    .line 437
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraMovedController;->addOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V

    .line 438
    return-void
.end method

.method private updatePreviewStoppedUi()V
    .locals 0

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 639
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 640
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
    .line 862
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 863
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 864
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v3

    .line 865
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 867
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 868
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 869
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/hwcamera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 870
    return-void
.end method

.method public canDoFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 621
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 622
    :cond_0
    const/4 v0, 0x0

    .line 624
    :cond_1
    return v0
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 681
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0, v3}, Lcom/android/hwcamera/FocusManager$Listener;->cancelAutoFocus(I)V

    .line 673
    const-string v0, "FocusManager"

    const-string v1, "FocusManager cancelAutoFocus() mState = STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iput v2, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 675
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 676
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 677
    iput v3, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public clearFocusUI()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->clear()V

    .line 933
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 351
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

    .line 352
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0

    .line 353
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 357
    const-string v0, "FocusManager"

    const-string v1, "FocusManger doSnap()  mState = STATE_FOCUSING_SNAP_ON_FINISH "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 359
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public enableFocusSound()V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 941
    return-void
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public declared-synchronized getCAFFocusAreas()Ljava/util/List;
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
    .line 1145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCAFMeteringAreas()Ljava/util/List;
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
    .line 1149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultFocusAreas()Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 1153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v1, defaultArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    sget v4, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_LENGTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_RATE:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1155
    .local v3, width:I
    invoke-direct {p0, v3}, Lcom/android/hwcamera/FocusManager;->genFoucsRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1156
    .local v0, _area:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    const/high16 v5, 0x3f80

    invoke-static {v0, v4, v5}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 1157
    .local v2, optmizeRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 1158
    move-object v0, v2

    .line 1160
    :cond_0
    new-instance v4, Landroid/hardware/Camera$Area;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1161
    return-object v1
.end method

.method public getDefaultMeteringAreas()Ljava/util/List;
    .locals 6
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
    .line 1164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    .local v0, defaultArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    sget v2, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_LENGTH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/android/hwcamera/FocusManager;->FOCUS_AREA_RATE:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1166
    .local v1, width:I
    new-instance v2, Landroid/hardware/Camera$Area;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/FocusManager;->genFoucsRect(I)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    return-object v0
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
    .line 755
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
    .line 726
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 749
    :goto_0
    return-object v0

    .line 728
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    if-eqz v0, :cond_2

    .line 731
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 739
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 742
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 744
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 749
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 732
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isFocusAreaNotNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 734
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 737
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public declared-synchronized getMeteringAreas()Ljava/util/List;
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
    .line 761
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 565
    iput v9, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 566
    iput-boolean p4, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 568
    iget-boolean v8, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-ne v8, v9, :cond_1

    :cond_0
    move v6, v7

    .line 617
    :goto_0
    return v6

    .line 573
    :cond_1
    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eq v8, v6, :cond_2

    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 574
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 580
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    .line 581
    .local v1, focusWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v0

    .line 582
    .local v0, focusHeight:I
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 583
    .local v4, previewWidth:I
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 585
    .local v3, previewHeight:I
    iput p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    .line 586
    iput p2, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    .line 598
    add-int/lit8 v8, p1, -0x20

    add-int/lit8 v9, v4, -0x41

    invoke-static {v8, v7, v9}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v2

    .line 599
    .local v2, left:I
    add-int/lit8 v8, p2, -0x20

    add-int/lit8 v9, v3, -0x41

    invoke-static {v8, v7, v9}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 600
    .local v5, top:I
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v8, v2, v5}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 602
    if-ne p3, v6, :cond_4

    .line 603
    iget-object v7, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v7}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 610
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 614
    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 615
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
    .line 209
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 210
    const v1, 0x7f0c003f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/FocusIndicatorView;

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 212
    iput-object p2, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 213
    iput-object p3, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 214
    iput-object p4, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    .line 217
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 218
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p5, p6, v1, v2}, Lcom/android/hwcamera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 223
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 225
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    .line 230
    :goto_0
    return-void

    .line 228
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

    .line 205
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
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    goto :goto_0

    .line 200
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

    .line 203
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

    .line 200
    goto :goto_1
.end method

.method public initializeSoundPlayer(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isEnforceAudible"

    .prologue
    .line 695
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 697
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 708
    return-void
.end method

.method public isCAFSupported()Z
    .locals 2

    .prologue
    .line 925
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
    .line 449
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
    .line 873
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

    .line 912
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

    .line 936
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
    .line 970
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    return v0
.end method

.method public isPointOnFocusArea(Landroid/graphics/Point;)Z
    .locals 4
    .parameter "currentClickPoint"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 976
    monitor-enter p0

    .line 977
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 978
    :cond_0
    monitor-exit p0

    .line 984
    :goto_0
    return v1

    .line 980
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 981
    const/4 v2, 0x2

    new-array v0, v2, [F

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aput v2, v0, v3

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 982
    .local v0, points:[F
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 983
    monitor-enter p0

    .line 984
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

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 980
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

    .line 374
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

    .line 375
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 379
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 383
    if-eqz p1, :cond_1

    .line 384
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 389
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->capture()V

    .line 432
    :cond_0
    :goto_1
    return-void

    .line 386
    :cond_1
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    goto :goto_0

    .line 390
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 395
    if-eqz p1, :cond_4

    .line 396
    iput v4, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 397
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 408
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

    .line 410
    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 413
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 421
    if-eqz p1, :cond_5

    .line 422
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 399
    .end local v0           #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    :cond_4
    iput v5, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 401
    const/4 v0, 0x0

    .restart local v0       #soundPlayer:Lcom/android/hwcamera/SoundPlayer;
    goto :goto_2

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 428
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

    .line 1104
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 1110
    if-eqz p1, :cond_3

    .line 1112
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setIsCafEnded(Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1115
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    new-instance v1, Lcom/android/hwcamera/FocusManager$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/FocusManager$2;-><init>(Lcom/android/hwcamera/FocusManager;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1129
    :cond_3
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setIsCafEnded(Z)V

    .line 1131
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    new-instance v1, Lcom/android/hwcamera/FocusManager$3;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/FocusManager$3;-><init>(Lcom/android/hwcamera/FocusManager;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->post(Ljava/lang/Runnable;)Z

    .line 1139
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 629
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 632
    iput v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    .line 633
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 635
    return-void
.end method

.method public onShutterDown()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 233
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-nez v1, :cond_2

    .line 237
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 238
    iget-object v1, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, isNeedPlaySound:Z
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    if-eqz v1, :cond_3

    .line 246
    const/4 v0, 0x1

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 249
    if-eqz v0, :cond_4

    .line 250
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 270
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mLockAeAwbNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 272
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 990
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 992
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 1000
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    if-nez v0, :cond_3

    .line 1001
    const-string v0, "FocusManager"

    const-string v3, "onTouch, !mTouchFocusEnable return"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    iget-object v3, p0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraMovedController;->removeOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V

    .line 1007
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    .line 1013
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 1015
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 1019
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    .line 1020
    .local v1, focusWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v2

    .line 1021
    .local v2, focusHeight:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1022
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 1025
    .local v7, previewHeight:I
    monitor-enter p0

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_6

    .line 1033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 1034
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 1036
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
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

    .line 1050
    const/4 v0, 0x2

    new-array v11, v0, [F

    const/4 v0, 0x0

    int-to-float v3, p1

    aput v3, v11, v0

    const/4 v0, 0x1

    int-to-float v3, p2

    aput v3, v11, v0

    .line 1051
    .local v11, points:[F
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1052
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    aget v4, v11, v4

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v4, v7

    int-to-float v5, v6

    div-float/2addr v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v10

    .line 1055
    .local v10, optmizeRect:Landroid/graphics/Rect;
    if-eqz v10, :cond_7

    .line 1056
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iput-object v10, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 1059
    :cond_7
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 1061
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    add-int/lit8 v0, p1, -0x20

    const/4 v3, 0x0

    add-int/lit8 v4, v6, -0x41

    invoke-static {v0, v3, v4}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v9

    .line 1075
    .local v9, left:I
    add-int/lit8 v0, p2, -0x20

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x41

    invoke-static {v0, v3, v4}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v12

    .line 1076
    .local v12, top:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v0, v9, v12}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 1079
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1080
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    :cond_8
    iget-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_9

    .line 1084
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 1091
    const-string v0, "FocusManager"

    const-string v3, "FocusMange autoFocus"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    goto/16 :goto_0

    .line 1061
    .end local v9           #left:I
    .end local v10           #optmizeRect:Landroid/graphics/Rect;
    .end local v11           #points:[F
    .end local v12           #top:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1094
    .restart local v9       #left:I
    .restart local v10       #optmizeRect:Landroid/graphics/Rect;
    .restart local v11       #points:[F
    .restart local v12       #top:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 1096
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 453
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    .line 454
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 456
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 457
    :cond_0
    const/4 v2, 0x0

    .line 560
    :goto_0
    return v2

    .line 459
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->isFocusAreaNotNull()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 460
    const/4 v2, 0x1

    goto :goto_0

    .line 464
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    if-nez v2, :cond_3

    .line 465
    const-string v2, "FocusManager"

    const-string v5, "onTouch, !mTouchFocusEnable return"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v2, 0x1

    goto :goto_0

    .line 471
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->isFocusAreaNotNull()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/hwcamera/FocusManager;->cameraMovedListener:Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;

    invoke-virtual {v2, v5}, Lcom/android/hwcamera/CameraMovedController;->removeOnCameraMovedListener(Lcom/android/hwcamera/CameraMovedController$OnCameraMovedListener;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 482
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 483
    .local v6, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 484
    .local v7, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 485
    .local v3, focusWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 486
    .local v4, focusHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 487
    .local v8, previewWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 490
    .local v9, previewHeight:I
    monitor-enter p0

    .line 491
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_6

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_6
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 515
    const/4 v2, 0x2

    new-array v14, v2, [F

    const/4 v2, 0x0

    int-to-float v5, v6

    aput v5, v14, v2

    const/4 v2, 0x1

    int-to-float v5, v7

    aput v5, v14, v2

    .line 516
    .local v14, points:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Point;

    const/4 v10, 0x0

    aget v10, v14, v10

    float-to-int v10, v10

    const/16 v17, 0x1

    aget v17, v14, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v5, v10, v0}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v10, v9

    int-to-float v0, v8

    move/from16 v17, v0

    div-float v10, v10, v17

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v12

    .line 520
    .local v12, optmizeRect:Landroid/graphics/Rect;
    if-eqz v12, :cond_7

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iput-object v12, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 524
    :cond_7
    const/high16 v5, 0x3fc0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v10, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 526
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 532
    .local v13, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v2, v3, 0x2

    sub-int v2, v6, v2

    const/4 v5, 0x0

    sub-int v10, v8, v3

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v11

    .line 533
    .local v11, left:I
    div-int/lit8 v2, v4, 0x2

    sub-int v2, v7, v2

    const/4 v5, 0x0

    sub-int v10, v9, v4

    invoke-static {v2, v5, v10}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v16

    .line 534
    .local v16, top:I
    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v11, v0, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 536
    invoke-virtual {v13}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v15

    .line 537
    .local v15, rules:[I
    const/16 v2, 0xd

    const/4 v5, 0x0

    aput v5, v15, v2

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 544
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/hwcamera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mListener:Lcom/android/hwcamera/FocusManager$Listener;

    invoke-interface {v2}, Lcom/android/hwcamera/FocusManager$Listener;->setFocusParameters()V

    .line 552
    const-string v2, "FocusManager"

    const-string v5, "FocusMange autoFocus"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->autoFocus()V

    .line 560
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 526
    .end local v11           #left:I
    .end local v12           #optmizeRect:Landroid/graphics/Rect;
    .end local v13           #p:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #points:[F
    .end local v15           #rules:[I
    .end local v16           #top:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 555
    .restart local v11       #left:I
    .restart local v12       #optmizeRect:Landroid/graphics/Rect;
    .restart local v13       #p:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v14       #points:[F
    .restart local v15       #rules:[I
    .restart local v16       #top:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/FocusManager;->updateFocusUI()V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/hwcamera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const-wide/16 v17, 0x3e8

    move-wide/from16 v0, v17

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 882
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 883
    return-void
.end method

.method public releaseSoundPlayer()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mSoundPlayerSuccess:Lcom/android/hwcamera/SoundPlayer;

    .line 722
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus(Z)V

    .line 806
    return-void
.end method

.method public resetTouchFocus(Z)V
    .locals 11
    .parameter "isForce"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 809
    iget-boolean v6, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v6, :cond_0

    .line 858
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_3

    .line 819
    :cond_1
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 820
    .local v4, previewWidth:I
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 821
    .local v3, previewHeight:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    .line 822
    .local v1, focusWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v0

    .line 823
    .local v0, focusHeight:I
    div-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, -0x20

    add-int/lit8 v7, v4, -0x41

    invoke-static {v6, v10, v7}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v2

    .line 825
    .local v2, left:I
    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, -0x20

    add-int/lit8 v7, v3, -0x41

    invoke-static {v6, v10, v7}, Lcom/android/hwcamera/Util;->clamp(III)I

    move-result v5

    .line 827
    .local v5, top:I
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    invoke-virtual {v6, v2, v5}, Lcom/android/hwcamera/hwui/FocusIndicatorView;->setLocation(II)V

    .line 828
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 829
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 830
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    new-instance v7, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_2
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 833
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 834
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    new-instance v7, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v0           #focusHeight:I
    .end local v1           #focusWidth:I
    .end local v2           #left:I
    .end local v3           #previewHeight:I
    .end local v4           #previewWidth:I
    .end local v5           #top:I
    :cond_3
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    if-nez v6, :cond_4

    .line 838
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    .line 839
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    new-instance v7, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_4
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    if-nez v6, :cond_5

    .line 842
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    .line 843
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    new-instance v7, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v7, v8, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_5
    if-nez p1, :cond_7

    .line 846
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 847
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFFocusArea:Ljava/util/List;

    iget-object v7, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 849
    :cond_6
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v6, :cond_7

    .line 850
    iget-object v6, p0, Lcom/android/hwcamera/FocusManager;->mCAFMeteringArea:Ljava/util/List;

    iget-object v7, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 853
    :cond_7
    monitor-enter p0

    .line 854
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 855
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 856
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    iput-boolean v10, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    goto/16 :goto_0

    .line 856
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mAeAwbLock:Z

    .line 887
    return-void
.end method

.method public setCameraMovedController(Lcom/android/hwcamera/CameraMovedController;)V
    .locals 0
    .parameter "mCameraMovedController"

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/hwcamera/FocusManager;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    .line 951
    return-void
.end method

.method public setFocusAreaCentra()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 278
    const-string v0, "Focus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shutterLongPressed, Parameters: continuous-picture, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/hwcamera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaWidth()I

    move-result v1

    .line 282
    .local v1, focusWidth:I
    invoke-direct {p0}, Lcom/android/hwcamera/FocusManager;->getFocusAreaHeight()I

    move-result v2

    .line 283
    .local v2, focusHeight:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 284
    .local v6, previewWidth:I
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 285
    .local v7, previewHeight:I
    div-int/lit8 v4, v6, 0x2

    .line 286
    .local v4, x:I
    div-int/lit8 v5, v7, 0x2

    .line 288
    .local v5, y:I
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 291
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x1

    invoke-direct {v3, v8, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 293
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x1

    invoke-direct {v3, v8, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    const/4 v0, 0x2

    new-array v10, v0, [F

    int-to-float v0, v4

    aput v0, v10, v12

    int-to-float v0, v5

    aput v0, v10, v13

    .line 299
    .local v10, points:[F
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 300
    monitor-enter p0

    .line 301
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Point;

    const/4 v8, 0x0

    aget v8, v10, v8

    float-to-int v8, v8

    const/4 v11, 0x1

    aget v11, v10, v11

    float-to-int v11, v11

    invoke-direct {v3, v8, v11}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v8, v7

    int-to-float v11, v6

    div-float/2addr v8, v11

    invoke-static {v0, v3, v8}, Lcom/android/hwcamera/Util;->optmizeFocusAreaRect(Landroid/graphics/Rect;Landroid/graphics/Point;F)Landroid/graphics/Rect;

    move-result-object v9

    .line 305
    .local v9, optmizeRect:Landroid/graphics/Rect;
    if-eqz v9, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iput-object v9, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 308
    :cond_1
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 310
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    return-void

    .line 297
    .end local v9           #optmizeRect:Landroid/graphics/Rect;
    .end local v10           #points:[F
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 310
    .restart local v10       #points:[F
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setFocusStateCAFFace()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 916
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v1, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 921
    :goto_0
    return v0

    .line 920
    :cond_0
    iput v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusState:I

    goto :goto_0
.end method

.method public setSoundState(Z)V
    .locals 0
    .parameter "isMute"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mIsMute:Z

    .line 181
    return-void
.end method

.method public setTouchFocusEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/android/hwcamera/FocusManager;->mTouchFocusEnable:Z

    .line 445
    return-void
.end method

.method public shutterLongPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->setFocusAreaCentra()V

    .line 326
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

    .line 328
    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 329
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

    .line 332
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "FocusManager::shutterLongPressed - do focus."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mIsNeedPlaySound:Z

    .line 335
    iput-boolean v3, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    .line 340
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/FocusManager;->mInLongPress:Z

    .line 343
    :cond_2
    return-void
.end method

.method public transformCoordinate([FLandroid/view/View;Landroid/hardware/Camera$Size;)V
    .locals 9
    .parameter "Coordinate"
    .parameter "surfaceview"
    .parameter "previewSize"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 895
    if-nez p3, :cond_0

    .line 896
    const-string v5, "FocusManager"

    const-string v6, "previewSize is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_0
    return-void

    .line 900
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 901
    .local v1, SurfaceViewLocation:[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 902
    iget v5, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointX:I

    aget v6, v1, v7

    sub-int/2addr v5, v6

    int-to-float v3, v5

    .line 903
    .local v3, x:F
    iget v5, p0, Lcom/android/hwcamera/FocusManager;->mTouchPointY:I

    aget v6, v1, v8

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 905
    .local v4, y:F
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 906
    .local v2, SurfaceViewWidth:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 907
    .local v0, SurfaceViewHeight:I
    iget v5, p3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, p1, v7

    .line 908
    iget v5, p3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, p1, v8

    goto :goto_0
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    .line 765
    iget-boolean v1, p0, Lcom/android/hwcamera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/FocusManager;->mFocusIndicator:Lcom/android/hwcamera/hwui/FocusIndicatorView;

    .line 778
    .local v0, focusIndicator:Lcom/android/hwcamera/hwui/FocusIndicator;
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 779
    invoke-virtual {p0}, Lcom/android/hwcamera/FocusManager;->isFocusAreaNotNull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 780
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->clear()V

    goto :goto_0

    .line 785
    :cond_2
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 787
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 788
    :cond_4
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showFocuing()V

    goto :goto_0

    .line 796
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 797
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 798
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 799
    invoke-interface {v0}, Lcom/android/hwcamera/hwui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
