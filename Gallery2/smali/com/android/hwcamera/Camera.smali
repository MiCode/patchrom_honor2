.class public Lcom/android/hwcamera/Camera;
.super Lcom/android/hwcamera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;
.implements Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;
.implements Lcom/android/hwcamera/FocusManager$Listener;
.implements Lcom/android/hwcamera/HWExtCameraHandler$Listener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;
.implements Lcom/android/hwcamera/Switcher$OnSwitchListener;
.implements Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;
.implements Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;
.implements Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/Camera$SuperPanelListener;,
        Lcom/android/hwcamera/Camera$MyOrientationEventListener;,
        Lcom/android/hwcamera/Camera$PanoramaBarListener;,
        Lcom/android/hwcamera/Camera$ImageCapture;,
        Lcom/android/hwcamera/Camera$ImageSaver;,
        Lcom/android/hwcamera/Camera$SaveRequest;,
        Lcom/android/hwcamera/Camera$ZoomChangeListener;,
        Lcom/android/hwcamera/Camera$ZoomListener;,
        Lcom/android/hwcamera/Camera$ErrorCallback;,
        Lcom/android/hwcamera/Camera$PreviewFrameCallback;,
        Lcom/android/hwcamera/Camera$AutoFocusCallback;,
        Lcom/android/hwcamera/Camera$DecodeThumbnailThread;,
        Lcom/android/hwcamera/Camera$DecodeBurstRequest;,
        Lcom/android/hwcamera/Camera$JpegPictureCallback;,
        Lcom/android/hwcamera/Camera$RawPictureCallback;,
        Lcom/android/hwcamera/Camera$PostViewPictureCallback;,
        Lcom/android/hwcamera/Camera$ShutterCallback;,
        Lcom/android/hwcamera/Camera$MainHandler;,
        Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;
    }
.end annotation


# static fields
.field public static EXTRA_TARGET_PAGE:Ljava/lang/String;

.field public static final HAS_HDR_FEATURE:Z

.field public static PAGE_NUMBER:Ljava/lang/String;

.field public static mMediaServerDied:Z


# instance fields
.field private final REVIEW_TIME_DELAY:J

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private currentClickPoint:Landroid/graphics/Point;

.field private isCounterDowning:Z

.field private isSavePic:Z

.field private ishelpexit:Z

.field private mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

.field private mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

.field private final mAutoFocusMoveCallback:Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness_key:Ljava/lang/String;

.field private mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;

.field private mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

.field private mCameraState:I

.field private mCancelTimer:Z

.field private mCaptureStartTime:J

.field mCloseCameraLock:[Ljava/lang/Object;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContrast_key:Ljava/lang/String;

.field private mControlBarHeight:I

.field private mCropValue:Ljava/lang/String;

.field private mCurrentState:I

.field private mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mDelayTimeRemaining:I

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

.field private mEulaPreference:Landroid/content/SharedPreferences;

.field private mFaceView:Lcom/android/hwcamera/hwui/FaceView;

.field private mFirstEnter:Z

.field private mFirstTimeInitialized:Z

.field private mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

.field private mFlashSupported:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusManager:Lcom/android/hwcamera/FocusManager;

.field private mFocusStartTime:J

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mFrameCallback:Lcom/android/hwcamera/Camera$PreviewFrameCallback;

.field private mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

.field private mGalleryExHorScroll:Landroid/view/View;

.field private mGalleryExKEY:Ljava/lang/String;

.field private mGalleryExLinearLayout:Landroid/widget/LinearLayout;

.field private mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

.field private mGalleryExitAnim:Landroid/view/animation/Animation;

.field private mGpsSignalState:Z

.field private mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrDone:Z

.field private mHdrSaveOrgPic:Z

.field private mISO_key:Ljava/lang/String;

.field private mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

.field private mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsActivityExit:Z

.field private mIsAutoFocus:Z

.field private mIsBursting:Z

.field private mIsCafSucceed:Z

.field private mIsCounter:Z

.field private mIsExternalStorageExist:Z

.field private mIsGalleryExViewAdd:Z

.field private mIsGroupFinish:Z

.field private mIsHomeExit:Z

.field private mIsImageCaptureIntent:Z

.field private mIsInnerlImageCaptureIntent:Z

.field private mIsInternalStorageExist:Z

.field private mIsInvokeBarFirstInflate:Z

.field private mIsMute:Z

.field private mIsResetThumbnail:Z

.field private mIsReview:Z

.field private mIsSmileCaptureState:Z

.field private mIsSupporetedWideScreen:Z

.field private mIsSwitchControlBar:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mLastAspectRatio:D

.field private mLastSmileCapTime:J

.field private mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mLocationState:Z

.field private mMaxBurstPicNumber:I

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field mMoveState:Z

.field private mNM:Landroid/app/NotificationManager;

.field private mNumberOfCameras:I

.field public mOpenCameraFail:Z

.field private mOpenCameraHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

.field private mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

.field private mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParametersManager:Lcom/android/hwcamera/ParametersManager;

.field private mPicNum:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

.field private mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

.field private mPicturesRemaining:I

.field private final mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field private mPreviewOnPara:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordLocation:Z

.field private mRestartPreviewNeed:Z

.field private mReviewOrientation:I

.field private mReviewTime:I

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mSaturation_key:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mSenceToFocusMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShootingMode:I

.field private mShowProcess:Z

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private final mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field private mShutterCenter:Lcom/android/hwcamera/RotateImageView;

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterupTime:J

.field private mSmileRepeateCount:I

.field private mSmoothZoomSupported:Z

.field private mSnapshotOnIdle:Z

.field mStartPreviewLock:[Ljava/lang/Object;

.field mStopPreviewLock:[Ljava/lang/Object;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

.field private mSwitcher:Lcom/android/hwcamera/Switcher;

.field private mTargetTrackingSupported:Z

.field private mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

.field private mTargetZoomValue:I

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

.field private mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mThumnailAnimation:Landroid/view/animation/Animation;

.field private mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

.field private mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

.field private mTimerValue:I

.field private mUiElements:Lcom/android/hwcamera/UiElements;

.field private mUpdateSet:I

.field private mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

.field private mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

.field private mZoomControlListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

.field private final mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

.field private mZoomMax:I

.field mZoomRatios:[F

.field private mZoomSeekBar:Landroid/widget/SeekBar;

.field private mZoomState:I

.field private mZoomValue:I

.field private moveTimes:I

.field openCameraLock:[Ljava/lang/Object;

.field private preClickPoint:Landroid/graphics/Point;

.field private preDoubleClickTime:J

.field private prepareQuitCameraLock:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const-string v0, "mPageNumber"

    sput-object v0, Lcom/android/hwcamera/Camera;->PAGE_NUMBER:Ljava/lang/String;

    .line 191
    const-string v0, "extra_target_page"

    sput-object v0, Lcom/android/hwcamera/Camera;->EXTRA_TARGET_PAGE:Ljava/lang/String;

    .line 462
    sput-boolean v1, Lcom/android/hwcamera/Camera;->mMediaServerDied:Z

    .line 481
    const-string v0, "ro.config.hw_camera_hdr"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/hwcamera/Camera;->HAS_HDR_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 188
    iput v2, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 192
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->ishelpexit:Z

    .line 194
    iput v2, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    .line 195
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    .line 258
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isSavePic:Z

    .line 294
    iput v2, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    .line 302
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    .line 318
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mSmoothZoomSupported:Z

    .line 319
    new-instance v0, Lcom/android/hwcamera/Camera$ZoomChangeListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ZoomChangeListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControlListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    .line 320
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    .line 321
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 331
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    .line 335
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    .line 337
    iput v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    .line 343
    iput v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 344
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    .line 367
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    .line 393
    iput v4, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 394
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    .line 410
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 425
    iput-wide v5, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    .line 427
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 429
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 430
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 431
    new-instance v0, Lcom/android/hwcamera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ShutterCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

    .line 432
    new-instance v0, Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$PostViewPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    .line 433
    new-instance v0, Lcom/android/hwcamera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$RawPictureCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

    .line 434
    new-instance v0, Lcom/android/hwcamera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

    .line 435
    new-instance v0, Lcom/android/hwcamera/Camera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ZoomListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

    .line 437
    new-instance v0, Lcom/android/hwcamera/Camera$PreviewFrameCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$PreviewFrameCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFrameCallback:Lcom/android/hwcamera/Camera$PreviewFrameCallback;

    .line 440
    new-instance v0, Lcom/android/hwcamera/Camera$ErrorCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$ErrorCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

    .line 463
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 464
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 480
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    .line 484
    new-instance v0, Lcom/android/hwcamera/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$MainHandler;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    .line 485
    iput v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 486
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 493
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mTargetTrackingSupported:Z

    .line 508
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    .line 510
    iput v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 511
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 518
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 519
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    .line 520
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 521
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 526
    new-instance v0, Lcom/android/hwcamera/Camera$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$1;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 531
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 532
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 533
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    .line 534
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 535
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    .line 550
    new-instance v0, Lcom/android/hwcamera/VolumePlusButton;

    invoke-direct {v0}, Lcom/android/hwcamera/VolumePlusButton;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    .line 551
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsReview:Z

    .line 552
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsCounter:Z

    .line 556
    iput v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    .line 557
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->REVIEW_TIME_DELAY:J

    .line 560
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    .line 562
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 563
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    .line 578
    iput v2, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    .line 586
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    .line 587
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    .line 591
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 593
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    .line 594
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    .line 595
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    .line 596
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    .line 597
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    .line 598
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    .line 599
    iput v2, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    .line 600
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    .line 601
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    .line 603
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    .line 607
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    .line 618
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 619
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    .line 630
    iput-wide v5, p0, Lcom/android/hwcamera/Camera;->preDoubleClickTime:J

    .line 637
    new-instance v0, Lcom/android/hwcamera/UiElements;

    invoke-direct {v0}, Lcom/android/hwcamera/UiElements;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    .line 639
    iput v2, p0, Lcom/android/hwcamera/Camera;->moveTimes:I

    .line 640
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    .line 654
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsHomeExit:Z

    .line 655
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsSwitchControlBar:Z

    .line 656
    new-instance v0, Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusMoveCallback:Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;

    .line 1780
    new-instance v0, Lcom/android/hwcamera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$4;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2947
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsResetThumbnail:Z

    .line 2949
    new-instance v0, Lcom/android/hwcamera/Camera$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$5;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3150
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    .line 3189
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    .line 4548
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    .line 5616
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 6062
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    .line 6129
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    .line 6131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mLastAspectRatio:D

    .line 6239
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    .line 7741
    return-void
.end method

.method static synthetic access$10102(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mIsResetThumbnail:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/hwcamera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining$Key;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PictureRemaining;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExClose()V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$10802(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$10900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    return v0
.end method

.method static synthetic access$11000(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    return v0
.end method

.method static synthetic access$11100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallback:Lcom/android/hwcamera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallback:Lcom/android/hwcamera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$PostViewPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallback:Lcom/android/hwcamera/Camera$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    return p1
.end method

.method static synthetic access$11700(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needNewSnapShotAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11800(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$12100(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->switchCameraId(I)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->stopPanorama(Z)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/PanoramaBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$12701(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    return v0
.end method

.method static synthetic access$12902(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    return p1
.end method

.method static synthetic access$13000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mIsHomeExit:Z

    return p1
.end method

.method static synthetic access$13100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->restoreParameterToDefault()V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/hwcamera/Camera;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showConfirmGpsDialog()V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showEulaDialog()V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ParametersManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    return v0
.end method

.method static synthetic access$14002(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    return p1
.end method

.method static synthetic access$14100(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->goToPanoromaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFlashModeEnable()V

    return-void
.end method

.method static synthetic access$14400(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setAutoFocus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$14600(Lcom/android/hwcamera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->galleryExStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    return-void
.end method

.method static synthetic access$14800(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    return-void
.end method

.method static synthetic access$14900(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsGroupFinish:Z

    return v0
.end method

.method static synthetic access$15000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExInit()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mIsGroupFinish:Z

    return p1
.end method

.method static synthetic access$15100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    return-void
.end method

.method static synthetic access$1601(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$1701(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/FaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HWExtCameraHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->displayBlinkIcon(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearFaceRectangles()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/CameraAutoFocusController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateDelayTakePictureTime()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$DecodeThumbnailThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Camera$ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/Camera;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->hideReview(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->displayReview()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchReview()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideGrid()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return p1
.end method

.method static synthetic access$3408(Lcom/android/hwcamera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->releaseBurstSound()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/Camera;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/hwcamera/Camera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPanoramaViewer()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needSnapShotAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needLoadingAnim()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/PreviewFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/Camera;Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2, p3}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchCameraUI()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setTimerpromptIcon()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isSavePic:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->isSavePic:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/ZoomControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopCaptureIfNeed()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/Camera;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/Camera;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6702(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$6800(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$6802(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$6900(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/SoundPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7102(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7200(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7202(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7300(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    return-wide v0
.end method

.method static synthetic access$7400(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mLocationState:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/android/hwcamera/Camera;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$7602(Lcom/android/hwcamera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$7700(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/hwcamera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/hwcamera/Camera;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->decordPictureForReview([B)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$8000(Lcom/android/hwcamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/hwcamera/Camera;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    return v0
.end method

.method static synthetic access$8300(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopBurst()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/hwcamera/Camera;[BLandroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->hdrProcessing([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/hwcamera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/android/hwcamera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/HwCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/android/hwcamera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$8900(Lcom/android/hwcamera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/Camera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doAttach()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/hwcamera/Camera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/hwcamera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/android/hwcamera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$9400(Lcom/android/hwcamera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraStoppedAndFinish()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    return v0
.end method

.method static synthetic access$9602(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    return p1
.end method

.method static synthetic access$9700(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$9702(Lcom/android/hwcamera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    return p1
.end method

.method static synthetic access$9800(Lcom/android/hwcamera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/hwcamera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomMax:I

    return v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1274
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1275
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/hwcamera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$2;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1281
    return-void
.end method

.method private calculateHorizontalFieldOfView(ILandroid/hardware/Camera$Parameters;)F
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2123
    .line 2124
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    cmpg-float v1, v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    const/high16 v2, 0x4334

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 2126
    :cond_0
    cmpg-float v1, v0, v0

    if-gez v1, :cond_1

    .line 2127
    const/high16 v0, 0x4248

    .line 2133
    :cond_1
    :goto_0
    const v1, 0x3f0ccccd

    .line 2134
    mul-float/2addr v1, v0

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2135
    return v0

    .line 2130
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    goto :goto_0
.end method

.method private canSetZoom()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5818
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-nez v1, :cond_1

    .line 5831
    :cond_0
    :goto_0
    return v0

    .line 5821
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v1}, Lcom/android/hwcamera/Camera$ImageSaver;->isAllImageSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 5831
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 5593
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPanorama(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3975
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearPanoramaMessage()V

    .line 3976
    if-eqz p1, :cond_0

    .line 3977
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3979
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 3980
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3981
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    .line 3982
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 3983
    return-void
.end method

.method private checkCurrentStorage()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4282
    .line 4283
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 4285
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v1, :cond_1

    .line 4286
    const/4 v0, 0x1

    move v2, v0

    .line 4293
    :goto_0
    if-eqz v2, :cond_2

    .line 4294
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 4299
    :goto_1
    const-wide/32 v4, 0x1400000

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 4300
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 4302
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 4307
    :goto_2
    iget v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4310
    invoke-direct {p0, v2, v0, v1}, Lcom/android/hwcamera/Camera;->updateStorageHint(ZJ)V

    .line 4312
    :cond_0
    return-void

    .line 4288
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    if-nez v1, :cond_4

    move v2, v3

    .line 4289
    goto :goto_0

    .line 4296
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    goto :goto_1

    .line 4304
    :cond_3
    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method private checkRemaining(J)I
    .locals 5
    .parameter

    .prologue
    .line 4428
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updatePicSizePrefKey()V

    .line 4429
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PictureRemaining;->getPictureSize(Lcom/android/hwcamera/PictureRemaining$Key;)I

    move-result v0

    .line 4430
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkStorage()(M) :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v3, 0x100000

    div-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "current picsize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    const-wide/32 v1, 0x1400000

    sub-long v1, p1, v1

    int-to-long v3, v0

    div-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method private checkStorage()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4375
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_0

    .line 4377
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4378
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "memorycard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4379
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4384
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_1

    .line 4385
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4386
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4392
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_save_location_key"

    const v2, 0x7f0e0206

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4394
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4396
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    move v2, v3

    .line 4402
    :goto_0
    const-wide/32 v4, 0x1400000

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 4403
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 4405
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 4410
    :goto_1
    iget v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 4413
    invoke-direct {p0, v2, v0, v1}, Lcom/android/hwcamera/Camera;->updateStorageHint(ZJ)V

    .line 4425
    :goto_2
    return-void

    .line 4398
    :cond_2
    const/4 v2, 0x1

    .line 4399
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    goto :goto_0

    .line 4407
    :cond_3
    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_1

    .line 4416
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->updateStorageHintEx(Z)V

    goto :goto_2
.end method

.method private checkStorageForFirstInit()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 4317
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_0

    .line 4319
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4320
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "memorycard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4326
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_1

    .line 4327
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4328
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4334
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_save_location_key"

    const v2, 0x7f0e0206

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4336
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4338
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    move v2, v3

    .line 4344
    :goto_0
    const-wide/32 v4, 0x1400000

    cmp-long v4, v0, v4

    if-lez v4, :cond_3

    .line 4345
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 4351
    :goto_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4354
    if-nez v2, :cond_4

    .line 4355
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 4366
    :goto_2
    return-void

    .line 4340
    :cond_2
    const/4 v2, 0x1

    .line 4341
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    goto :goto_0

    .line 4348
    :cond_3
    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    goto :goto_1

    .line 4357
    :cond_4
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_2

    .line 4360
    :cond_5
    if-eqz v2, :cond_6

    .line 4361
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_2

    .line 4363
    :cond_6
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_2
.end method

.method private clearFaceRectangles()V
    .locals 1

    .prologue
    .line 5654
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 5655
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 5656
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->invalidate()V

    .line 5658
    :cond_0
    return-void
.end method

.method private clearPanoramaMessage()V
    .locals 1

    .prologue
    .line 8377
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearPanoramaMessage()V

    .line 8378
    return-void
.end method

.method private closeOpenedPanel()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5662
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-nez v2, :cond_1

    .line 5675
    :cond_0
    :goto_0
    return v0

    .line 5665
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5666
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    move v0, v1

    .line 5667
    goto :goto_0

    .line 5668
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5669
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    move v0, v1

    .line 5670
    goto :goto_0

    .line 5671
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5672
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    move v0, v1

    .line 5673
    goto :goto_0
.end method

.method private closePanorama()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3986
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3987
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->restoreUi()V

    .line 3988
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    .line 3989
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 3990
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showNormalUi()V

    .line 3991
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 3992
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3993
    return-void
.end method

.method private collapseCameraControls()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1706
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v2, :cond_0

    .line 1736
    :goto_0
    return v0

    .line 1709
    :cond_0
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1710
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1714
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1715
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    goto :goto_0

    .line 1724
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_6

    .line 1725
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1726
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 1728
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1729
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 1731
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1732
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1736
    goto :goto_0
.end method

.method private collapseCameraControls(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1740
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v2, :cond_1

    .line 1777
    :cond_0
    :goto_0
    return v0

    .line 1743
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1744
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1745
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1750
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 1751
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1752
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    goto :goto_0

    .line 1757
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 1758
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    .line 1762
    goto :goto_0

    .line 1765
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_9

    .line 1766
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1767
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 1769
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1770
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 1772
    :cond_8
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1773
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 1777
    goto :goto_0
.end method

.method private decordPictureForReview([B)V
    .locals 8
    .parameter "jpegData"

    .prologue
    .line 2338
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2339
    .local v3, s:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 2340
    .local v2, ratio:I
    rem-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_0

    move v0, v2

    .line 2341
    .local v0, inSampleSize:I
    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2342
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2343
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 2346
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/hwcamera/Camera;->mReviewOrientation:I

    neg-int v5, v5

    invoke-static {p1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 2349
    return-void

    .line 2340
    .end local v0           #inSampleSize:I
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private displayBlinkIcon(Z)V
    .locals 2
    .parameter

    .prologue
    const v0, 0x7f0c00bb

    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    :goto_0
    return-void

    .line 1181
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayReview()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3620
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 3622
    invoke-direct {p0, v7}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    .line 3623
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setSwipingEnabled(Z)V

    .line 3648
    :goto_0
    return-void

    .line 3626
    :cond_0
    invoke-direct {p0, v7, v7}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3627
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->updateCameraAppView(Z)V

    .line 3628
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 3629
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3630
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3631
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3632
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3633
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3635
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3636
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3637
    int-to-double v3, v1

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/PreviewFrameLayout;->getAspectRatio()D

    move-result-wide v5

    div-double/2addr v3, v5

    double-to-int v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3638
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3639
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3644
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    int-to-long v2, v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3645
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method private doAttach()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 4469
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v1, :cond_0

    .line 4541
    :goto_0
    return-void

    .line 4473
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    .line 4475
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 4480
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 4483
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4484
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 4485
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 4487
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 4488
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4492
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 4489
    :catch_0
    move-exception v1

    .line 4492
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 4495
    :cond_1
    invoke-static {v1}, Lcom/android/hwcamera/Exif;->getOrientation([B)I

    move-result v0

    .line 4496
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/hwcamera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4497
    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4498
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 4499
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    goto :goto_0

    .line 4506
    :cond_2
    :try_start_2
    const-string v2, "crop-temp"

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4507
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4508
    const-string v3, "crop-temp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/hwcamera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 4509
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 4510
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 4511
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 4521
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 4524
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4525
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4526
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 4529
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4534
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.hwcamera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4536
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4537
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4539
    invoke-virtual {p0, v2, v5}, Lcom/android/hwcamera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4512
    :catch_1
    move-exception v1

    .line 4513
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 4514
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4521
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 4516
    :catch_2
    move-exception v1

    .line 4517
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setResultEx(I)V

    .line 4518
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4521
    invoke-static {v0}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/android/hwcamera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 4531
    :cond_4
    const-string v2, "return-data"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 4521
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 4492
    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 4544
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 4545
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 4546
    return-void
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 6031
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mCameraState ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->doSnap()V

    .line 6033
    return-void
.end method

.method private doTakePicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8063
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 8064
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 8065
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/ParametersManager;->getAutoFocusValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8066
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 8067
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 8069
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 8070
    return-void
.end method

.method private enableCameraControl(ZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "filterColor"

    .prologue
    .line 1928
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 1929
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 1930
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1936
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    if-eqz v0, :cond_2

    .line 1937
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/FlashImageView;->enableFilter(Z)V

    .line 1938
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    .line 1942
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    if-eqz v0, :cond_3

    .line 1943
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->enableFilter(Z)V

    .line 1944
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setEnableEx(Z)V

    .line 1949
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v0, :cond_4

    .line 1950
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 1956
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 1958
    return-void
.end method

.method private enableShutterButton(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1965
    if-eqz p1, :cond_2

    .line 1967
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCenter:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->clearColorFilter()V

    goto :goto_0

    .line 1970
    :cond_2
    if-eqz p2, :cond_0

    .line 1971
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1973
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterCenter:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/RotateImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private enableSwitcherThumbnail(Z)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0c0028

    .line 1980
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    if-nez v0, :cond_1

    .line 1998
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v0}, Lcom/android/hwcamera/Switcher;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1987
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/Switcher;->setEnabled(Z)V

    .line 1988
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1989
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1990
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1991
    if-eqz p1, :cond_2

    .line 1992
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v0}, Lcom/android/hwcamera/Switcher;->clearColorFilter()V

    .line 1993
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 1995
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setColorFilter(I)V

    .line 1996
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method

.method private flashModeInit()V
    .locals 3

    .prologue
    .line 3723
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 3724
    new-instance v1, Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/FlashImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 3725
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 3727
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/FlashImageView;->setFlashMocdChangeListener(Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;)V

    .line 3730
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-eqz v0, :cond_0

    .line 3731
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3732
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    .line 3735
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v0, :cond_1

    .line 3736
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setScenceDefaultValue(Ljava/lang/String;)V

    .line 3740
    :cond_1
    return-void
.end method

.method private flashModeUpdate()V
    .locals 2

    .prologue
    .line 3744
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-nez v0, :cond_0

    .line 3745
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3751
    :goto_0
    return-void

    .line 3749
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3750
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    goto :goto_0
.end method

.method private frontTimerInit()V
    .locals 3

    .prologue
    .line 3808
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 3809
    new-instance v1, Lcom/android/hwcamera/hwui/TimerImageView;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/TimerImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    .line 3810
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 3811
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/TimerImageView;->setTimerStateChangeListener(Lcom/android/hwcamera/hwui/TimerImageView$OnTimerStateChangeListener;)V

    .line 3812
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3813
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->init(I)V

    .line 3814
    return-void
.end method

.method private frontTimerUpdate()V
    .locals 2

    .prologue
    .line 3817
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3818
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->init(I)V

    .line 3819
    return-void
.end method

.method private galleryExClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3906
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 3907
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 3908
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 3910
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    .line 3911
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    .line 3912
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 3913
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 3916
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    .line 3918
    return-void
.end method

.method private galleryExEnd()V
    .locals 3

    .prologue
    const v2, 0x7f0c0056

    const/4 v1, 0x0

    .line 3883
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 3884
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3885
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    .line 3887
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3888
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3890
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideInControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 3891
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 3903
    :goto_0
    return-void

    .line 3894
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setFlashSwitchIconVisibility(I)V

    .line 3895
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setPromptIconVisibility(I)V

    .line 3896
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 3897
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 3900
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    goto :goto_0
.end method

.method private galleryExInit()V
    .locals 4

    .prologue
    .line 3858
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSuperPanelVisibility(I)V

    .line 3860
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    if-nez v0, :cond_0

    .line 3861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsGalleryExViewAdd:Z

    .line 3862
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3863
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3864
    new-instance v2, Lcom/android/hwcamera/hwui/GalleryEx;

    const v3, 0x7f040011

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/android/hwcamera/hwui/GalleryEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iput-object v2, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    .line 3865
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 3866
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 3867
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExHorScroll:Landroid/view/View;

    .line 3868
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    .line 3873
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 3874
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3875
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->init(Ljava/lang/String;)V

    .line 3876
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 3877
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3879
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3880
    return-void

    .line 3870
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExStart(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3838
    iput-object p1, p0, Lcom/android/hwcamera/Camera;->mGalleryExKEY:Ljava/lang/String;

    .line 3839
    const-string v0, "pref_camera_distortion_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3840
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 3844
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 3845
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 3847
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3848
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 3852
    :cond_1
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideOutControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 3854
    return-void

    .line 3842
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    goto :goto_0
.end method

.method private genCameraHelpCenterIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    const/high16 v3, 0x400

    .line 5223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.HelpCenter.help"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5224
    const-string v1, "com.android.hwcamerahelp"

    const-string v2, "com.android.hwcamerahelp.help.HelpActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5226
    sget-object v1, Lcom/android/hwcamera/Camera;->PAGE_NUMBER:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5227
    const-string v1, "extra_from_activity"

    const-string v2, "hwCamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5228
    sget-object v1, Lcom/android/hwcamera/Camera;->EXTRA_TARGET_PAGE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->genCameraHelpCurrentPage()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5229
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5231
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5232
    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 5233
    if-eqz v1, :cond_0

    .line 5236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private genCameraHelpCurrentPage()I
    .locals 3

    .prologue
    .line 5240
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "config_helpcenter_current_page"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 3148
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPreviewSizeUnderMaxValueWithRatio(Ljava/util/List;DI)Landroid/hardware/Camera$Size;
    .locals 17
    .parameter
    .parameter "targetRatio"
    .parameter "maxValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 6307
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fa999999999999aL

    .line 6308
    .local v1, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 6309
    const/4 v7, 0x0

    .line 6345
    :cond_0
    return-object v7

    .line 6311
    :cond_1
    const/4 v7, 0x0

    .line 6312
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 6320
    .local v5, minDiff:D
    invoke-virtual/range {p0 .. p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 6321
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 6323
    .local v11, targetHeight:I
    if-gtz v11, :cond_2

    .line 6325
    const-string v13, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 6326
    .local v12, windowManager:Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 6328
    .end local v12           #windowManager:Landroid/view/WindowManager;
    :cond_2
    const-string v13, "Camera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "targetHeight = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6332
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 6333
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v0, p4

    if-ge v13, v0, :cond_3

    .line 6334
    iget v13, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 6335
    .local v8, ratio:D
    sub-double v13, v8, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_3

    .line 6337
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v5

    if-gez v13, :cond_3

    .line 6338
    move-object v7, v10

    .line 6339
    iget v13, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v5, v13

    goto :goto_0
.end method

.method private getPreviewSizeUnderMaxValueWithoutRatio(Ljava/util/List;I)Landroid/hardware/Camera$Size;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 6266
    if-nez p1, :cond_1

    .line 6301
    :cond_0
    return-object v4

    .line 6278
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6279
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6281
    if-gtz v0, :cond_4

    .line 6283
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6284
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 6286
    :goto_0
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "targetHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6289
    const-string v0, "Camera"

    const-string v2, "No preview size match the aspect ratio"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6290
    const-wide v2, 0x7fefffffffffffffL

    .line 6291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 6292
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v6, p2, :cond_2

    .line 6293
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_3

    .line 6295
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_2
    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private getPropPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6920
    const-string v0, "ro.camera.hw_preview_size_16_9"

    .line 6921
    const-wide v1, 0x3ff5555555555555L

    sub-double v1, p2, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3fb999999999999aL

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 6922
    const-string v0, "ro.camera.hw_preview_size_4_3"

    .line 6923
    const-string v1, "Camera"

    const-string v2, "Current preview size is 4:3 !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6927
    :goto_0
    const/4 v1, 0x0

    .line 6928
    const-string v2, "0x0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->parseStringToSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 6930
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 6931
    aget v4, v2, v6

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, v5, :cond_0

    aget v4, v2, v7

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v4, v5, :cond_0

    .line 6933
    const-string v1, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in system property is supported by hardware!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6938
    :goto_1
    return-object v0

    .line 6925
    :cond_1
    const-string v1, "Camera"

    const-string v2, "Current preview size is 16:9 !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6937
    :cond_2
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v2, v7

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in system property is NOT supported by hardware!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 6938
    goto :goto_1
.end method

.method private getRequestRemaining()I
    .locals 2

    .prologue
    .line 4774
    const/4 v0, 0x1

    .line 4775
    .local v0, requestRemaining:I
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    packed-switch v1, :pswitch_data_0

    .line 4802
    :pswitch_0
    const/4 v0, 0x1

    .line 4804
    :goto_0
    return v0

    .line 4778
    :pswitch_1
    const/4 v0, 0x1

    .line 4779
    goto :goto_0

    .line 4782
    :pswitch_2
    const/4 v0, 0x2

    .line 4783
    goto :goto_0

    .line 4786
    :pswitch_3
    const/4 v0, 0x3

    .line 4787
    goto :goto_0

    .line 4790
    :pswitch_4
    const/4 v0, 0x1

    .line 4791
    goto :goto_0

    .line 4794
    :pswitch_5
    sget v0, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 4795
    goto :goto_0

    .line 4798
    :pswitch_6
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 4799
    goto :goto_0

    .line 4775
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    const/4 v0, 0x0

    .line 1484
    :goto_0
    return-object v0

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 1480
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    .line 1481
    const/4 v0, 0x0

    array-length v4, v1

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 1482
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c8

    div-float/2addr v0, v5

    aput v0, v1, v2

    .line 1481
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1484
    goto :goto_0
.end method

.method private goToPanoromaMode()Z
    .locals 2

    .prologue
    .line 7554
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7555
    :cond_0
    const/4 v0, 0x0

    .line 7564
    :goto_0
    return v0

    .line 7557
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->switchToOtherMode(I)Z

    .line 7558
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7563
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 7564
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleDoubleClick(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1694
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1695
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 1696
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/HWExtCameraHandler;->isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->onShutterButtonLongPressed()V

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 1700
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 1701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->preClickPoint:Landroid/graphics/Point;

    .line 1703
    :cond_1
    return-void
.end method

.method private hdrProcessing([BLandroid/location/Location;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2352
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2356
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    if-eqz v0, :cond_5

    .line 2358
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/hwcamera/Camera;->mPicNum:I

    if-eq v0, v2, :cond_2

    if-nez p1, :cond_4

    :cond_2
    move v0, v1

    .line 2367
    :goto_1
    if-eqz v0, :cond_0

    .line 2368
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mHdrDone:Z

    .line 2370
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2373
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2376
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_facedetection_key"

    const-string v3, "on"

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2378
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v2, :cond_3

    .line 2379
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 2381
    :cond_3
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2382
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto :goto_0

    .line 2361
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 2365
    goto :goto_1
.end method

.method private hideAfterCaptureAlertOnPause()V
    .locals 2

    .prologue
    .line 5258
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 5259
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 5260
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5263
    :cond_0
    return-void
.end method

.method private hideGrid()V
    .locals 3

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_grid_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/GridLines;

    .line 1117
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    .line 1119
    :cond_0
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 5

    .prologue
    const v4, 0x7f0c0056

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7110
    iput v3, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 7112
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7113
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 7114
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideInControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 7115
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 7119
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    .line 7122
    invoke-direct {p0, v3, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 7123
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 7124
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7127
    :cond_0
    return-void
.end method

.method private hideReview(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3651
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->exitGallery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3652
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->updateCameraAppView(Z)V

    .line 3653
    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3655
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 3656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    .line 3658
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    .line 3661
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 3662
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 3666
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3668
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setSwipingEnabled(Z)V

    .line 3669
    return-void
.end method

.method private hideReviewUI()V
    .locals 2

    .prologue
    .line 3602
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3603
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3604
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3606
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3607
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 3609
    :cond_1
    return-void
.end method

.method private initBurstSound()V
    .locals 4

    .prologue
    .line 2016
    const/4 v0, 0x1

    .line 2017
    const-string v1, "ro.camera.sound.forced"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2018
    const/4 v0, 0x0

    .line 2020
    :cond_0
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 2022
    return-void
.end method

.method private initCameraSwitcher()V
    .locals 2

    .prologue
    .line 3775
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 3777
    iget v0, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 3779
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 3784
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setCameraSwitcherIcon()V

    .line 3785
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$7;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3793
    return-void

    .line 3781
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initGridLines(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 4019
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v0, :cond_0

    .line 4020
    const-string v0, "Camera"

    const-string v1, "initGridLines, but mPreferences is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    :goto_0
    return-void

    .line 4023
    :cond_0
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/GridLines;

    .line 4024
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_grid_key"

    const v3, 0x7f0e021a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4026
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/GridLines;->setAnimationState(Z)V

    .line 4027
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4029
    if-eqz p1, :cond_1

    .line 4031
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0

    .line 4034
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0

    .line 4038
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    goto :goto_0
.end method

.method private initPanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3933
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    if-nez v0, :cond_0

    .line 3934
    new-instance v0, Lcom/android/hwcamera/Camera$PanoramaBarListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/Camera$PanoramaBarListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    .line 3936
    :cond_0
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/PanoramaBar;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    .line 3937
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPanoramaBarListener:Lcom/android/hwcamera/Camera$PanoramaBarListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->registerListeners(Lcom/android/hwcamera/hwui/PanoramaBar$Listeners;)V

    .line 3938
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setVisibility(I)V

    .line 3939
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3940
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3941
    return-void
.end method

.method private initThumbnailButton()V
    .locals 2

    .prologue
    .line 1298
    const-string v0, "Camera"

    const-string v1, "[Flow] initThumbnailButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 1301
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8453
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 8454
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 8457
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 8458
    const-string v0, "Camera"

    const-string v1, "error mCameraDevice.getParameters() is null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8479
    :goto_0
    return-void

    .line 8462
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8463
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    .line 8464
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    .line 8465
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    .line 8466
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    goto :goto_0

    .line 8470
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    .line 8473
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    .line 8474
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    .line 8475
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    .line 8477
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 8470
    goto :goto_1

    :cond_3
    move v0, v2

    .line 8473
    goto :goto_2

    :cond_4
    move v2, v1

    .line 8477
    goto :goto_3
.end method

.method private initializeFirstTime()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1198
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] initializeFirstTime  mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 1271
    :goto_0
    return-void

    .line 1203
    :cond_0
    new-instance v0, Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    .line 1204
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->enable()V

    .line 1206
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepMediaProviderInstance()V

    .line 1208
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1209
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 1210
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initThumbnailButton()V

    .line 1215
    :cond_1
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 1216
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 1217
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 1218
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1220
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterCenter:Lcom/android/hwcamera/RotateImageView;

    .line 1223
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/VolumePlusButton;->setOnVolumePlusButtonListener(Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;)V

    .line 1226
    invoke-static {}, Lcom/android/hwcamera/BlueToothMediaButton;->getInstance()Lcom/android/hwcamera/BlueToothMediaButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/BlueToothMediaButton;->setOnBlueToothMediaButtonListener(Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;)V

    .line 1229
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Landroid/view/View;

    .line 1230
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1231
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v7, :cond_2

    move v5, v7

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v6, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    .line 1234
    new-instance v0, Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$ImageSaver;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 1235
    new-instance v0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 1237
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeScreenBrightness()V

    .line 1238
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->installIntentFilter()V

    .line 1241
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSoundPlayer()V

    .line 1243
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1251
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initCameraSwitcher()V

    .line 1252
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeHeadUpDisplay()V

    .line 1255
    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 1256
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->initializeZoom()V

    .line 1259
    iput-boolean v7, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    .line 1261
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->addIdleHandler()V

    .line 1262
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1263
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1270
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    goto/16 :goto_0
.end method

.method private initializeHeadUpDisplay()V
    .locals 2

    .prologue
    .line 3558
    const-string v0, "Camera"

    const-string v1, "initializeHeadUpDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->loadCameraPreferences()V

    .line 3560
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomRatios:[F

    .line 3562
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setSupportedTargetTrackingState()V

    .line 3563
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->targetTrakingModeInit()V

    .line 3565
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeInit()V

    .line 3567
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->frontTimerInit()V

    .line 3570
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->superPanelInit()V

    .line 3572
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 3575
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 3581
    :cond_0
    return-void
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setSingleTapArea(Landroid/view/View;)V

    .line 1314
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1316
    return-void
.end method

.method private initializeScreenBrightness()V
    .locals 4

    .prologue
    .line 5063
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5065
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 5068
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 5069
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5070
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 5071
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5073
    :cond_0
    return-void
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 1374
    const-string v0, "Camera"

    const-string v1, "initializeSecondTime"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->enable()V

    .line 1376
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$ImageSaver;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-nez v0, :cond_1

    .line 1380
    new-instance v0, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 1382
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    .line 1383
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->installIntentFilter()V

    .line 1386
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSoundPlayer()V

    .line 1390
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->initializeZoom()V

    .line 1393
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepMediaProviderInstance()V

    .line 1395
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 1396
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton()V

    .line 1399
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 1404
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1405
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 1416
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 1418
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 1420
    return-void
.end method

.method private initializeSoundPlayer()V
    .locals 4

    .prologue
    .line 5042
    const/4 v0, 0x1

    .line 5043
    const-string v1, "ro.camera.sound.forced"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5044
    const/4 v0, 0x0

    .line 5047
    :cond_0
    new-instance v1, Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 5049
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, p0, v0}, Lcom/android/hwcamera/FocusManager;->initializeSoundPlayer(Landroid/content/Context;Z)V

    .line 5050
    return-void
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 5020
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_0

    .line 5035
    :goto_0
    return-void

    .line 5026
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5027
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5028
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5029
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5030
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5031
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5032
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 5033
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    goto :goto_0
.end method

.method private isBasedBurstShootMode(I)Z
    .locals 1
    .parameter "shootMode"

    .prologue
    .line 2995
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 2998
    :cond_0
    const/4 v0, 0x1

    .line 3000
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7064
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptureAvailable()Z
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x0

    .line 5796
    const/4 v0, 0x1

    .line 5797
    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsCounter:Z

    if-eqz v2, :cond_1

    .line 5798
    :cond_0
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsCounter:Z

    move v0, v1

    .line 5801
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 5802
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    move v0, v1

    .line 5805
    :cond_3
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsReview:Z

    if-eqz v2, :cond_6

    .line 5807
    :cond_4
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsReview:Z

    .line 5808
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5809
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5811
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 5814
    :cond_6
    return v0
.end method

.method private isClickBackInGooglePanorama(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 8503
    const-string v0, "googlePanoramaPreference"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8504
    const-string v1, "backButtonIsClickInGooglePanorama"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8505
    const/4 p1, 0x1

    .line 8506
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8507
    const-string v1, "backButtonIsClickInGooglePanorama"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8508
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8510
    :cond_0
    return p1
.end method

.method private isDoubleClick(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1661
    iget-boolean v7, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v7, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return v5

    .line 1664
    :cond_1
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, p0, Lcom/android/hwcamera/Camera;->currentClickPoint:Landroid/graphics/Point;

    .line 1665
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v8, p0, Lcom/android/hwcamera/Camera;->currentClickPoint:Landroid/graphics/Point;

    invoke-virtual {v7, v8}, Lcom/android/hwcamera/FocusManager;->isPointOnFocusArea(Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1668
    iget-object v7, p0, Lcom/android/hwcamera/Camera;->preClickPoint:Landroid/graphics/Point;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/hwcamera/Camera;->preClickPoint:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/hwcamera/Camera;->currentClickPoint:Landroid/graphics/Point;

    invoke-direct {p0, v7, v8}, Lcom/android/hwcamera/Camera;->isNearby(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v4, v6

    .line 1670
    .local v4, isNearBy:Z
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1671
    .local v0, currentTime:J
    iget-wide v7, p0, Lcom/android/hwcamera/Camera;->preDoubleClickTime:J

    sub-long v2, v0, v7

    .line 1672
    .local v2, interval:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 1673
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, p0, Lcom/android/hwcamera/Camera;->preClickPoint:Landroid/graphics/Point;

    .line 1674
    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->preDoubleClickTime:J

    .line 1676
    :cond_3
    const-wide/16 v7, 0x190

    cmp-long v7, v2, v7

    if-gtz v7, :cond_5

    if-eqz v4, :cond_5

    :goto_2
    move v5, v6

    goto :goto_0

    .end local v0           #currentTime:J
    .end local v2           #interval:J
    .end local v4           #isNearBy:Z
    :cond_4
    move v4, v5

    .line 1668
    goto :goto_1

    .restart local v0       #currentTime:J
    .restart local v2       #interval:J
    .restart local v4       #isNearBy:Z
    :cond_5
    move v6, v5

    .line 1676
    goto :goto_2
.end method

.method private isFocusAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5780
    .line 5781
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_3

    .line 5782
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsCounter:Z

    move v0, v1

    .line 5785
    :goto_0
    iget v3, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v1

    .line 5788
    :cond_1
    const v3, 0x7f0c0014

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 5789
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsReview:Z

    .line 5792
    :goto_1
    return v1

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private isFrontCamera()Z
    .locals 1

    .prologue
    .line 8369
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_0

    .line 8370
    const/4 v0, 0x0

    .line 8372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHandleDoubleClick()Z
    .locals 2

    .prologue
    .line 1651
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 7068
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7069
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isInnerlImageCaptureIntent()Z
    .locals 3

    .prologue
    .line 3423
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "config_innerl_intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNearby(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 7
    .parameter "prePoint"
    .parameter "currentPoint"

    .prologue
    const/4 v2, 0x0

    .line 1682
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return v2

    .line 1685
    :cond_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1688
    .local v0, distance:D
    const-wide/high16 v3, 0x404e

    cmpg-double v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNullArea(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x0

    .line 6566
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isOnWidescreen()Z
    .locals 3

    .prologue
    .line 6861
    const-string v0, "off"

    .line 6862
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    if-eqz v0, :cond_0

    .line 6863
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_widescreen_key"

    const v2, 0x7f0e016d

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6868
    :goto_0
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 6869
    return v0

    .line 6866
    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method

.method private isStorageSpaceEnough()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5598
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5599
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    .line 5602
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5603
    const-string v1, "Camera"

    const-string v2, "space is low include sd card and phone "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5605
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    .line 5609
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

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

    .line 6398
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

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1192
    :cond_0
    return-void
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 7626
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7627
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7628
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 7630
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7631
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7632
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7633
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 3547
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 3549
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 3550
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3551
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3552
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->filterShootModePanoramaOptions(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 3555
    :cond_0
    return-void
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "text"
    .parameter "duration"
    .parameter "orientation"

    .prologue
    .line 5002
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_1

    .line 5003
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 5010
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_0

    .line 5011
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/hwcamera/ShutterButton;->getHeight()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(II)V

    .line 5015
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 5016
    return-void

    .line 5005
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 5006
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private needAeLock()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 6432
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needLoadingAnim()Z
    .locals 2

    .prologue
    .line 1106
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needNewSnapShotAnim()Z
    .locals 2

    .prologue
    .line 3140
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needShutterButtonFocus(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4571
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4602
    :cond_0
    :goto_0
    return v0

    .line 4577
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_auto_focusmode_key"

    const v3, 0x7f0e0220

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4580
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isCAFEnded()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    .line 4581
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/hwcamera/Util;->isCAFSucceed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4584
    :cond_3
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    .line 4589
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4594
    :cond_5
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4599
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v1, :cond_0

    .line 4602
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needSnapShotAnim()Z
    .locals 2

    .prologue
    .line 1099
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToHelpCenter()Z
    .locals 3

    .prologue
    .line 5245
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "config_need_to_helpcenter"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private notNeedToHelpCenter()V
    .locals 3

    .prologue
    .line 5578
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5579
    const-string v1, "config_need_to_helpcenter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5581
    return-void
.end method

.method private onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 7592
    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v3, :cond_0

    .line 7611
    :goto_0
    return-void

    .line 7598
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_gps_key"

    invoke-static {v3, v4}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    .line 7601
    .local v2, recordLocation:Z
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v3, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 7602
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 7603
    .local v0, cameraId:I
    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v3, v0, :cond_1

    .line 7604
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->switchCameraId(I)V

    goto :goto_0

    .line 7606
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 7607
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 7608
    const/16 v3, 0xf

    iput v3, v1, Landroid/os/Message;->what:I

    .line 7609
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private onZoomValueChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2618
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 2638
    :cond_0
    :goto_0
    return-void

    .line 2620
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 2621
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    if-eqz v0, :cond_2

    .line 2622
    iput p1, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    .line 2623
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    if-ne v0, v1, :cond_0

    .line 2624
    iput v2, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    goto :goto_0

    .line 2627
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 2628
    iput p1, p0, Lcom/android/hwcamera/Camera;->mTargetZoomValue:I

    .line 2629
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->startSmoothZoom(I)V

    .line 2630
    iput v1, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    goto :goto_0

    .line 2633
    :cond_3
    iput p1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 2634
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2635
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 2636
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method private parseStringToSize(Ljava/lang/String;)[I
    .locals 6
    .parameter "sizeString"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6906
    new-array v0, v5, [I

    .line 6907
    .local v0, setSize:[I
    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6909
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-lt v2, v5, :cond_0

    .line 6911
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v3

    .line 6912
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    .line 6915
    :cond_0
    return-object v0
.end method

.method private releaseBurstSound()V
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 2027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 2029
    :cond_0
    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 1

    .prologue
    .line 5056
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 5057
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 5058
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    .line 5060
    :cond_0
    return-void
.end method

.method private requestUpdateThumbnail(Lcom/android/hwcamera/Thumbnail;)V
    .locals 2
    .parameter "thumb"

    .prologue
    .line 1131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1132
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1133
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1134
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    return-void
.end method

.method private resetMenuPreference()V
    .locals 3

    .prologue
    .line 3520
    .line 3521
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "cameratag"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cameratag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3523
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_reset_tag"

    const-string v2, "reset"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3525
    if-eqz v0, :cond_0

    .line 3526
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3536
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->isClickBackInGooglePanorama(Z)Z

    move-result v0

    .line 3538
    if-eqz v0, :cond_1

    .line 3539
    new-instance v0, Lcom/android/hwcamera/ResetPreference;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ResetPreference;-><init>(Landroid/content/Context;)V

    .line 3540
    invoke-virtual {v0}, Lcom/android/hwcamera/ResetPreference;->resetCameraPreference()V

    .line 3541
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    :cond_1
    return-void

    .line 3530
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "cameratag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 7622
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7623
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7624
    return-void
.end method

.method private restoreParameterToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7686
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1}, Lcom/android/hwcamera/PreferenceGroup;->reloadValue()V

    .line 7688
    iput v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 7690
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->targetTrakingModeUpdate()V

    .line 7692
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeUpdate()V

    .line 7694
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->frontTimerUpdate()V

    .line 7697
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setCameraSwitcherIcon()V

    .line 7699
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->initGridLines(Z)V

    .line 7701
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 7702
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorage()V

    .line 7703
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7704
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 7705
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7706
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7707
    return-void
.end method

.method private restorePreferences()V
    .locals 4

    .prologue
    .line 7636
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 7674
    :goto_0
    return-void

    .line 7640
    :cond_0
    new-instance v0, Lcom/android/hwcamera/Camera$8;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$8;-><init>(Lcom/android/hwcamera/Camera;)V

    .line 7665
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    .line 7666
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 7668
    :cond_1
    new-instance v1, Lcom/android/hwcamera/hwui/RotateDailog;

    const v2, 0x7f0e0137

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0138

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 7670
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7671
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 7672
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 7673
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    goto :goto_0
.end method

.method private saveHelpCenterCurrentPage(I)V
    .locals 2
    .parameter

    .prologue
    .line 5584
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5585
    const-string v1, "config_helpcenter_current_page"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5588
    return-void
.end method

.method private saveLocationInit()V
    .locals 3

    .prologue
    .line 7130
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 7133
    invoke-static {}, Lcom/android/hwcamera/Storage;->isInternalStorageExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    .line 7134
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v1, :cond_0

    .line 7135
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7136
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "memorycard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7138
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 7154
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 7144
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->isExternalStorageExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    .line 7145
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    if-nez v1, :cond_1

    .line 7146
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7147
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7149
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_0

    .line 7153
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkStorageForFirstInit()V

    goto :goto_0
.end method

.method private setAutoFocus(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 7953
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7961
    :goto_0
    return-void

    .line 7956
    :cond_0
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7957
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    goto :goto_0

    .line 7959
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    goto :goto_0
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 7032
    iget v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    .line 7033
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_1

    .line 7036
    iput v2, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    .line 7049
    :cond_0
    :goto_0
    return-void

    .line 7038
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7039
    iget v1, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 7040
    iput v2, p0, Lcom/android/hwcamera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 7042
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7043
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7044
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 7045
    iput v3, v0, Landroid/os/Message;->what:I

    .line 7046
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setCameraSwitcherIcon()V
    .locals 4

    .prologue
    const v3, 0x7f0e013e

    .line 3796
    .line 3797
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3799
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3800
    const v0, 0x7f0200da

    .line 3804
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 3805
    return-void

    .line 3802
    :cond_0
    const v0, 0x7f0200db

    goto :goto_0
.end method

.method private setCameraUIVisibility(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5968
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 5969
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 5970
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 5971
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setVisibility(I)V

    .line 5973
    :cond_0
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5974
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5975
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5978
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 5979
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    .line 5982
    :cond_1
    return-void
.end method

.method private setControlBarVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 7986
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7987
    if-eqz v0, :cond_0

    .line 7988
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7990
    :cond_0
    return-void
.end method

.method private setControlbarAndPanel(I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c0056

    const v2, 0x7f0c002a

    .line 5985
    if-nez p1, :cond_2

    .line 5988
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needSnapShotAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5991
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 5993
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 5995
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->zoomFade(Z)V

    .line 6007
    :cond_1
    :goto_0
    return-void

    .line 6000
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 6001
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 6004
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->zoomFade(Z)V

    goto :goto_0
.end method

.method private setFlashModeEnable()V
    .locals 4

    .prologue
    const v2, 0x7f0e0208

    const/4 v3, 0x1

    .line 3755
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFlashSupported:Z

    if-nez v0, :cond_1

    .line 3772
    :cond_0
    :goto_0
    return-void

    .line 3759
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v0, v3, :cond_0

    .line 3762
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3763
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    .line 3764
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3767
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2, v0}, Lcom/android/hwcamera/hwui/FlashImageView;->getFlashEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3768
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    goto :goto_0

    .line 3770
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setEnableEx(Z)V

    goto :goto_0
.end method

.method private setFlashSwitchIconVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 7964
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7965
    if-eqz v0, :cond_0

    .line 7966
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7968
    :cond_0
    return-void
.end method

.method private setFrontTimerEnable()V
    .locals 3

    .prologue
    const v2, 0x7f0e0208

    .line 3822
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_0

    .line 3835
    :goto_0
    return-void

    .line 3825
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3826
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    .line 3827
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3830
    :cond_1
    const-string v1, "smile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3831
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->setEnableEx(Z)V

    goto :goto_0

    .line 3833
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TimerImageView;->setEnableEx(Z)V

    goto :goto_0
.end method

.method private setIconsArrayPaddingBottom()V
    .locals 4

    .prologue
    const v2, 0x7f0c00ba

    const/4 v3, 0x0

    .line 3585
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3586
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3587
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 3598
    :goto_0
    return-void

    .line 3589
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 3592
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3593
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 3595
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 2
    .parameter

    .prologue
    .line 4143
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 4144
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4145
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4146
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4149
    :cond_0
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_5

    .line 4150
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4151
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4152
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4153
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4154
    const v0, 0x7f0c00bb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4155
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateTextView;->setDegree(I)V

    .line 4156
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateTextView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateTextView;->setDegree(I)V

    .line 4158
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 4162
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_1

    .line 4163
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOrientationEx(I)V

    .line 4168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/Camera;->updateShutterButtonCenterRotation(I)V

    .line 4169
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/Camera;->updateShutterButtonBackground(I)V

    .line 4170
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/Camera;->updateSwitcherImageResource(I)V

    .line 4176
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_2

    .line 4177
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 4179
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    if-eqz v0, :cond_3

    .line 4180
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 4182
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4183
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 4187
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_5

    .line 4188
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setOrientationEx(I)V

    .line 4192
    :cond_5
    return-void
.end method

.method private setPictureSizeByKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 6873
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-nez v2, :cond_0

    .line 6874
    const-string v2, "Camera"

    const-string v3, "setPictureSizeByKey: mPreferences == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    :goto_0
    return-void

    .line 6878
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6879
    .local v0, pictureSize:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 6890
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v4, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {p0, v2, v3, v4}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;I)V

    goto :goto_0

    .line 6894
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_2

    .line 6895
    const-string v2, "Camera"

    const-string v3, "setPictureSizeByKey: mParameters == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6898
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 6899
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private setPreviewFrameAspectRatio()V
    .locals 6

    .prologue
    .line 6944
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 6945
    const-string v0, "Camera"

    const-string v1, "setPreviewFrameAspectRatio: mParameters == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    :cond_0
    :goto_0
    return-void

    .line 6950
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6951
    if-nez v0, :cond_2

    .line 6952
    const-string v0, "Camera"

    const-string v1, "setPreviewFrameAspectRatio: size == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6955
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6956
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6957
    const/16 v2, 0x20

    iput v2, v1, Landroid/os/Message;->what:I

    .line 6958
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6962
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 6964
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 6965
    invoke-direct {p0, v1, v2, v3}, Lcom/android/hwcamera/Camera;->getPropPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6966
    if-nez v0, :cond_3

    .line 6967
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/hwcamera/Camera;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6973
    :goto_1
    if-eqz v0, :cond_0

    .line 6974
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 6975
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6977
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6978
    const/16 v2, 0x27

    iput v2, v1, Landroid/os/Message;->what:I

    .line 6979
    const/high16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6980
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6983
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0

    .line 6969
    :cond_3
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewFrameAspectRatio: cust size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6986
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 6987
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in setPreviewFrameAspectRatio,mRestartPreviewNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setPromptIconVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 7971
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7972
    if-eqz v0, :cond_0

    .line 7973
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7975
    :cond_0
    return-void
.end method

.method private setSmileIcon(I)V
    .locals 2
    .parameter

    .prologue
    .line 8344
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 8345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 8346
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 8347
    return-void
.end method

.method private setSuperPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 7993
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 7994
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setHandleVisiable(I)V

    .line 7996
    :cond_0
    return-void
.end method

.method private setSupportedTargetTrackingState()V
    .locals 3

    .prologue
    .line 3717
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_camera_targettrackingmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 3718
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mTargetTrackingSupported:Z

    .line 3719
    return-void

    .line 3718
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setTargetTrakingEnable()V
    .locals 4

    .prologue
    const v2, 0x7f0e0208

    const/4 v3, 0x1

    .line 3698
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrackingSupported:Z

    if-nez v0, :cond_1

    .line 3714
    :cond_0
    :goto_0
    return-void

    .line 3701
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-eq v0, v3, :cond_0

    .line 3704
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3705
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_2

    .line 3706
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3709
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1, v2, v0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->getTargetTrackingEnable(Lcom/android/hwcamera/ComboPreferences;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3710
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setEnableEx(Z)V

    goto :goto_0

    .line 3712
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setEnableEx(Z)V

    goto :goto_0
.end method

.method private setTimerpromptIcon()V
    .locals 3

    .prologue
    .line 4006
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4008
    iget v1, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4010
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4014
    :goto_0
    return-void

    .line 4012
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setZoomBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 7979
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_0

    .line 7980
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    .line 7982
    :cond_0
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 7073
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 7074
    if-eqz v1, :cond_0

    .line 7075
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 7076
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCropValue:Ljava/lang/String;

    .line 7078
    :cond_0
    return-void
.end method

.method private showBarAndShutterButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6017
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showOnlyShutterButton()V

    .line 6018
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 6019
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6020
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6021
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6022
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 6085
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6086
    const v1, 0x7f0e0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6088
    return-void
.end method

.method private showCameraStoppedAndFinish()V
    .locals 3

    .prologue
    .line 6091
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6092
    const v1, 0x7f0e012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 6094
    return-void
.end method

.method private showConfirmGpsDialog()V
    .locals 2

    .prologue
    .line 7711
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const-string v1, "pref_camera_gps_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->setKey(Ljava/lang/String;)V

    .line 7712
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 7713
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7714
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V

    .line 7715
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 7716
    return-void
.end method

.method private showEulaDialog()V
    .locals 4

    .prologue
    .line 7719
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 7720
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7721
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    new-instance v2, Lcom/android/hwcamera/Camera$9;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/Camera$9;-><init>(Lcom/android/hwcamera/Camera;)V

    const-string v3, "pref_camera_gps_key"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 7737
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 7738
    return-void
.end method

.method private showGrid()V
    .locals 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_grid_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/GridLines;

    .line 1125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GridLines;->setVisibility(I)V

    .line 1127
    :cond_0
    return-void
.end method

.method private showJointUi()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 3965
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 3966
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 3967
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->clearPanoramaMessage()V

    .line 3968
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    if-eqz v0, :cond_0

    .line 3969
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setVisibility(I)V

    .line 3971
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3972
    return-void
.end method

.method private showNormalUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4000
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 4001
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->setControlBarVisibility(I)V

    .line 4002
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4003
    return-void
.end method

.method private showOnlyShutterButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6009
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 6010
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6011
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6012
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6013
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6014
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 7081
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 7082
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    if-eqz v0, :cond_0

    .line 7083
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsInvokeBarFirstInflate:Z

    .line 7085
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 7086
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7087
    const v2, 0x7f040009

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7089
    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7090
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7091
    const v1, 0x7f0c0032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7092
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7094
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7095
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideOutControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 7099
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 7100
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    .line 7103
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    .line 7104
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setOrientationInvokeAfterCaptureEx(I)V

    .line 7106
    :cond_1
    return-void
.end method

.method private showThumbAndSwitcher()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6025
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showNormalUi()V

    .line 6026
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6027
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6028
    return-void
.end method

.method private startBurst(I)V
    .locals 5
    .parameter "maxPicNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2001
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBurst() maxPicNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 2003
    iput p1, p0, Lcom/android/hwcamera/Camera;->mMaxBurstPicNumber:I

    .line 2004
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    .line 2005
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 2006
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 2008
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initBurstSound()V

    .line 2010
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    .line 2011
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 2012
    return-void
.end method

.method private startPanorama()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3921
    const-string v0, "Camera"

    const-string v1, "startPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    invoke-static {v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3923
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 3924
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showOnlyShutterButton()V

    .line 3925
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 3926
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    .line 3927
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    if-eqz v0, :cond_0

    .line 3928
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    .line 3930
    :cond_0
    return-void
.end method

.method private startPanoramaViewer()V
    .locals 8

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1138
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 1139
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t startPanoramaViewer as mPausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mThumbnail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1141
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    .line 1142
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 1143
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1175
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1148
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_2

    .line 1151
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1152
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1154
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1156
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v4, "noreset"

    invoke-static {v0, v2, v4}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/Camera;->calculateHorizontalFieldOfView(ILandroid/hardware/Camera$Parameters;)F

    move-result v0

    .line 1159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOV="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.scalado.csps.PanoramaWall/data?imgPath="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1164
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.gallery3dreview.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1166
    const-string v0, "uri"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1167
    const-string v0, "Camera"

    const-string v1, "[Flow] start PanoramaViewer acitivy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/16 v0, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/android/hwcamera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1173
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1174
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closePanorama()V

    goto/16 :goto_0

    .line 1160
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startPreview()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 6133
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6237
    :cond_0
    :goto_0
    return-void

    .line 6135
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->openCameraDevice()V

    .line 6137
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_3

    .line 6138
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 6139
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6140
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6144
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6149
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_4

    .line 6150
    iput-boolean v7, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    .line 6151
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in startPreview to stop preview, mRestartPreviewNeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 6156
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->setDisplayOrientation()V

    .line 6157
    iget v0, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 6158
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {p0, v0, v1}, Lcom/android/hwcamera/Util;->setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V

    .line 6160
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, v7}, Lcom/android/hwcamera/FocusManager;->setAeAwbLock(Z)V

    .line 6161
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 6168
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6170
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->cancelAutoFocus(I)V

    .line 6172
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mErrorCallback:Lcom/android/hwcamera/Camera$ErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 6175
    :try_start_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 6176
    :try_start_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6177
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreviewSize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6178
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v2

    .line 6179
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    .line 6181
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6182
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 6187
    :goto_1
    int-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 6191
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startpreview origin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6196
    const v2, 0x3c23d70a

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    .line 6197
    const-string v0, "Camera"

    const-string v2, "startpreview notifyScreenNailChanged"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6198
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->notifyScreenNailChanged()V

    .line 6200
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_7

    .line 6201
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 6202
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6204
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 6205
    const-string v0, "Camera"

    const-string v2, "startPreview"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6206
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->startPreviewAsync()V

    .line 6211
    const-string v0, "Camera"

    const-string v2, "[Flow] Preview started!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6212
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 6213
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6214
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6219
    iput v7, p0, Lcom/android/hwcamera/Camera;->mZoomState:I

    .line 6223
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6224
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    .line 6225
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onPreviewStarted()V

    .line 6234
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 6184
    :cond_8
    :try_start_3
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    goto/16 :goto_1

    .line 6214
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 6215
    :catch_0
    move-exception v0

    .line 6216
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 6217
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopBurst()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2037
    const-string v1, "Camera"

    const-string v2, "stopBurst()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    .line 2039
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 2040
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 2041
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelTakePictureEx()Z

    .line 2046
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->releaseBurstSound()V

    .line 2049
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2050
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2051
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2052
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2053
    return-void
.end method

.method private stopCaptureIfNeed()V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/16 v4, 0xe

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1838
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v2, :cond_3

    .line 1839
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1840
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    .line 1858
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v3, :cond_1

    .line 1860
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1861
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1862
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1864
    :cond_1
    return-void

    .line 1841
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto :goto_0

    .line 1844
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_4

    .line 1845
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    goto :goto_0

    .line 1849
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1850
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1852
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 1853
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1855
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1856
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0
.end method

.method private stopPanorama(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3954
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPanorama bShot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCameraStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 3956
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 3957
    const/16 v0, 0x15

    iput v0, v2, Landroid/os/Message;->what:I

    .line 3958
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3959
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 3960
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    .line 3961
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showJointUi()V

    .line 3962
    return-void

    .line 3956
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopSmileCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6036
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_0

    .line 6037
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    .line 6038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 6039
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 6040
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showThumbAndSwitcher()V

    .line 6041
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 6042
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6043
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 6045
    :cond_0
    return-void
.end method

.method private superPanelInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4044
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 4045
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 4046
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 4047
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 4048
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraCaptureIntent(Z)V

    .line 4050
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsInternalStorageExist(Z)V

    .line 4053
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsExternalStorageExist(Z)V

    .line 4055
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateSuperPanel()V

    .line 4056
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 4058
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 4059
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/hwcamera/hwui/RotateLinearLayout;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 4060
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->initSettingmenu([Lcom/android/hwcamera/hwui/RotateLinearLayout;)V

    .line 4062
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setCurrentState(Z)V

    .line 4063
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->initImageSubPanel()V

    .line 4064
    return-void
.end method

.method private switchCameraId(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7177
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] switchCameraId() cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstTimeInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7178
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7221
    :cond_0
    :goto_0
    return-void

    .line 7181
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7182
    const-string v0, "Camera"

    const-string v1, "switchCameraId too fast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7185
    :cond_2
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] switchCameraId() cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7192
    iput p1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 7193
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 7195
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7197
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-ne v0, v3, :cond_3

    .line 7198
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7199
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 7203
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    .line 7204
    iput v4, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 7205
    invoke-direct {p0, v4, v3}, Lcom/android/hwcamera/Camera;->enableCameraControl(ZZ)V

    .line 7207
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 7208
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 7211
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7212
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 7217
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7219
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->updateZoomControlWhenSwitchCameraId(Z)V

    goto/16 :goto_0
.end method

.method private switchCameraUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7329
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 7332
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 7335
    invoke-direct {p0, v2, v2}, Lcom/android/hwcamera/Camera;->enableCameraControl(ZZ)V

    .line 7337
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 7338
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeHeadUpDisplay()V

    .line 7342
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->targetTrakingModeUpdate()V

    .line 7344
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->flashModeUpdate()V

    .line 7345
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_shootmode_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7346
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->updateShootMode(Ljava/lang/String;)V

    .line 7348
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_2

    .line 7349
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 7354
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 7357
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->checkCurrentStorage()V

    .line 7360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->updateZoomControlWhenSwitchCameraId(Z)V

    .line 7362
    return-void

    .line 7351
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private switchPreviewSize()V
    .locals 5

    .prologue
    .line 8382
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-nez v0, :cond_1

    .line 8410
    :cond_0
    :goto_0
    return-void

    .line 8388
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 8389
    if-eqz v0, :cond_3

    .line 8390
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 8391
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 8408
    :cond_2
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchPreviewSize, size = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8409
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setScale(II)V

    goto :goto_0

    .line 8393
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8394
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 8395
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8396
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 8398
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/ParametersManager;->getWideScreenValue()Ljava/lang/String;

    move-result-object v2

    .line 8399
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8403
    mul-int/lit8 v0, v1, 0x4

    div-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private switchReview()V
    .locals 2

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3613
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3615
    return-void
.end method

.method private switchToOtherMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x2

    .line 7161
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7162
    const/4 v0, 0x0

    .line 7173
    :goto_0
    return v0

    .line 7163
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-eqz v0, :cond_1

    .line 7164
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->waitDone()V

    .line 7165
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-eqz v0, :cond_2

    .line 7166
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->waitDone()V

    .line 7167
    :cond_2
    invoke-static {p1, p0}, Lcom/android/hwcamera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 7168
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7170
    if-eq p1, v1, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 7171
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 7173
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchToVideoMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 7531
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7550
    :cond_0
    :goto_0
    return v0

    .line 7535
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 7540
    const-string v0, "Camera"

    const-string v1, "[Flow] SwitchToVideoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7541
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7544
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7550
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private targetTrakingModeInit()V
    .locals 3

    .prologue
    .line 3673
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrackingSupported:Z

    if-nez v0, :cond_0

    .line 3681
    :goto_0
    return-void

    .line 3676
    :cond_0
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 3677
    new-instance v1, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    .line 3678
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 3679
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3680
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->init()V

    goto :goto_0
.end method

.method private targetTrakingModeUpdate()V
    .locals 2

    .prologue
    .line 3684
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrackingSupported:Z

    if-nez v0, :cond_1

    .line 3686
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3687
    if-eqz v0, :cond_0

    .line 3688
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3695
    :cond_0
    :goto_0
    return-void

    .line 3693
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 3694
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->init()V

    goto :goto_0
.end method

.method private updateCameraParametersFocus()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 6440
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 6441
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6442
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCameraParametersFocus is null!, get new mParameters = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6445
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAeLockSupported:Z

    if-eqz v0, :cond_1

    .line 6446
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needAeLock()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6447
    const-string v0, "Camera"

    const-string v1, "updateCameraParametersFocus lock ae(AutoExposure)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6448
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 6454
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    .line 6455
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needAeLock()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6456
    const-string v0, "Camera"

    const-string v1, "updateCameraParametersFocus lock awb(AutoWhiteBalance)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6457
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 6463
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-af-aec"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6464
    if-eqz v0, :cond_3

    const-string v1, "touch-off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6465
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "touch-af-aec"

    const-string v4, "touch-on"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6468
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    .line 6471
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6472
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 6478
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6479
    const-string v0, "Camera"

    const-string v1, "set_focusmode : Metering area: null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6480
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 6486
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_10

    .line 6488
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6489
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 6495
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/hwcamera/Camera;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6496
    const-string v0, "Camera"

    const-string v1, "set_focusmode : caf area: null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6497
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 6512
    :goto_5
    const-string v0, "auto"

    .line 6513
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v1, :cond_5

    .line 6514
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 6516
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6520
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getAutoFocusValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    if-eqz v0, :cond_11

    .line 6523
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, v6}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 6529
    :cond_6
    :goto_6
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraParametersFocus focus Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6531
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6532
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 6563
    :cond_7
    :goto_7
    return-void

    .line 6450
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    goto/16 :goto_0

    .line 6459
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    goto/16 :goto_1

    .line 6473
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getCAFMeteringAreas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6474
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getCAFMeteringAreas()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 6476
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getDefaultMeteringAreas()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 6482
    :cond_c
    const-string v4, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set_focusmode : Metering area:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6483
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto/16 :goto_3

    .line 6490
    :cond_d
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getCAFFocusAreas()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->isNullArea(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 6491
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getCAFFocusAreas()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    .line 6493
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getDefaultFocusAreas()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    .line 6499
    :cond_f
    const-string v4, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set_focusmode : caf area:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6500
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto/16 :goto_5

    .line 6503
    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 6504
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/hwcamera/FocusManager;->transformCoordinate([FLandroid/view/View;Landroid/hardware/Camera$Size;)V

    .line 6506
    aget v1, v0, v2

    float-to-int v1, v1

    aget v0, v0, v3

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->setTouchPosition(II)V

    goto/16 :goto_5

    .line 6525
    :cond_11
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6527
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 6538
    :cond_12
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 6539
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PUT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : focusmode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6540
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6544
    :cond_13
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    if-nez v0, :cond_16

    :cond_14
    move v0, v3

    .line 6546
    :goto_8
    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6547
    :cond_15
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 6548
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_16
    move v0, v2

    .line 6544
    goto :goto_8

    .line 6550
    :cond_17
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : focusmode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6551
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 6554
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    .line 6555
    const-string v0, "Camera"

    const-string v1, "mSenceToFocusMode.get(mSceneMode) is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 6559
    :cond_18
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSenceToFocusMode:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6402
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 6420
    :cond_0
    :goto_0
    return-void

    .line 6407
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v1

    .line 6408
    if-eqz v1, :cond_0

    .line 6412
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6413
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_auto_framerate"

    invoke-static {v2, v3, v4}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6414
    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 6415
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 6418
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_0
.end method

.method private updateCameraParametersPreference()V
    .locals 8

    .prologue
    const/16 v7, 0x19

    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 6573
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    if-eqz v0, :cond_0

    .line 6574
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0}, Lcom/android/hwcamera/CameraSettings;->isSupportWideScreen(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSupporetedWideScreen:Z

    .line 6576
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ParametersManager;->setScenceDefaultValue(Landroid/hardware/Camera$Parameters;)V

    .line 6584
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->initImagejustMentValue()V

    .line 6586
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mFirstEnter:Z

    .line 6589
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ParametersManager;->setConflitParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6591
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getShootingmodeIndex()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 6592
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getReviewValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    .line 6593
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getTimerValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 6594
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6596
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 6597
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6598
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    .line 6609
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v0, v3, :cond_1b

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    .line 6622
    const-string v0, "pref_camera_picturesize_key"

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setPictureSizeByKey(Ljava/lang/String;)V

    .line 6636
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setPreviewFrameAspectRatio()V

    .line 6640
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getSceneValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 6641
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    if-eqz v0, :cond_3

    .line 6642
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6643
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 6645
    :cond_2
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 6647
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_4

    .line 6648
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6649
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraParametersPreference is null!, get new mParameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6651
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6652
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 6653
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 6654
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6659
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 6660
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraParametersPreference reget Parametersas,as set scene mode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_jpegquality_key"

    const v2, 0x7f0e016f

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6675
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 6676
    const-string v2, "100"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    const/16 v2, 0xc80

    if-lt v1, v2, :cond_1e

    .line 6684
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getIsoValue()Ljava/lang/String;

    move-result-object v0

    .line 6685
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 6686
    const-string v1, "KEY_HUAWEI_ISO"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    .line 6688
    :cond_6
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, ""

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 6689
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mISO_key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6693
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getContrastValue()Ljava/lang/String;

    move-result-object v0

    .line 6695
    if-eqz v0, :cond_a

    .line 6697
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v1

    add-int/2addr v0, v1

    .line 6698
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 6699
    const-string v1, "KEY_HUAWEI_CONTRAST"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    .line 6701
    :cond_8
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ""

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6702
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mContrast_key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 6704
    :cond_9
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contrastValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6707
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0e0259

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6709
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6710
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 6713
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getBrightnessValue()Ljava/lang/String;

    move-result-object v0

    .line 6715
    if-eqz v0, :cond_e

    .line 6717
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v1

    add-int/2addr v0, v1

    .line 6718
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 6719
    const-string v1, "KEY_HUAWEI_BRIGHTNESS"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    .line 6721
    :cond_c
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, ""

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6722
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mBrightness_key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6724
    :cond_d
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brightnessValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6726
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getSaturationValue()Ljava/lang/String;

    move-result-object v0

    .line 6728
    if-eqz v0, :cond_11

    .line 6730
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v1

    add-int/2addr v0, v1

    .line 6731
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 6732
    const-string v1, "KEY_HUAWEI_SATURATION"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    .line 6734
    :cond_f
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ""

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 6735
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mSaturation_key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6737
    :cond_10
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saturationValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6742
    :cond_11
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getColorEffectValue()Ljava/lang/String;

    move-result-object v0

    .line 6743
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 6744
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 6747
    :cond_12
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getDistortionValue()Ljava/lang/String;

    move-result-object v0

    .line 6748
    invoke-static {v0}, Lcom/android/hwcamera/Util;->setDistortionValue(Ljava/lang/String;)V

    .line 6750
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mRecordLocation:Z

    if-eqz v0, :cond_13

    .line 6752
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 6753
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 6754
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 6755
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 6761
    :cond_13
    const v0, 0x7f0e0170

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6762
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "picture-format"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6768
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6772
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 6773
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 6774
    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6775
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 6784
    :cond_14
    :goto_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getWhiteBalanceValue()Ljava/lang/String;

    move-result-object v0

    .line 6785
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 6786
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 6794
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getRedEyeReductionValue()Ljava/lang/String;

    move-result-object v0

    .line 6795
    invoke-static {}, Lcom/android/hwcamera/Util;->getRedEyeReductionSupported()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6796
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setRedEyeReduction(Z)V

    .line 6798
    :cond_16
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersFocus()V

    .line 6801
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 6802
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 6803
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    .line 6804
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v3}, Lcom/android/hwcamera/ParametersManager;->getExposureValue()Ljava/lang/String;

    move-result-object v3

    .line 6805
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6806
    if-lt v3, v1, :cond_21

    if-gt v3, v0, :cond_21

    .line 6807
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    int-to-float v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 6813
    :goto_6
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_hdr_save_mode"

    const v2, 0x7f0e01d7

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6816
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    .line 6818
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mHdrSaveOrgPic:Z

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->setHdrSaveMode(ZLandroid/hardware/Camera$Parameters;)V

    .line 6820
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_22

    .line 6821
    const-string v0, "on"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->setHdrMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    .line 6827
    :goto_7
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6828
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6829
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 6830
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 6834
    :cond_17
    const-string v0, "ro.camera.shuttersound"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6835
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_shutter_sound_key"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6836
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "silent Option:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6837
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v1}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 6850
    :cond_18
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6851
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6853
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mAutoFocusMoveCallback:Lcom/android/hwcamera/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6858
    :cond_19
    :goto_8
    return-void

    .line 6600
    :cond_1a
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->startFaceDetection(Z)V

    goto/16 :goto_0

    .line 6625
    :cond_1b
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isOnWidescreen()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 6626
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mPreviewOnPara:Z

    .line 6628
    :cond_1c
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getPictureSizevalueValue()Ljava/lang/String;

    move-result-object v0

    .line 6630
    if-eqz v0, :cond_1

    .line 6631
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 6632
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_1

    .line 6663
    :cond_1d
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    .line 6664
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 6666
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getScenceDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_2

    .line 6678
    :cond_1e
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/hwcamera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_3

    .line 6777
    :cond_1f
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 6778
    if-nez v0, :cond_14

    .line 6779
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    goto/16 :goto_4

    .line 6788
    :cond_20
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 6789
    if-nez v0, :cond_15

    .line 6790
    const-string v0, "auto"

    goto/16 :goto_5

    .line 6809
    :cond_21
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid exposure range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 6823
    :cond_22
    const-string v0, "off"

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->setHdrMode(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_7

    .line 6855
    :cond_23
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 6424
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 6425
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6426
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 6429
    :cond_0
    return-void
.end method

.method private updateDelayTakePictureTime()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 8022
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8023
    iget v1, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    if-lez v1, :cond_3

    .line 8025
    const-string v1, "ro.camera.support.led"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8026
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    invoke-static {v1}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 8027
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/hwcamera/LedLightManager;->ledOn(Landroid/app/NotificationManager;I)V

    .line 8030
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    iget v2, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-ne v1, v2, :cond_1

    .line 8031
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 8033
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 8034
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    if-nez v1, :cond_2

    .line 8035
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mTimerPlayer:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v1}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 8037
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8038
    iget v1, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8039
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 8040
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8041
    iget v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 8042
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8060
    :goto_0
    return-void

    .line 8044
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8045
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8046
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8047
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 8048
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 8049
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 8050
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    if-eqz v0, :cond_4

    .line 8051
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 8052
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    goto :goto_0

    .line 8054
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doTakePicture()V

    .line 8056
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setControlbarAndPanel(I)V

    goto :goto_0
.end method

.method private updatePhoneStorageHint(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4931
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_2

    .line 4933
    const-wide/16 v2, -0x4

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 4935
    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4940
    :goto_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4944
    :goto_1
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 4945
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 4999
    :goto_2
    return-void

    .line 4938
    :cond_0
    const v0, 0x7f0e0135

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4942
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_1

    .line 4951
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v2

    .line 4952
    const-wide/32 v4, 0x1400000

    cmp-long v0, v2, v4

    if-lez v0, :cond_9

    .line 4953
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    .line 4958
    :goto_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v4

    .line 4959
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_5

    .line 4963
    const v2, 0x7f0e0269

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    .line 4986
    :goto_4
    if-eqz v2, :cond_3

    .line 4987
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4992
    :cond_3
    :goto_5
    invoke-static {v2}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 4994
    if-eqz v3, :cond_4

    .line 4995
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 4996
    iput v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 4998
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    goto :goto_2

    .line 4965
    :cond_5
    const-wide/16 v5, -0x2

    cmp-long v2, v2, v5

    if-nez v2, :cond_6

    .line 4969
    const v2, 0x7f0e026b

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    goto :goto_4

    .line 4973
    :cond_6
    if-lt v0, v4, :cond_7

    .line 4974
    const/4 v3, 0x1

    .line 4976
    const v2, 0x7f0e026e

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 4981
    :cond_7
    const v2, 0x7f0e026d

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    goto :goto_4

    .line 4989
    :cond_8
    iget v4, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v2, v1, v4}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method private updatePicSizePrefKey()V
    .locals 5

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2152
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_jpegquality_key"

    const v3, 0x7f0e016f

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2155
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_coloreffect_key"

    const v4, 0x7f0e0186

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2158
    new-instance v3, Lcom/android/hwcamera/PictureRemaining$Key;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/hwcamera/PictureRemaining$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mPictureRemainingKey:Lcom/android/hwcamera/PictureRemaining$Key;

    .line 2159
    return-void
.end method

.method private updateSDCardStorageHint(J)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, -0x1

    const-wide/16 v8, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4844
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_3

    .line 4846
    cmp-long v0, p1, v10

    if-nez v0, :cond_0

    .line 4848
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4857
    :goto_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4861
    :goto_1
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 4863
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 4927
    :goto_2
    return-void

    .line 4849
    :cond_0
    cmp-long v0, p1, v8

    if-nez v0, :cond_1

    .line 4851
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4854
    :cond_1
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4859
    :cond_2
    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_1

    .line 4869
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v4

    .line 4870
    const-wide/32 v6, 0x1400000

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    .line 4871
    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    .line 4876
    :goto_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->getRequestRemaining()I

    move-result v2

    .line 4877
    cmp-long v4, p1, v10

    if-nez v4, :cond_7

    .line 4879
    if-lt v0, v2, :cond_6

    .line 4882
    const v2, 0x7f0e0268

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4913
    :goto_4
    if-eqz v2, :cond_4

    .line 4914
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4919
    :cond_4
    :goto_5
    invoke-static {v2}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 4922
    if-eqz v3, :cond_5

    .line 4923
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    .line 4924
    iput v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 4926
    :cond_5
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    goto :goto_2

    .line 4885
    :cond_6
    const v2, 0x7f0e0269

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    goto :goto_4

    .line 4888
    :cond_7
    cmp-long v4, p1, v8

    if-nez v4, :cond_9

    .line 4890
    if-lt v0, v2, :cond_8

    .line 4893
    const v2, 0x7f0e026a

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 4896
    :cond_8
    const v2, 0x7f0e026b

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    goto :goto_4

    .line 4901
    :cond_9
    if-lt v0, v2, :cond_a

    .line 4904
    const v2, 0x7f0e026c

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 4907
    :cond_a
    const v2, 0x7f0e026d

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    goto :goto_4

    .line 4916
    :cond_b
    iget v4, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v2, v1, v4}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_5

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method private updateShootMode(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 7369
    .line 7370
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 7371
    const v0, 0x7f0e0208

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 7376
    :cond_0
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] updateShootMode shootmode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7377
    if-nez p1, :cond_2

    .line 7450
    :goto_1
    return-void

    .line 7372
    :cond_1
    if-nez p1, :cond_0

    .line 7373
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_shootmode_key"

    const v2, 0x7f0e0208

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7381
    :cond_2
    const-string v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7383
    :cond_3
    const-string v0, "burst"

    .line 7386
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 7387
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7388
    const/16 v0, 0xa

    iput v0, v1, Landroid/os/Message;->what:I

    .line 7389
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7391
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7392
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7393
    invoke-static {v3}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 7395
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v7, :cond_5

    const-string v0, "smile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7396
    invoke-static {v3}, Lcom/android/hwcamera/Util;->setSmileDetection(Z)V

    .line 7398
    :cond_5
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 7399
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7400
    const-string v0, "single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7402
    iput v3, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 7432
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setFirstLevelMenuEnableByShoot(Ljava/lang/String;)V

    .line 7433
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const-string v1, "pref_camera_shootmode_key"

    const v2, 0x7f0c005c

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7434
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFlashModeEnable()V

    .line 7436
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setTargetTrakingEnable()V

    .line 7439
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setFrontTimerEnable()V

    .line 7444
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v0, v5, :cond_10

    .line 7445
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    goto/16 :goto_1

    .line 7403
    :cond_7
    const-string v0, "hdr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7405
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_3

    .line 7406
    :cond_8
    const-string v0, "group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7408
    iput v6, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_3

    .line 7409
    :cond_9
    const-string v0, "panorama"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7411
    invoke-static {v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 7412
    iput v5, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 7413
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    goto :goto_3

    .line 7414
    :cond_a
    const-string v0, "burst"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7416
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto :goto_3

    .line 7417
    :cond_b
    const-string v0, "smile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7418
    iput v7, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    .line 7419
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7420
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 7421
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7422
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 7423
    :cond_c
    const-string v0, "beauty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7424
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 7425
    :cond_d
    const-string v0, "zsl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7426
    iput v4, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 7427
    :cond_e
    const-string v0, "lowlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7428
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 7429
    :cond_f
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7430
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    goto/16 :goto_3

    .line 7447
    :cond_10
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    goto/16 :goto_1

    :cond_11
    move-object v0, p1

    goto/16 :goto_2
.end method

.method private updateStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 4835
    if-eqz p1, :cond_0

    .line 4836
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/Camera;->updateSDCardStorageHint(J)V

    .line 4840
    :goto_0
    return-void

    .line 4838
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/Camera;->updatePhoneStorageHint(J)V

    goto :goto_0
.end method

.method private updateStorageHintEx(Z)V
    .locals 3
    .parameter

    .prologue
    .line 4808
    const/4 v0, 0x0

    .line 4809
    if-eqz p1, :cond_3

    .line 4810
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4832
    :goto_0
    return-void

    .line 4813
    :cond_0
    const v0, 0x7f0e0257

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4814
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 4824
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 4825
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4830
    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    goto :goto_0

    .line 4816
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4818
    const v0, 0x7f0e026f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4820
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1

    .line 4827
    :cond_4
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/hwcamera/Camera;->mOrientationCompensation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/hwcamera/Camera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;II)V

    goto :goto_2
.end method

.method private updateSuperPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7676
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 7677
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    if-nez v0, :cond_1

    .line 7678
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToBackCamera(Z)V

    .line 7683
    :cond_0
    :goto_0
    return-void

    .line 7680
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToFrontCamera(Z)V

    goto :goto_0
.end method

.method private updateThumbnailButton()V
    .locals 1

    .prologue
    .line 1318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->updateThumbnailButton(Z)V

    .line 1319
    return-void
.end method

.method private viewLastImage()V
    .locals 2

    .prologue
    .line 7052
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_1

    .line 7061
    :cond_0
    :goto_0
    return-void

    .line 7055
    :cond_1
    const-string v0, "Camera"

    const-string v1, "[Flow] viewLastImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7056
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->gotoGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7057
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_0

    .line 7058
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0
.end method

.method private waitPreviewOpened()V
    .locals 3

    .prologue
    .line 3499
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3501
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 3502
    const-string v0, "Camera"

    const-string v2, "[Flow] onCreate waite preview started!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStartPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3505
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    .line 3506
    const v0, 0x7f0e012a

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 3507
    monitor-exit v1

    .line 3517
    :goto_0
    return-void

    .line 3508
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_2

    .line 3509
    const v0, 0x7f0e0265

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 3510
    monitor-exit v1

    goto :goto_0

    .line 3513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3514
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3513
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 5620
    const-string v0, "Camera"

    const-string v1, "[Flow] Send msg to start autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 5628
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5629
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mAutoFocusCallback:Lcom/android/hwcamera/Camera$AutoFocusCallback;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5630
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5631
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5632
    return-void
.end method

.method public canDoFocus()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 8351
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8360
    :cond_0
    :goto_0
    return v0

    .line 8355
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_0

    .line 8360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 2
    .parameter

    .prologue
    .line 5636
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    if-nez v0, :cond_0

    .line 5651
    :goto_0
    return-void

    .line 5639
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsAutoFocus:Z

    .line 5646
    const-string v0, "Camera"

    const-string v1, "[Flow] Send msg to cancel autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5648
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5649
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5650
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public cancelSensorAutoFocus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 3209
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 3210
    if-eqz p1, :cond_0

    .line 3211
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 3213
    :cond_0
    const-string v0, "Camera"

    const-string v1, "[Flow] cancelSensorAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    return-void
.end method

.method public capture()Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v0, 0x0

    .line 2972
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v1, :cond_1

    .line 2981
    :cond_0
    :goto_0
    return v0

    .line 2975
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2979
    const-string v0, "Camera"

    const-string v1, "[Flow] Capture(),send capture picture msg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2981
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    .line 6064
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 6066
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 6067
    :try_start_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 6068
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/HwCamera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 6069
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 6070
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 6071
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 6072
    const-string v0, "Camera"

    const-string v2, "[Flow] Camera released!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6073
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCloseCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6074
    monitor-exit v1

    .line 6078
    :cond_0
    :goto_0
    return-void

    .line 6074
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 6075
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 1489
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1492
    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1495
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public displayFace([Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 2
    .parameter "facesList"

    .prologue
    .line 8199
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8200
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8201
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 8202
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8203
    return-void
.end method

.method public displayReviewOnGallery()V
    .locals 4

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2987
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 2988
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setSwipingEnabled(Z)V

    .line 2989
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2993
    :goto_0
    return-void

    .line 2992
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public doCancelPanorama()V
    .locals 2

    .prologue
    .line 7288
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelPanorama()V

    .line 7289
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 7290
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7291
    return-void
.end method

.method public doCapture()V
    .locals 1

    .prologue
    .line 7293
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    .line 7294
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    #calls: Lcom/android/hwcamera/Camera$ImageCapture;->capture()V
    invoke-static {v0}, Lcom/android/hwcamera/Camera$ImageCapture;->access$12800(Lcom/android/hwcamera/Camera$ImageCapture;)V

    .line 7296
    :cond_0
    return-void
.end method

.method public doFaceFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x18

    const/4 v5, 0x1

    const/4 v2, 0x7

    const/4 v4, 0x0

    .line 8208
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8257
    :cond_0
    :goto_0
    return-void

    .line 8213
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 8214
    const-string v1, "continuous-picture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8220
    :cond_2
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/FaceView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 8221
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0, p1, p2}, Lcom/android/hwcamera/hwui/FaceView;->isNeedFocus(Lcom/android/hwcamera/hwui/FaceInfo;Lcom/android/hwcamera/hwui/FaceInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8223
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8224
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8227
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8228
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8230
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8231
    invoke-virtual {p1, p2}, Lcom/android/hwcamera/hwui/FaceInfo;->clone(Lcom/android/hwcamera/hwui/FaceInfo;)V

    .line 8232
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8234
    new-instance v1, Landroid/hardware/Camera$Area;

    iget-object v2, p2, Lcom/android/hwcamera/hwui/FaceInfo;->rect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8239
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 8240
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8241
    const/16 v0, 0x12

    iput v0, v1, Landroid/os/Message;->what:I

    .line 8242
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8252
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isFocusStateCAFFace()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8253
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->setFocusState()V

    goto :goto_0

    .line 8244
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/FaceView;->transformFaceCoordinate(Lcom/android/hwcamera/hwui/FaceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8245
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    .line 8247
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {v1, v2, v0, v5, v4}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    goto :goto_1

    .line 8255
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    goto/16 :goto_0
.end method

.method public doForRecycleMemory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8073
    invoke-static {}, Lcom/android/hwcamera/BlueToothMediaButton;->getInstance()Lcom/android/hwcamera/BlueToothMediaButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/BlueToothMediaButton;->removeOnBlueToothMediaButtonListener()V

    .line 8074
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_0

    .line 8075
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->release()V

    .line 8077
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8078
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v0, :cond_1

    .line 8079
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    .line 8080
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Landroid/view/View;

    .line 8083
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_2

    .line 8084
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->release()V

    .line 8086
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    .line 8087
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 8088
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 8092
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    if-eqz v0, :cond_4

    .line 8093
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->unRegisterListener()V

    .line 8095
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    if-eqz v0, :cond_5

    .line 8096
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/AutoFocusListener;->setListener(Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;)V

    .line 8099
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    if-eqz v0, :cond_6

    .line 8100
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/AutoFocusListener;->unsetFocusManager()V

    .line 8103
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_7

    .line 8104
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->unsetOnPanelListener()V

    .line 8105
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->unInitSettingmenu()V

    .line 8106
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->unsetComboPreferences()V

    .line 8108
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->relase()V

    .line 8111
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_8

    .line 8112
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->unInitZoomControl()V

    .line 8115
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v0, :cond_9

    .line 8116
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->unInitParametersManager()V

    .line 8119
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_a

    .line 8120
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->unInitGPSDailog()V

    .line 8123
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    if-eqz v0, :cond_b

    .line 8124
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FlashImageView;->unsetComboPreferences()V

    .line 8127
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    if-eqz v0, :cond_c

    .line 8128
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/TimerImageView;->unsetComboPreferences()V

    .line 8131
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v0, :cond_d

    .line 8132
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->unInitComboPreferences()V

    .line 8136
    :cond_d
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 8137
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 8138
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 8139
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    .line 8140
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 8141
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    .line 8142
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 8143
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 8144
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 8145
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 8146
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 8147
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mShutterCenter:Lcom/android/hwcamera/RotateImageView;

    .line 8148
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Landroid/view/View;

    .line 8149
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 8150
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 8151
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 8152
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mTimerImageView:Lcom/android/hwcamera/hwui/TimerImageView;

    .line 8153
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 8154
    iput-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 8155
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-eqz v0, :cond_e

    .line 8156
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreferenceGroup;->deleteAllPreferences()V

    .line 8158
    :cond_e
    return-void
.end method

.method protected doOnResume()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5086
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mIsResetThumbnail:Z

    .line 5088
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 5093
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 5219
    :cond_0
    :goto_0
    return-void

    .line 5099
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5101
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    .line 5107
    :goto_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_camera_stopFM"

    invoke-static {v0, v1, v4}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5109
    invoke-static {p0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 5115
    :cond_2
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5116
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5131
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 5132
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 5137
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2003

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5138
    iput-boolean v5, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    .line 5139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mJpegPictureCallbackTime:J

    .line 5140
    iput v5, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 5141
    new-instance v0, Lcom/android/hwcamera/Camera$ImageCapture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/Camera$ImageCapture;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 5143
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsGroupFinish:Z

    .line 5146
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_4

    .line 5149
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    .line 5150
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAppImpl;->getOpenCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    .line 5151
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5154
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->waitPreviewOpened()V

    .line 5156
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 5161
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_5

    .line 5162
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->updateThumbnailButton(Z)V

    .line 5164
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    .line 5167
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_c

    .line 5168
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5173
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 5175
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5176
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_auto_focusmode_key"

    const v2, 0x7f0e0220

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5178
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5179
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    .line 5183
    :cond_7
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v4, :cond_8

    .line 5185
    invoke-static {}, Lcom/android/hwcamera/Util;->isPanoramaSupportedByScalado()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5186
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initPanorama()V

    .line 5187
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5195
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_9

    .line 5196
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_reset_tag"

    const-string v2, "reset"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5200
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->initGpsAnimation(Landroid/view/View;)V

    .line 5203
    const/16 v0, 0x3e8

    .line 5204
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5213
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_a

    .line 5214
    invoke-direct {p0, v5}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 5218
    :cond_a
    const-string v0, "Camera"

    const-string v1, "[Flow] onResume end!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5104
    :cond_b
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 5170
    :cond_c
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSecondTime()V

    goto :goto_2

    .line 5189
    :cond_d
    invoke-static {v6, p0}, Lcom/android/hwcamera/MenuHelper;->gotoMode(ILandroid/app/Activity;)V

    .line 5190
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    goto :goto_3
.end method

.method public doSetCameraParameters(II)V
    .locals 2
    .parameter "updateSet"
    .parameter "arg2"

    .prologue
    .line 7298
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 7299
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->canSetZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7316
    :goto_0
    return-void

    .line 7312
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 7315
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/hwcamera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public doSetFaceOrientation(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 1904
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1905
    invoke-static {p1}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 1907
    :cond_0
    return-void
.end method

.method public doStartAutoFocus(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 7319
    :try_start_0
    const-string v0, "Camera"

    const-string v1, "start auto focus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7320
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 7321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mFocusStartTime:J

    .line 7322
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    check-cast p1, Lcom/android/hwcamera/Camera$AutoFocusCallback;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7326
    :goto_0
    return-void

    .line 7323
    :catch_0
    move-exception v0

    .line 7324
    const-string v0, "Camera"

    const-string v1, "autoFocus failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doSwitchCamera()V
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 7233
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    .line 7237
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7239
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    if-eqz v0, :cond_0

    .line 7240
    const-string v0, "off"

    .line 7244
    :goto_0
    const-string v2, "pref_video_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7245
    const-string v2, "pref_camera_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7246
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7248
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 7249
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 7251
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7252
    const-string v0, "Camera"

    const-string v1, "doSwitchCamera don\'t open new device as quiting msg is queue!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7255
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->openCameraDevice()V

    .line 7256
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7260
    :goto_1
    const-string v0, "Camera"

    const-string v1, "[Flow] Camera switched !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7286
    :goto_2
    return-void

    .line 7242
    :cond_0
    const-string v0, "on"

    goto :goto_0

    .line 7257
    :catch_0
    move-exception v0

    .line 7258
    const-string v0, "Camera"

    const-string v1, "Open Camera failed when switch camera!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7265
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    .line 7267
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_sound_state_key"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7268
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    .line 7273
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->setSoundState(Z)V

    .line 7279
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7280
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    .line 7284
    :cond_2
    const-string v0, "Camera"

    const-string v1, "[Flow] Camera switched !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7285
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 7271
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    goto :goto_3
.end method

.method public doUpdateShootingMode(Ljava/lang/String;)V
    .locals 2
    .parameter "shootMode"

    .prologue
    .line 7453
    invoke-static {p1}, Lcom/android/hwcamera/Util;->setShootingMode(Ljava/lang/String;)Z

    .line 7463
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7464
    return-void
.end method

.method public getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x1

    const/16 v0, 0x3e8

    .line 6351
    if-nez p1, :cond_0

    .line 6352
    const/4 v0, 0x0

    .line 6393
    :goto_0
    return-object v0

    .line 6361
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6362
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6363
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 6364
    const/16 v0, 0x2bc

    .line 6375
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/hwcamera/Camera;->getPreviewSizeUnderMaxValueWithRatio(Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 6377
    if-nez v1, :cond_2

    .line 6378
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/hwcamera/Camera;->getPreviewSizeUnderMaxValueWithRatio(Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 6381
    :cond_2
    if-nez v1, :cond_4

    .line 6382
    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/Camera;->getPreviewSizeUnderMaxValueWithoutRatio(Ljava/util/List;I)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6385
    :goto_1
    if-nez v0, :cond_3

    .line 6386
    invoke-direct {p0, p1, v3}, Lcom/android/hwcamera/Camera;->getPreviewSizeUnderMaxValueWithoutRatio(Ljava/util/List;I)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6390
    :cond_3
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optimalSize.width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and optimalSize.height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public hideFace()V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 8188
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8190
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8191
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8193
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8195
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 8438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 8441
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    .line 8442
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8443
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8444
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8447
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 8448
    return-void
.end method

.method public initControlBarHeight()V
    .locals 3

    .prologue
    const v1, 0x7f0c000c

    .line 8756
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8757
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    .line 8761
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mControlBarHeightmControlBarHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8762
    iget v0, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    invoke-static {v0}, Lcom/android/hwcamera/hwui/MenuCommon;->setControlBarHeight(I)V

    .line 8764
    return-void

    .line 8759
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mControlBarHeight:I

    goto :goto_0
.end method

.method public initThumbnailMaskView()V
    .locals 2

    .prologue
    .line 3478
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    .line 3479
    new-instance v0, Lcom/android/hwcamera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/Camera$6;-><init>(Lcom/android/hwcamera/Camera;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

    .line 3492
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3493
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3494
    return-void
.end method

.method public initializeZoom()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1423
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1433
    new-instance v0, Lcom/android/hwcamera/hwui/ZoomControl;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    .line 1434
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    const v1, 0x7f0c00eb

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x7f0c00ef

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/hwcamera/RotateImageView;

    const v8, 0x7f0c00ed

    invoke-virtual {p0, v8}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/hwui/ZoomControl;->initZoomControlRes(Lcom/android/hwcamera/hwui/RotateLinearLayout;Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/hwcamera/RotateImageView;Lcom/android/hwcamera/RotateImageView;)V

    .line 1442
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->initZoomControl()V

    .line 1443
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mZoomControlListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setOnZoomChangeListener(Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;)V

    .line 1444
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setSmoothZoomSupported(Z)V

    .line 1446
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mZoomListener:Lcom/android/hwcamera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mZoomMax:I

    .line 1450
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomMax(I)V

    .line 1451
    iput v9, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    .line 1452
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setOrientationEx(I)V

    .line 1453
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 1455
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1456
    invoke-direct {p0, v9}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    goto/16 :goto_0

    .line 1458
    :cond_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    goto/16 :goto_0
.end method

.method public isCameraReleased()Z
    .locals 1

    .prologue
    .line 6081
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedFocus()Z
    .locals 1

    .prologue
    .line 8365
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->canDoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5509
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult rescode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5510
    sparse-switch p1, :sswitch_data_0

    .line 5570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 5571
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 5575
    :cond_0
    :goto_0
    return-void

    .line 5512
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5513
    if-eqz p3, :cond_1

    .line 5514
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5515
    if-eqz v1, :cond_1

    .line 5516
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5519
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/hwcamera/Camera;->setResultEx(ILandroid/content/Intent;)V

    .line 5520
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->finish()V

    .line 5522
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 5523
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 5529
    :sswitch_1
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    .line 5530
    const/4 v0, 0x5

    if-ne v0, p2, :cond_0

    .line 5531
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5537
    :sswitch_2
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    goto :goto_0

    .line 5542
    :sswitch_3
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsActivityExit:Z

    .line 5543
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 5544
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 5553
    :sswitch_4
    if-eqz p3, :cond_3

    .line 5554
    const-string v0, "config_need_to_helpcenter"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5556
    const-string v3, "config_helpcenter_current_page"

    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 5559
    :goto_1
    if-eqz v0, :cond_2

    .line 5560
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->saveHelpCenterCurrentPage(I)V

    .line 5564
    :goto_2
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->ishelpexit:Z

    goto :goto_0

    .line 5562
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->notNeedToHelpCenter()V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    .line 5510
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_1
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5680
    const-string v0, "Camera"

    const-string v1, "[Flow] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5683
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->exitGallery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 5777
    :cond_0
    :goto_0
    return-void

    .line 5686
    :catch_0
    move-exception v0

    .line 5687
    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V
    invoke-static {p0}, Lcom/android/hwcamera/Camera;->access$12701(Lcom/android/hwcamera/Camera;)V

    goto :goto_0

    .line 5691
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 5692
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExEnd()V

    goto :goto_0

    .line 5695
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v0, v5, :cond_4

    .line 5697
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5703
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v5, :cond_5

    .line 5705
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5706
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5707
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 5710
    :cond_5
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_6

    .line 5711
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mCancelTimer:Z

    .line 5712
    iput v4, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    goto :goto_0

    .line 5715
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->closeOpenedPanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5716
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5717
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 5730
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_a

    .line 5731
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 5718
    :cond_8
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5719
    invoke-static {v6}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    goto :goto_1

    .line 5720
    :cond_9
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5721
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getPanoramaControlAble()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5722
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 5723
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto :goto_0

    .line 5735
    :cond_a
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-nez v0, :cond_c

    :cond_b
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_d

    .line 5738
    :cond_c
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopBurst()V

    .line 5739
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->isAllImageSaved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5740
    invoke-direct {p0, v3}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 5746
    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "press_back_menu"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5749
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_reset_tag"

    const-string v2, "reset"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5752
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraAppImpl;->resetMakeZoomHint(Z)V

    .line 5755
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 5761
    invoke-static {v4}, Lcom/android/hwcamera/hwui/ZoomControl;->resetFirstTimeInitialized(Z)V

    .line 5773
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5743
    :cond_e
    invoke-direct {p0, v4, v3}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    goto :goto_2
.end method

.method public onBlueToothMediaButtonDown()V
    .locals 2

    .prologue
    .line 8570
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFocusAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8571
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8572
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 8575
    :cond_0
    return-void
.end method

.method public onBlueToothMediaButtonUp()V
    .locals 2

    .prologue
    .line 8560
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8561
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8562
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 8563
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 8566
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 4435
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4466
    :cond_0
    :goto_0
    return-void

    .line 4437
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doAttach()V

    goto :goto_0

    .line 4442
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showGrid()V

    .line 4445
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hidePostCaptureAlert()V

    .line 4446
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->restartPreview()Z

    goto :goto_0

    .line 4449
    :sswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doCancel()V

    goto :goto_0

    .line 4457
    :sswitch_3
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 4461
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4462
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->viewLastImage()V

    goto :goto_0

    .line 4435
    :sswitch_data_0
    .sparse-switch
        0x7f0c0024 -> :sswitch_3
        0x7f0c0030 -> :sswitch_0
        0x7f0c0031 -> :sswitch_1
        0x7f0c0032 -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 5252
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5253
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeMiscControls()V

    .line 5254
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3244
    const-string v0, "Camera"

    const-string v3, "[Flow] onCreate begine"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 3246
    new-instance v0, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 3247
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 3248
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 3250
    new-instance v0, Lcom/android/hwcamera/FocusManager;

    const v3, 0x7f0e0177

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/hwcamera/FocusManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 3251
    new-instance v0, Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/HWExtCameraHandler;-><init>(Lcom/android/hwcamera/HWExtCameraHandler$Listener;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    .line 3252
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/CameraAppImpl;->setCameraActivityInfo(Lcom/android/hwcamera/Camera;)V

    .line 3253
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAppImpl;->getOpenCameraHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    .line 3254
    const-string v0, "Camera"

    const-string v3, "[Flow] onCreate send open camera msg"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3256
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setContentView(I)V

    .line 3261
    invoke-static {p0}, Lcom/android/hwcamera/Util;->calDisplayMetrics(Landroid/content/Context;)V

    .line 3265
    const-string v0, "ro.camera.show.eula"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3266
    const-string v0, "pref_eula"

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mEulaPreference:Landroid/content/SharedPreferences;

    .line 3268
    :cond_0
    const-string v0, "ro.camera.support.led"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3269
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    .line 3289
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    .line 3291
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isInnerlImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInnerlImageCaptureIntent:Z

    .line 3294
    new-instance v0, Lcom/android/hwcamera/ParametersManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/ParametersManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    .line 3295
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ParametersManager;->setImageCaptureIntent(Z)V

    .line 3297
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 3299
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    .line 3300
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreviewFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3301
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3302
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v3, v0}, Lcom/android/hwcamera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3305
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f050014

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 3306
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumnailAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3307
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mQuickCapture:Z

    .line 3308
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    .line 3309
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    iget v3, p0, Lcom/android/hwcamera/Camera;->mNumberOfCameras:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_6

    .line 3310
    iput v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    .line 3311
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3312
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v0, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 3317
    :goto_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 3318
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->resetMenuPreference()V

    .line 3321
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 3323
    new-instance v0, Lcom/android/hwcamera/PictureRemaining;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/PictureRemaining;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mPictureRemaining:Lcom/android/hwcamera/PictureRemaining;

    .line 3336
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->saveLocationInit()V

    .line 3337
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->createCameraScreenNail(Z)V

    .line 3338
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3339
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    .line 3341
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_4

    .line 3342
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setupCaptureParams()V

    .line 3345
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 3347
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3348
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v4, :cond_8

    .line 3349
    const v4, 0x7f040005

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3376
    :goto_2
    new-instance v0, Lcom/android/hwcamera/Camera$SuperPanelListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/Camera$SuperPanelListener;-><init>(Lcom/android/hwcamera/Camera;Lcom/android/hwcamera/Camera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanelListener:Lcom/android/hwcamera/Camera$SuperPanelListener;

    .line 3377
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3378
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3379
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3384
    new-instance v0, Lcom/android/hwcamera/LocationManager;

    invoke-direct {v0, p0, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 3385
    new-instance v0, Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/hwui/GPSDailog;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 3387
    new-instance v0, Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraAutoFocusController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    .line 3390
    new-instance v0, Lcom/android/hwcamera/CameraMovedController;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraMovedController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    .line 3391
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->setCameraMovedController(Lcom/android/hwcamera/CameraMovedController;)V

    .line 3394
    new-instance v0, Lcom/android/hwcamera/AutoFocusListener;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-direct {v0, v3, v4}, Lcom/android/hwcamera/AutoFocusListener;-><init>(Lcom/android/hwcamera/FocusManager;Lcom/android/hwcamera/CameraAutoFocusController;)V

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    .line 3395
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/AutoFocusListener;->setListener(Lcom/android/hwcamera/AutoFocusListener$OnAutoFocusListener;)V

    .line 3396
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mAutoFocusListener:Lcom/android/hwcamera/AutoFocusListener;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/CameraAutoFocusController;->setListener(Lcom/android/hwcamera/CameraAutoFocusController$OnCameraAutoFocusControllerListener;)V

    .line 3398
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->waitPreviewOpened()V

    .line 3400
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_sound_state_key"

    const-string v4, "on"

    invoke-virtual {v0, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3401
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3402
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    .line 3406
    :goto_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeMiscControls()V

    .line 3407
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->setSoundState(Z)V

    .line 3410
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->ishelpexit:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsInnerlImageCaptureIntent:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needToHelpCenter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3411
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->genCameraHelpCenterIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3412
    if-eqz v0, :cond_a

    .line 3413
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3419
    :cond_5
    :goto_4
    const-string v0, "Camera"

    const-string v1, "[Flow] onCreate end!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    return-void

    .line 3314
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 3337
    goto/16 :goto_1

    .line 3351
    :cond_8
    const v4, 0x7f040007

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3358
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/Switcher;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 3359
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/Switcher;->setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V

    .line 3360
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v3, 0x7f0c0025

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/Switcher;->addTouchView(Landroid/view/View;)V

    .line 3361
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 3362
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 3363
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 3367
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->initThumbnailMaskView()V

    goto/16 :goto_2

    .line 3404
    :cond_9
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    goto :goto_3

    .line 3415
    :cond_a
    const-string v0, "Camera"

    const-string v1, "no camerahelpCenter so continue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 8163
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 8165
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8167
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsMute:Z

    if-eqz v0, :cond_0

    .line 8168
    const-string v0, "off"

    .line 8172
    :goto_0
    const-string v2, "pref_video_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8173
    const-string v2, "pref_camera_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8174
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8176
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->doForRecycleMemory()V

    .line 8180
    const-string v0, "Camera"

    const-string v1, "[Flow] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8184
    return-void

    .line 8170
    :cond_0
    const-string v0, "on"

    goto :goto_0
.end method

.method public onFlashModeChange()Z
    .locals 1

    .prologue
    .line 7583
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7584
    :cond_0
    const/4 v0, 0x0

    .line 7586
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 4
    .parameter "full"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8768
    const-string v0, "Camera"

    const-string v1, "onFullScreenChanged 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8769
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSwitchControlBar:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 8770
    :cond_0
    const-string v0, "Camera"

    const-string v1, "onFullScreenChanged 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8771
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onFullScreenChanged(Z)V

    .line 8773
    :cond_1
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mIsSwitchControlBar:Z

    .line 8774
    if-eqz p1, :cond_3

    .line 8775
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 8776
    invoke-direct {p0, v3, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 8777
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    if-nez v0, :cond_2

    .line 8789
    :goto_0
    return-void

    .line 8780
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/Camera$10;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/Camera$10;-><init>(Lcom/android/hwcamera/Camera;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/RotateImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8787
    :cond_3
    invoke-direct {p0, v2, v2}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 5835
    sparse-switch p1, :sswitch_data_0

    .line 5910
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 5837
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 5839
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 5841
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    :cond_1
    move v0, v1

    .line 5845
    goto :goto_1

    .line 5847
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 5849
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    :cond_2
    move v0, v1

    .line 5852
    goto :goto_1

    .line 5860
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 5865
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->resetTouchFocus()V

    .line 5867
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 5870
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5871
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->requestFocusFromTouch()Z

    .line 5875
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    :cond_3
    move v0, v1

    .line 5877
    goto :goto_1

    .line 5873
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    goto :goto_2

    :sswitch_4
    move v0, v1

    .line 5884
    goto :goto_1

    .line 5890
    :sswitch_5
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5891
    if-eqz v0, :cond_5

    .line 5892
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 5899
    :cond_5
    :sswitch_6
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFocusAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5900
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonDown(Landroid/view/KeyEvent;)V

    move v0, v1

    .line 5901
    goto :goto_1

    .line 5905
    :cond_6
    :sswitch_7
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5906
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 5835
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_3
        0x18 -> :sswitch_6
        0x19 -> :sswitch_4
        0x1b -> :sswitch_2
        0x4f -> :sswitch_6
        0x50 -> :sswitch_1
        0x52 -> :sswitch_7
        0x55 -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x66

    const/4 v1, 0x1

    .line 5915
    sparse-switch p1, :sswitch_data_0

    .line 5958
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 5917
    :sswitch_0
    const-string v0, "Camera"

    const-string v2, "KEYCODE_HOME pressed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5918
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5919
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5920
    const/16 v2, 0x63

    iput v2, v0, Landroid/os/Message;->what:I

    .line 5921
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5922
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5923
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0010

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v0, v2, v3}, Lcom/android/hwcamera/Util;->slideOutControlBar(Landroid/view/View;Landroid/view/View;I)V

    .line 5924
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    move v0, v1

    .line 5928
    goto :goto_0

    .line 5926
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 5930
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 5932
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    :cond_2
    move v0, v1

    .line 5935
    goto :goto_0

    .line 5940
    :sswitch_2
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5941
    if-eqz v0, :cond_3

    .line 5942
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 5944
    const-string v0, "Camera"

    const-string v2, "unregister reciever"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    :cond_3
    :sswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5952
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonUp(Landroid/view/KeyEvent;)V

    move v0, v1

    .line 5953
    goto :goto_0

    .line 5915
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_3
        0x4f -> :sswitch_3
        0x50 -> :sswitch_1
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onLayoutChange()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 8693
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-eqz v1, :cond_1

    .line 8748
    :cond_0
    :goto_0
    return-void

    .line 8697
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v1, :cond_6

    .line 8698
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In surfacechange, mRestartPreviewNeed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8701
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mRestartPreviewNeed:Z

    if-eqz v1, :cond_3

    .line 8702
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSwitchControlBar:Z

    .line 8705
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_4

    .line 8706
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8716
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_7

    .line 8717
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8718
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8720
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8732
    :goto_2
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->initControlBarHeight()V

    .line 8733
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreviewFrameLayout;->calPreviewFrameMargin()V

    .line 8734
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->setIconsArrayPaddingBottom()V

    .line 8738
    invoke-static {}, Lcom/android/hwcamera/Util;->calValidTouchFocusArea()V

    .line 8739
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_0

    .line 8740
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->calZoomControlRegions()V

    .line 8741
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->updateZoomControlLayoutSize()V

    .line 8742
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8743
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    .line 8744
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2002

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8709
    :cond_6
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    if-eq v1, v2, :cond_4

    .line 8710
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 8722
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeSecondTime()V

    .line 8725
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v1, v1, v2

    .line 8726
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v5, :cond_8

    .line 8727
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusIndicator:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v6, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    goto :goto_2

    :cond_8
    move v5, v0

    .line 8726
    goto :goto_3
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5269
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5271
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    .line 5277
    :goto_0
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsHomeExit:Z

    .line 5278
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 5281
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAppImpl;->isCameraActivityInfoNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5282
    const-string v0, "Camera"

    const-string v1, "Donot do anything in onPause!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    :goto_1
    return-void

    .line 5274
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5287
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5288
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5290
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5291
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5294
    :cond_3
    const-string v0, "Camera"

    const-string v1, "[Flow] onPause begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5308
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    .line 5310
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_4

    .line 5311
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->setCameraUIVisibility(I)V

    .line 5314
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_5

    .line 5315
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5316
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 5317
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 5318
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5325
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5326
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPanoramaState(I)V

    .line 5333
    :cond_6
    :goto_3
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    .line 5335
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_7

    .line 5336
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 5341
    :cond_7
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    if-nez v0, :cond_8

    .line 5344
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5348
    :cond_8
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->resetScreenOn()V

    .line 5349
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_9

    .line 5350
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 5352
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_a

    .line 5353
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 5355
    :cond_a
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_b

    .line 5357
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5358
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5359
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 5360
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    .line 5362
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_c

    .line 5363
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapseAllPanelsControls()V

    .line 5365
    :cond_c
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_d

    .line 5366
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOrientationListener:Lcom/android/hwcamera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$MyOrientationEventListener;->disable()V

    .line 5367
    invoke-direct {p0, v4, v4}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 5368
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_d

    .line 5369
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->enableSwitcherThumbnail(Z)V

    .line 5376
    :cond_d
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_e

    .line 5377
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5378
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mDidRegister:Z

    .line 5381
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_f

    .line 5382
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 5383
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 5388
    :cond_f
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->releaseSoundPlayer()V

    .line 5389
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->releaseSoundPlayer()V

    .line 5391
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->releaseBurstSound()V

    .line 5395
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v6, :cond_1e

    .line 5397
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideAfterCaptureAlertOnPause()V

    .line 5406
    :cond_10
    :goto_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_11

    .line 5407
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 5408
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 5412
    :cond_11
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mImageCapture:Lcom/android/hwcamera/Camera$ImageCapture;

    .line 5416
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mJpegImageData:[B

    .line 5418
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5419
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5421
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5425
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5426
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5430
    :cond_12
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 5431
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5432
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 5433
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 5437
    :cond_13
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_14

    .line 5438
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 5440
    :cond_14
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    .line 5441
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->pause()V

    .line 5443
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraMovedController;->pause()V

    .line 5447
    :try_start_0
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5448
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5450
    :cond_15
    const-string v0, "Camera"

    const-string v2, "[Flow] onPause, wait to release camera!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/CameraAppImpl;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAppImpl;->getCameraActivity()Lcom/android/hwcamera/Camera;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 5453
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 5457
    :cond_16
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5469
    :goto_5
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 5470
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_17

    .line 5471
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 5472
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5476
    :cond_17
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    if-eqz v0, :cond_18

    .line 5477
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$DecodeThumbnailThread;->finish()V

    .line 5478
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBurstThread:Lcom/android/hwcamera/Camera$DecodeThumbnailThread;

    .line 5480
    :cond_18
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    if-eqz v0, :cond_19

    .line 5481
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    invoke-virtual {v0}, Lcom/android/hwcamera/Camera$ImageSaver;->finish()V

    .line 5482
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mImageSaver:Lcom/android/hwcamera/Camera$ImageSaver;

    .line 5488
    :cond_19
    const-string v0, "ro.camera.support.led"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 5489
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mNM:Landroid/app/NotificationManager;

    invoke-static {v0}, Lcom/android/hwcamera/LedLightManager;->ledoff(Landroid/app/NotificationManager;)V

    .line 5494
    :cond_1a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setZoomBarVisibility(I)V

    .line 5502
    invoke-static {}, Lcom/android/hwcamera/Storage;->saveLocationUnInit()V

    .line 5504
    const-string v0, "Camera"

    const-string v1, "[Flow] onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5320
    :cond_1b
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 5321
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    .line 5327
    :cond_1c
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5328
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto/16 :goto_3

    .line 5329
    :cond_1d
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazProcessing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5331
    invoke-direct {p0, v2}, Lcom/android/hwcamera/Camera;->cancelPanorama(Z)V

    goto/16 :goto_3

    .line 5399
    :cond_1e
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    .line 5400
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->hideReviewUI()V

    .line 5401
    iput-object v3, p0, Lcom/android/hwcamera/Camera;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 5402
    :cond_1f
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-ne v0, v5, :cond_10

    .line 5403
    :cond_20
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->galleryExClose()V

    goto/16 :goto_4

    .line 5457
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5458
    :catch_0
    move-exception v0

    goto/16 :goto_5
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 8591
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8592
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x3

    const v6, 0x7f0c0056

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mShutterupTime:J

    .line 4607
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapsePanelsControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4743
    :cond_0
    :goto_0
    return-void

    .line 4611
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v0, v4, :cond_2

    .line 4613
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 4617
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    if-eq v0, v5, :cond_0

    .line 4622
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onShutterButtonClick mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mSnapshotOnIdle:Z

    .line 4624
    invoke-virtual {p1}, Lcom/android/hwcamera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4627
    :pswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4629
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v5, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_0

    .line 4630
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 4635
    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/android/hwcamera/Camera;->enableSlideToGallery(ZZ)V

    .line 4636
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v5, :cond_4

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_4

    .line 4637
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    .line 4638
    iput-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    .line 4639
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showBarAndShutterButton()V

    .line 4640
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOn()V

    .line 4641
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 4643
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v5, :cond_5

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-eqz v0, :cond_5

    .line 4644
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->stopSmileCapture()V

    goto :goto_0

    .line 4648
    :cond_5
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-ne v0, v4, :cond_7

    .line 4649
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->getPanoramaControlAble()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4650
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramazPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4651
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPanorama()V

    goto/16 :goto_0

    .line 4652
    :cond_6
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4653
    invoke-direct {p0, v4}, Lcom/android/hwcamera/Camera;->stopPanorama(Z)V

    goto/16 :goto_0

    .line 4661
    :cond_7
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 4664
    :cond_8
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDelayTimeRemaining:I

    .line 4667
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    .line 4670
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4671
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/Camera;->enableSlideToGalleryImmediately(Z)V

    goto/16 :goto_0

    .line 4674
    :cond_9
    iput v3, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    .line 4677
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->isBasedBurstShootMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4678
    sget v0, Lcom/android/hwcamera/Config;->BURST_MAX_NUMBER:I

    .line 4679
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 4680
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 4681
    sget v0, Lcom/android/hwcamera/Config;->REWIND_PIC_NUM:I

    .line 4683
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v3, "noreset"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4695
    :cond_a
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->startBurst(I)V

    goto/16 :goto_0

    .line 4686
    :cond_b
    iget v1, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    .line 4687
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setFlyable(Z)V

    .line 4688
    sget v0, Lcom/android/hwcamera/Config;->ACTION_PIC_NUM:I

    .line 4690
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_reset_tag"

    const-string v3, "noreset"

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4699
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4702
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needSnapShotAnim()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-gtz v0, :cond_d

    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4705
    :cond_d
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->slideOutPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 4712
    :cond_e
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needSnapShotAnim()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-gtz v0, :cond_f

    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4714
    :cond_f
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4720
    :cond_10
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->needSnapShotAnim()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-gtz v0, :cond_11

    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4723
    :cond_11
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/ZoomControl;->zoomFade(Z)V

    .line 4728
    :cond_12
    iget v0, p0, Lcom/android/hwcamera/Camera;->mReviewTime:I

    if-gtz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_14

    .line 4729
    :cond_13
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 4734
    :cond_14
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_15

    .line 4735
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4736
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4739
    :cond_15
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto/16 :goto_0

    .line 4624
    :pswitch_data_0
    .packed-switch 0x7f0c0011
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4552
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] onShutterButtonFocus mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4553
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 4568
    :cond_0
    :goto_0
    return-void

    .line 4557
    :cond_1
    if-eqz p2, :cond_2

    .line 4558
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->needShutterButtonFocus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4559
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->enableFocusSound()V

    .line 4560
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterDown()V

    .line 4562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsCafSucceed:Z

    goto :goto_0

    .line 4566
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed()V
    .locals 2

    .prologue
    .line 4747
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 4771
    :cond_0
    :goto_0
    return-void

    .line 4752
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapsePanelsControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4756
    :cond_2
    const-string v0, "Camera"

    const-string v1, "[Flow] onShutterButtonLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isStorageSpaceEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4761
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 4767
    iget v0, p0, Lcom/android/hwcamera/Camera;->mTimerValue:I

    if-nez v0, :cond_0

    .line 4770
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->shutterLongPressed()V

    goto :goto_0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8607
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    .line 8608
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_1

    .line 8679
    :cond_0
    :goto_0
    return-void

    .line 8615
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8620
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8625
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-nez v0, :cond_0

    .line 8629
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 8640
    invoke-static {p2, p3}, Lcom/android/hwcamera/Util;->isTouchFocusAreaValid(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8646
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    goto :goto_0

    .line 8652
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/hwcamera/HWExtCameraHandler;->isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8654
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8655
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->setFocusStateCAFFace()Z

    .line 8656
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->doFaceFocus()V

    goto :goto_0

    .line 8662
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    .line 8676
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 8678
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/hwcamera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 4240
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 4241
    const-string v0, "Camera"

    const-string v1, "[Flow] onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4242
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 4243
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setSwitch(Z)V

    .line 4245
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 4249
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 4250
    const-string v0, "Camera"

    const-string v1, "[Flow] onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 4252
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 4253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 4255
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    .locals 3
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 7568
    if-nez p2, :cond_0

    .line 7569
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_reset_tag"

    const-string v2, "noreset"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 7571
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "videotag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 7573
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchToVideoMode()Z

    move-result v0

    .line 7575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTimerStateChange()Z
    .locals 1

    .prologue
    .line 8598
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8599
    :cond_0
    const/4 v0, 0x0

    .line 8601
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0c0072

    const v6, 0x7f0c002a

    const v5, 0x7f0c0056

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1501
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0c0010

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/hwcamera/UiElements;->addBottomView(Landroid/view/View;Landroid/view/View;)V

    .line 1502
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_4

    .line 1503
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/android/hwcamera/UiElements;->addTopView(Landroid/view/View;Landroid/view/View;)V

    .line 1509
    :goto_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1512
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1513
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {v0}, Lcom/android/hwcamera/UiElements;->startShowIn()V

    .line 1516
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_1

    .line 1517
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1518
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v0, v2, :cond_1

    .line 1519
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1522
    :cond_1
    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1523
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1524
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    .line 1526
    :cond_2
    iput v3, p0, Lcom/android/hwcamera/Camera;->moveTimes:I

    :cond_3
    move v0, v3

    .line 1646
    :goto_1
    return v0

    .line 1506
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/UiElements;->removeTopView(Landroid/view/View;)V

    goto :goto_0

    .line 1532
    :cond_5
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 1534
    goto :goto_1

    .line 1537
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isHandleDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1538
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->isDoubleClick(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1539
    invoke-direct {p0, p2}, Lcom/android/hwcamera/Camera;->handleDoubleClick(Landroid/view/MotionEvent;)V

    move v0, v2

    .line 1540
    goto :goto_1

    .line 1546
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 1547
    goto :goto_1

    .line 1551
    :cond_8
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->isCounterDowning:Z

    if-eqz v0, :cond_b

    .line 1552
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1553
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    if-eqz v0, :cond_9

    .line 1554
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/UiElements;->removeTopView(Landroid/view/View;)V

    .line 1555
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {v0}, Lcom/android/hwcamera/UiElements;->startShowIn()V

    .line 1556
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    .line 1558
    :cond_9
    iput v3, p0, Lcom/android/hwcamera/Camera;->moveTimes:I

    :cond_a
    move v0, v2

    .line 1560
    goto :goto_1

    .line 1563
    :cond_b
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/hwcamera/Camera;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    :cond_c
    move v0, v2

    .line 1566
    goto :goto_1

    .line 1571
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1572
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1577
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    if-nez v4, :cond_e

    invoke-static {p2}, Lcom/android/hwcamera/Util;->isTouchFocusAreaValid(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1583
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    move v0, v2

    .line 1586
    goto/16 :goto_1

    .line 1589
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    iget-object v5, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/hwcamera/HWExtCameraHandler;->isPointOnFace(Lcom/android/hwcamera/hwui/FaceView;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_f

    .line 1592
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1593
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->setFocusStateCAFFace()Z

    .line 1594
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->doFaceFocus()V

    move v0, v2

    .line 1595
    goto/16 :goto_1

    .line 1601
    :cond_f
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v4}, Lcom/android/hwcamera/HWExtCameraHandler;->clearFocusState()V

    .line 1603
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    if-nez v4, :cond_11

    iget v4, p0, Lcom/android/hwcamera/Camera;->moveTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/hwcamera/Camera;->moveTimes:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_11

    .line 1605
    iput-boolean v2, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    .line 1606
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {v4}, Lcom/android/hwcamera/UiElements;->startShowOut()V

    .line 1607
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v4, :cond_10

    .line 1608
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 1609
    iget v4, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v4, v2, :cond_10

    .line 1610
    const v4, 0x7f0c00eb

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 1613
    :cond_10
    const v4, 0x7f0c00ba

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 1614
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 1617
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_14

    .line 1618
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    if-eqz v4, :cond_13

    .line 1619
    iget-object v4, p0, Lcom/android/hwcamera/Camera;->mUiElements:Lcom/android/hwcamera/UiElements;

    invoke-virtual {v4}, Lcom/android/hwcamera/UiElements;->startShowIn()V

    .line 1620
    iget-boolean v4, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v4, :cond_12

    .line 1621
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1622
    iget v4, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    if-eq v4, v2, :cond_12

    .line 1623
    const v4, 0x7f0c00eb

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1626
    :cond_12
    const v4, 0x7f0c00ba

    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1627
    invoke-virtual {p0, v7}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 1628
    iput-boolean v3, p0, Lcom/android/hwcamera/Camera;->mMoveState:Z

    .line 1630
    :cond_13
    iput v3, p0, Lcom/android/hwcamera/Camera;->moveTimes:I

    .line 1633
    :cond_14
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1635
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_16

    .line 1636
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-nez v0, :cond_15

    move v0, v2

    .line 1637
    goto/16 :goto_1

    .line 1639
    :cond_15
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_16
    move v0, v3

    .line 1641
    goto/16 :goto_1

    .line 1646
    :cond_17
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 7615
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 7616
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_0

    .line 7617
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->keepScreenOnAwhile()V

    .line 7619
    :cond_0
    return-void
.end method

.method public onVolumePlusButtonClick()V
    .locals 1

    .prologue
    .line 8531
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8532
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 8535
    :cond_0
    return-void
.end method

.method public onVolumePlusButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 8541
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8542
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0, p1}, Lcom/android/hwcamera/Camera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 8545
    :cond_0
    return-void
.end method

.method public onVolumePlusButtonLongPressed()V
    .locals 1

    .prologue
    .line 8551
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8552
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->onShutterButtonLongPressed()V

    .line 8555
    :cond_0
    return-void
.end method

.method public openCameraDevice()V
    .locals 4

    .prologue
    .line 3157
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 3158
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3162
    :try_start_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3173
    :try_start_2
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Flow] Camera opened! mCameraDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setCameraDevice(Lcom/android/hwcamera/HwCamera;)V

    .line 3183
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setHWExtCameraHandler(Landroid/os/Handler;)V

    .line 3184
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->initializeCapabilities()V

    .line 3185
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->openCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3187
    :cond_0
    monitor-exit v1

    .line 3188
    :goto_0
    return-void

    .line 3163
    :catch_0
    move-exception v0

    .line 3164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mOpenCameraFail:Z

    .line 3165
    const-string v0, "Camera"

    const-string v2, "camera hardware open failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    monitor-exit v1

    goto :goto_0

    .line 3187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3167
    :catch_1
    move-exception v0

    .line 3168
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/android/hwcamera/Camera;->mCameraDisabled:Z

    .line 3169
    const-string v0, "Camera"

    const-string v2, "camera hardware disabled!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public panoramaDirection(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 8325
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 8326
    const-string v1, "direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8327
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panoramaa direction decedied! direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8328
    const-string v1, "Left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8329
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->movePanoramaToEdge(I)V

    .line 8333
    :cond_0
    :goto_0
    return-void

    .line 8330
    :cond_1
    const-string v1, "Right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8331
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->movePanoramaToEdge(I)V

    goto :goto_0
.end method

.method public panoramaTracker(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 8304
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 8305
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "offx"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 8306
    .local v1, offx:I
    const-string v3, "offy"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 8307
    .local v2, offy:I
    invoke-static {}, Lcom/android/hwcamera/hwui/PanoramaBar;->isOnPanoramaCapture()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8309
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8311
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v3, v1, v2}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPosition(II)V

    .line 8321
    :goto_0
    return-void

    .line 8315
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v3, v2, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->setPosition(II)V

    goto :goto_0

    .line 8319
    :cond_1
    const-string v3, "Camera"

    const-string v4, "panoramaTracker get x,y in worng status!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public panormaIntermediateCaptureStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 8338
    invoke-direct {p0, v0, v0}, Lcom/android/hwcamera/Camera;->enableShutterButton(ZZ)V

    .line 8339
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8340
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mPanoramaBar:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->notifyBeforeCaputre()V

    .line 8341
    return-void
.end method

.method public prepareQuitCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3191
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_2

    .line 3192
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3193
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/Camera;->cancelSensorAutoFocus(Z)V

    .line 3195
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    if-eqz v0, :cond_1

    .line 3196
    iput-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsBursting:Z

    .line 3197
    invoke-static {}, Lcom/android/hwcamera/Util;->cancelTakePictureEx()Z

    .line 3199
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->clearShootMode()V

    .line 3200
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopPreview()V

    .line 3202
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 3203
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->prepareQuitCameraLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3204
    monitor-exit v1

    .line 3205
    return-void

    .line 3204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetParametersCompensation()V
    .locals 3

    .prologue
    .line 7470
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 7471
    :cond_0
    const-string v0, "Camera"

    const-string v1, "mCameraDevice or mParameters is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7528
    :cond_1
    :goto_0
    return-void

    .line 7476
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    if-eqz v0, :cond_1

    .line 7479
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getContrastDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 7481
    if-eqz v0, :cond_3

    .line 7484
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v1

    add-int/2addr v0, v1

    .line 7486
    const-string v1, "KEY_HUAWEI_CONTRAST"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7487
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7488
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 7492
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getBrightnessDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 7494
    if-eqz v0, :cond_4

    .line 7497
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getBrightnessStep()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v1

    add-int/2addr v0, v1

    .line 7500
    const-string v1, "KEY_HUAWEI_BRIGHTNESS"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7501
    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 7502
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7507
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getSaturationDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 7509
    if-eqz v0, :cond_5

    .line 7512
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getSaturationStep()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v1

    add-int/2addr v0, v1

    .line 7514
    const-string v1, "KEY_HUAWEI_SATURATION"

    invoke-static {v1}, Lcom/android/hwcamera/Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7515
    if-eqz v1, :cond_5

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7516
    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7527
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0
.end method

.method public restartPreview()Z
    .locals 2

    .prologue
    .line 6098
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6103
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 6099
    :catch_0
    move-exception v0

    .line 6100
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->showCameraErrorAndFinish()V

    .line 6101
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 8750
    const-string v0, "Camera"

    const-string v1, "invoke setAutoFocusMoveCallback!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8751
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 8752
    return-void
.end method

.method public setCameraParameters(I)V
    .locals 3
    .parameter

    .prologue
    .line 6997
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 6998
    const-string v0, "Camera"

    const-string v1, "TODO: avoid NullPointerException from doFaceFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7027
    :goto_0
    return-void

    .line 7002
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 7003
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraParameters begine, get parameter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7005
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 7006
    const-string v0, "TAG"

    const-string v1, "mParameters==null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7011
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 7012
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersInitialize()V

    .line 7015
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 7016
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersZoom()V

    .line 7019
    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    .line 7020
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersPreference()V

    .line 7022
    :cond_4
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    .line 7023
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->updateCameraParametersFocus()V

    .line 7025
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 7026
    const-string v0, "Camera"

    const-string v1, "setCameraParameters end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDisplayOrientation()V
    .locals 2

    .prologue
    .line 6121
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    .line 6122
    iget v0, p0, Lcom/android/hwcamera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    .line 6123
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setDisplayOrientation(I)V

    .line 6124
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 6125
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v1, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setDisplayOrientation(I)V

    .line 6127
    :cond_0
    return-void
.end method

.method public setFaceArea(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p1, area:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1921
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1924
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 8488
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->setCameraParameters(I)V

    .line 8489
    return-void
.end method

.method public setOrientationInvokeAfterCaptureEx(I)V
    .locals 3
    .parameter

    .prologue
    .line 4113
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 4114
    if-nez v0, :cond_0

    .line 4140
    :goto_0
    return-void

    .line 4117
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4118
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4119
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4120
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4122
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 4131
    :sswitch_0
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 4133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 4124
    :sswitch_1
    const/16 v1, 0x5e

    invoke-virtual {v0, v2, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 4125
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 4122
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 6107
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Flow] setPreviewDisplay holder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6108
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 6109
    const-string v0, "Camera"

    const-string v1, "setPreviewDisplay mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    :goto_0
    return-void

    .line 6113
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6114
    :catch_0
    move-exception v0

    .line 6115
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->closeCamera()V

    .line 6116
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c0049

    const v4, 0x7f0c0048

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 8418
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    .line 8419
    iput-boolean p1, p0, Lcom/android/hwcamera/Camera;->mGpsSignalState:Z

    .line 8420
    if-eqz p1, :cond_0

    .line 8421
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 8422
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8423
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8424
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8431
    :goto_0
    return-void

    .line 8426
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8427
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8428
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8429
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->showGpsAnimation()V

    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 8293
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mShowProcess:Z

    if-nez v0, :cond_1

    .line 8300
    :cond_0
    :goto_0
    return-void

    .line 8296
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 8298
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public smileCapture(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 8261
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsSmileCaptureState:Z

    if-nez v0, :cond_1

    .line 8263
    iput v4, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    .line 8290
    :cond_0
    :goto_0
    return-void

    .line 8266
    :cond_1
    const/16 v0, 0x32

    if-lt p1, v0, :cond_3

    .line 8267
    const v0, 0x7f02011c

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    .line 8268
    iget v0, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 8269
    iget v0, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    goto :goto_0

    .line 8271
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 8272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/Camera;->mLastSmileCapTime:J

    .line 8273
    iput v4, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    .line 8274
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->doSnap()V

    goto :goto_0

    .line 8279
    :cond_3
    const/16 v0, 0x28

    if-lt p1, v0, :cond_4

    .line 8280
    const v0, 0x7f02011b

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    .line 8281
    iput v4, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    goto :goto_0

    .line 8282
    :cond_4
    const/16 v0, 0x14

    if-lt p1, v0, :cond_5

    .line 8283
    const v0, 0x7f02011a

    invoke-direct {p0, v0}, Lcom/android/hwcamera/Camera;->setSmileIcon(I)V

    .line 8284
    iput v4, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    goto :goto_0

    .line 8286
    :cond_5
    iput v4, p0, Lcom/android/hwcamera/Camera;->mSmileRepeateCount:I

    .line 8288
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startContiniousAutoFocus()V
    .locals 3

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1913
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1918
    :goto_0
    return-void

    .line 1916
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mAFController:Lcom/android/hwcamera/CameraAutoFocusController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraAutoFocusController;->resume()V

    goto :goto_0
.end method

.method public startFaceDetection(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1878
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mParametersManager:Lcom/android/hwcamera/ParametersManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/ParametersManager;->getFaceDecetionValue()Ljava/lang/String;

    move-result-object v0

    .line 1879
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1883
    invoke-static {}, Lcom/android/hwcamera/Util;->startFaceDetection()V

    .line 1884
    invoke-static {v2}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1885
    if-eqz p1, :cond_0

    .line 1886
    invoke-static {v2}, Lcom/android/hwcamera/Util;->setSmileDetection(Z)V

    goto :goto_0
.end method

.method public startFaceDetectionUI()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1867
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/FaceView;

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    .line 1868
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 1869
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/FaceView;->setVisibility(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v3, p0, Lcom/android/hwcamera/Camera;->mDisplayOrientation:I

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/FaceView;->setDisplayOrientation(I)V

    .line 1871
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/hwcamera/Camera;->mCameraId:I

    aget-object v0, v0, v3

    .line 1872
    iget-object v3, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/hwcamera/hwui/FaceView;->setMirror(Z)V

    .line 1873
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->resume()V

    .line 1874
    invoke-direct {p0}, Lcom/android/hwcamera/Camera;->switchPreviewSize()V

    .line 1875
    return-void

    :cond_0
    move v0, v2

    .line 1872
    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 1899
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->setBlinkDetection(Z)V

    .line 1900
    invoke-static {}, Lcom/android/hwcamera/Util;->stopFaceDetection()V

    .line 1901
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1902
    return-void
.end method

.method public stopFaceDetectionUI()V
    .locals 2

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->resetFaceCount()V

    .line 1893
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/FaceView;->clear()V

    .line 1894
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFaceView:Lcom/android/hwcamera/hwui/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FaceView;->setVisibility(I)V

    .line 1896
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6241
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_1

    .line 6242
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mHWExtCameraHandler:Lcom/android/hwcamera/HWExtCameraHandler;

    invoke-virtual {v0}, Lcom/android/hwcamera/HWExtCameraHandler;->removeMessage()V

    .line 6243
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->stopFaceDetection()V

    .line 6244
    iget v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    if-eqz v0, :cond_0

    .line 6245
    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 6246
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 6247
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 6248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 6249
    const-string v0, "Camera"

    const-string v2, "[Flow] Preview stopped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6250
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mStopPreviewLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 6251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->onPreviewStopped()V

    .line 6259
    return-void

    .line 6251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 6254
    :cond_1
    iput v1, p0, Lcom/android/hwcamera/Camera;->mCameraState:I

    .line 6255
    const-string v0, "Camera"

    const-string v1, "Fatal error!Stop preview but mCameraDevice is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updatePicturesRemaining()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8004
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8005
    if-nez v0, :cond_0

    .line 8019
    :goto_0
    return-void

    .line 8009
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    if-gez v1, :cond_1

    .line 8010
    iput v3, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 8013
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    const/16 v2, 0x63

    if-le v1, v2, :cond_2

    .line 8014
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8016
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8017
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateRemaining()V
    .locals 6

    .prologue
    .line 4258
    .line 4259
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 4260
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsInternalStorageExist:Z

    if-nez v1, :cond_1

    .line 4261
    const/4 v0, 0x1

    .line 4265
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 4266
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 4271
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStorage()(M) :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/Camera;->checkRemaining(J)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    .line 4273
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->updatePicturesRemaining()V

    .line 4274
    return-void

    .line 4262
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/Camera;->mIsExternalStorageExist:Z

    if-nez v1, :cond_0

    .line 4263
    const/4 v0, 0x0

    goto :goto_0

    .line 4268
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    goto :goto_1
.end method

.method public updateShutterButtonBackground(I)V
    .locals 3
    .parameter

    .prologue
    .line 4196
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_1

    .line 4198
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4199
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4211
    :goto_0
    return-void

    .line 4201
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4205
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4206
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4208
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateShutterButtonCenterRotation(I)V
    .locals 1
    .parameter

    .prologue
    .line 4214
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 4215
    if-eqz v0, :cond_0

    .line 4216
    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setOrientation(I)V

    .line 4218
    :cond_0
    return-void
.end method

.method public updateSwitcherImageResource(I)V
    .locals 2
    .parameter

    .prologue
    .line 4221
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    if-nez v0, :cond_0

    .line 4230
    :goto_0
    return-void

    .line 4225
    :cond_0
    rem-int/lit16 v0, p1, 0xb4

    if-nez v0, :cond_1

    .line 4226
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setImageResource(I)V

    goto :goto_0

    .line 4228
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setImageResource(I)V

    goto :goto_0
.end method

.method protected updateThumbnailButton(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1321
    const-string v0, "Camera"

    const-string v1, "[Flow] camera updateThumbnailButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_4

    .line 1327
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 1337
    invoke-virtual {p0}, Lcom/android/hwcamera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1342
    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget v0, p0, Lcom/android/hwcamera/Camera;->mPicturesRemaining:I

    if-ltz v0, :cond_5

    .line 1345
    :cond_3
    new-instance v0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/hwcamera/Camera$3;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/Camera$3;-><init>(Lcom/android/hwcamera/Camera;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;-><init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->start()V

    .line 1368
    :cond_4
    :goto_0
    return-void

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_4

    .line 1365
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/Camera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateZoomControlWhenSwitchCameraId(Z)V
    .locals 2
    .parameter "beforeSwitch"

    .prologue
    .line 7225
    iget v0, p0, Lcom/android/hwcamera/Camera;->mShootingMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 7226
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ZoomControl;->updateZoomControlWhenSwitchCameraId(Z)V

    .line 7228
    :cond_0
    return-void
.end method

.method public zoomStateSwitch()V
    .locals 1

    .prologue
    .line 1465
    iget-boolean v0, p0, Lcom/android/hwcamera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1466
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1467
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/Camera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->zoomStateSwitch()V

    goto :goto_0
.end method
