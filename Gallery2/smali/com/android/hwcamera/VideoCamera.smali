.class public Lcom/android/hwcamera/VideoCamera;
.super Lcom/android/hwcamera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;
.implements Lcom/android/hwcamera/FocusManager$Listener;
.implements Lcom/android/hwcamera/LocationManager$Listener;
.implements Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/hwcamera/Switcher$OnSwitchListener;
.implements Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;
.implements Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;,
        Lcom/android/hwcamera/VideoCamera$SuperPanelListener;,
        Lcom/android/hwcamera/VideoCamera$OpenCameraHandler;,
        Lcom/android/hwcamera/VideoCamera$FrameCallback;,
        Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/hwcamera/VideoCamera$ZoomListener;,
        Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;,
        Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/hwcamera/VideoCamera$MainHandler;,
        Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_HIGH_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/hwcamera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

.field private final REVIEW_TIME_DELAY:J

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private devlatch:Ljava/util/concurrent/CountDownLatch;

.field private isBackPressed:Z

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;

.field private mAwbLockSupported:Z

.field private mCameraDevice:Lcom/android/hwcamera/HwCamera;

.field private mCameraDisabled:Z

.field private mCameraId:I

.field private mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

.field private mCaptureTimeLapse:Z

.field private mColorEffectExitAnim:Landroid/view/animation/Animation;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mControlBarHeight:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mEffectType:I

.field private mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

.field private mEulaPreference:Landroid/content/SharedPreferences;

.field private mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

.field private mFlashSupported:Z

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Landroid/view/View;

.field private mFocusManager:Lcom/android/hwcamera/FocusManager;

.field private mFocusState:I

.field private final mFrameCallback:Lcom/android/hwcamera/VideoCamera$FrameCallback;

.field private mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

.field private mGalleryExHorScroll:Landroid/view/View;

.field private mGalleryExKEY:Ljava/lang/String;

.field private mGalleryExLinearLayout:Landroid/widget/LinearLayout;

.field private mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

.field private mGpsSignalState:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsExternalStorageExist:Z

.field private mIsGalleryExViewAdd:Z

.field private mIsHomeExit:Z

.field private mIsInnerlVideoCaptureIntent:Z

.field private mIsInternalStorageExist:Z

.field private mIsInvokeBarFirstInflate:Z

.field private mIsLowRecordVideo:Z

.field private mIsMute:Z

.field private mIsOnGalleryExState:Z

.field private mIsReview:Z

.field private mIsSupportPauseAndResume:Z

.field private mIsSwitchControlBar:Z

.field private mIsTouchFocusNeeded:Z

.field private mIsVideoCapture480P:Z

.field private mIsVideoCaptureIntent:Z

.field private mIsVideoIntentSupportSetVideoSize:Z

.field private mLastAspectRatio:D

.field private mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mLocationManager:Lcom/android/hwcamera/LocationManager;

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderPausing:Z

.field private mMediaRecorderRecording:Z

.field private mMeteringAreaSupported:Z

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOpenCameraHandler:Landroid/os/Handler;

.field mOpenCameraThread:Landroid/os/HandlerThread;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPauseButton:Lcom/android/hwcamera/ShutterButton;

.field private mPauseImageView:Lcom/android/hwcamera/RotateImageView;

.field private mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

.field mPausing:Z

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordVideoFileState:Z

.field private mRecordingPauseTime:J

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

.field private mRecordingTimeSubRect:Landroid/view/View;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTotalDiffTime:J

.field private mRecordingTotalTime:J

.field private mReviewOrientation:I

.field private mReviewPlayState:Z

.field private mReviewState:I

.field private mReviewTime:I

.field private mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

.field private mShutterButton:Lcom/android/hwcamera/ShutterButton;

.field private mSmoothZoomSupported:Z

.field private mStartPreviewFail:Z

.field private mStopVideoThreadFuture:Ljava/util/concurrent/Future;

.field private mStorageSpace:J

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

.field private mSwitchLayout:Landroid/widget/RelativeLayout;

.field private mSwitcher:Lcom/android/hwcamera/Switcher;

.field private mTargetTrackingSupported:Z

.field private mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

.field private mTargetZoomValue:I

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mThumbnail:Lcom/android/hwcamera/Thumbnail;

.field private mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

.field private mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

.field private mThumbnailView:Lcom/android/hwcamera/RotateImageView;

.field private mThumnailAnimation:Landroid/view/animation/Animation;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTwinkleAnimation:Landroid/animation/ValueAnimator;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFps:I

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

.field private mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

.field private mZoomControlListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

.field private final mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

.field private mZoomMax:I

.field mZoomRatios:[F

.field private mZoomSeekBar:Landroid/widget/SeekBar;

.field private mZoomState:I

.field private mZoomValue:I

.field private mZoomWithoutMDP:Z

.field private mZooming:Z

.field private preUpdateThumbnailPriority:I

.field private updateThumbnailPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 461
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 463
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 465
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 468
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_HIGH_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 472
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 475
    new-instance v0, Lcom/android/hwcamera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/hwcamera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    .line 478
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "3gp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "mp4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->OUTPUT_FORMAT_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const-string v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->AUDIO_ENCODER_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 498
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x780

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xe4e1c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x989680

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x6acfc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x4c4b40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3d0900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x57e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x927c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x27100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const v1, 0x4e200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 508
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x780

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0xc65d40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7a1200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x3c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x5b8d80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x3d0900

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1e8480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x57e40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x61a80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x222e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/DefaultHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    const v1, 0x4e200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/ActivityBase;-><init>()V

    .line 165
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->updateThumbnailPriority:I

    .line 166
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->preUpdateThumbnailPriority:I

    .line 236
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    .line 247
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsSwitchControlBar:Z

    .line 276
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 278
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCapture480P:Z

    .line 282
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    .line 283
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    .line 298
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 302
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mEffectType:I

    .line 305
    new-instance v0, Lcom/android/hwcamera/VideoCamera$FrameCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$FrameCallback;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFrameCallback:Lcom/android/hwcamera/VideoCamera$FrameCallback;

    .line 308
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 312
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    .line 322
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 325
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomWithoutMDP:Z

    .line 350
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    .line 352
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 356
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFps:I

    .line 358
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    .line 359
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    .line 365
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    .line 366
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 370
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    .line 371
    new-instance v0, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$ZoomChangeListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControlListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    .line 374
    new-instance v0, Lcom/android/hwcamera/VideoCamera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$ZoomListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

    .line 385
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    .line 393
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    .line 396
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 397
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 400
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrackingSupported:Z

    .line 412
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    .line 414
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 416
    new-instance v0, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mAutoFocusCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

    .line 417
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    .line 420
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    .line 423
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    .line 430
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    .line 435
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    .line 436
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->REVIEW_TIME_DELAY:J

    .line 443
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 447
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    .line 520
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 521
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 530
    new-instance v0, Lcom/android/hwcamera/VolumePlusButton;

    invoke-direct {v0}, Lcom/android/hwcamera/VolumePlusButton;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    .line 531
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsReview:Z

    .line 541
    new-instance v0, Lcom/android/hwcamera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$MainHandler;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 550
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    .line 553
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    .line 555
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 556
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 558
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    .line 562
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    .line 569
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoIntentSupportSetVideoSize:Z

    .line 574
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsTouchFocusNeeded:Z

    .line 587
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z

    .line 590
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->isBackPressed:Z

    .line 602
    new-instance v0, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mAutoFocusMoveCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;

    .line 929
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1710
    new-instance v0, Lcom/android/hwcamera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$3;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2390
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 3092
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mLastAspectRatio:D

    .line 4128
    new-instance v0, Lcom/android/hwcamera/VideoCamera$10;

    const-string v1, "CameraOpenThread"

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/VideoCamera$10;-><init>(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraThread:Landroid/os/HandlerThread;

    .line 5880
    return-void
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/hwcamera/VideoCamera;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/hwcamera/VideoCamera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showConfirmGpsDialog()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showEulaDialog()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/hwcamera/VideoCamera;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->isVideoQualitySupport(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/hwcamera/VideoCamera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->galleryExStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->isBackPressed:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExInit()V

    return-void
.end method

.method static synthetic access$1201(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/hwcamera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->doSwitchCamera()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraUI()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isDisplayStateFromThirdParty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->preUpdateThumbnailPriority:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->preUpdateThumbnailPriority:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateStopRecordingUI()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/hwcamera/VideoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->doAfterStopVideoRecording(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/ZoomControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/Thumbnail;)Lcom/android/hwcamera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/RotateImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseImageView:Lcom/android/hwcamera/RotateImageView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resumeVideoRecording()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/hwcamera/VideoCamera;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/hwcamera/VideoCamera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/hwcamera/VideoCamera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->hideReviewUI()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/hwcamera/VideoCamera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/hwcamera/VideoCamera;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->stopReviewIfNeed()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/hwcamera/VideoCamera;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/HwCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/hwcamera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomWithoutMDP:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/hwcamera/VideoCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/hwcamera/VideoCamera;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExClose()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    return v0
.end method

.method static synthetic access$7000(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    return p1
.end method

.method static synthetic access$7100(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$7302(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$7400(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$7402(Lcom/android/hwcamera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$7500(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/hwcamera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/Switcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/VolumePlusButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeZoom()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/RotateLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/hwcamera/VideoCamera;)Landroid/media/CamcorderProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/hwcamera/VideoCamera;Landroid/media/CamcorderProfile;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->isNeedStereo(Landroid/media/CamcorderProfile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/android/hwcamera/VideoCamera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setAudioParamForStero(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->doStopVideoRecording()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$8801(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/android/hwcamera/VideoCamera;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/hwcamera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getTotalRecordingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$9204(Lcom/android/hwcamera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->updateThumbnailPriority:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->updateThumbnailPriority:I

    return v0
.end method

.method static synthetic access$9300(Lcom/android/hwcamera/VideoCamera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/PreviewFrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restoreParameterToDefault()V

    return-void
.end method

.method static synthetic access$9702(Lcom/android/hwcamera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->onSharedPreferencesChanged()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method private addRecordingTimeSubRectRules(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4451
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeSubRect:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4452
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4454
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 4455
    const/4 p1, 0x0

    .line 4459
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4523
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeSubRect:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4524
    return-void

    .line 4462
    :sswitch_0
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4463
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4464
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4465
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4468
    :sswitch_1
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4469
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4470
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4471
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4474
    :sswitch_2
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4475
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4476
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4477
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4480
    :sswitch_3
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4481
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4482
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4483
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4488
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 4489
    const/16 p1, 0x10e

    .line 4494
    :cond_2
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 4497
    :sswitch_4
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4498
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4499
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4500
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4503
    :sswitch_5
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4504
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4505
    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4506
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4509
    :sswitch_6
    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4510
    invoke-virtual {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4511
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4512
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 4515
    :sswitch_7
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4516
    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4517
    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4518
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_0

    .line 4459
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_0
    .end sparse-switch

    .line 4494
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_5
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_7
        0x168 -> :sswitch_4
    .end sparse-switch
.end method

.method private addVideoToMediaStore(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3859
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 3860
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3861
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3864
    iget-wide v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalTime:J

    .line 3867
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 3868
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_0

    .line 3869
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v2

    .line 3871
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3880
    :goto_0
    :try_start_0
    const-string v3, "_data = ?"

    .line 3881
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_data"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3882
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 3884
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-lez v0, :cond_5

    .line 3887
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3888
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3894
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3901
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3910
    if-eqz v2, :cond_1

    .line 3911
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3914
    :cond_1
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    :cond_2
    :goto_3
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3918
    return-void

    .line 3873
    :cond_3
    const-string v0, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video duration <= 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3890
    :catch_0
    move-exception v0

    .line 3891
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3903
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 3906
    :goto_4
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 3907
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3910
    if-eqz v0, :cond_4

    .line 3911
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3914
    :cond_4
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3896
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 3910
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_6

    .line 3911
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3914
    :cond_6
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 3910
    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    .line 3903
    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_4
.end method

.method private checkStorageForFirstInit()V
    .locals 5

    .prologue
    .line 1760
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1763
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "memorycard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1767
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_1

    .line 1768
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1769
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1770
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1774
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_save_location_key"

    const v2, 0x7f0e0206

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1777
    const/4 v2, 0x0

    .line 1778
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    .line 1784
    :goto_0
    const-wide/32 v3, 0x1400000

    cmp-long v0, v0, v3

    if-gez v0, :cond_4

    .line 1787
    if-nez v2, :cond_3

    .line 1788
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1799
    :goto_1
    return-void

    .line 1780
    :cond_2
    const/4 v2, 0x1

    .line 1781
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    goto :goto_0

    .line 1790
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1

    .line 1793
    :cond_4
    if-eqz v2, :cond_5

    .line 1794
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_1

    .line 1796
    :cond_5
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3601
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3602
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3603
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 3607
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3175
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mStopVideoThreadFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 3180
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mStopVideoThreadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3186
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 3187
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :goto_1
    return-void

    .line 3181
    :catch_0
    move-exception v0

    .line 3182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3191
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    .line 3192
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEffectsRecorder:Lcom/android/hwcamera/EffectsRecorder;

    if-eqz v0, :cond_2

    .line 3195
    :cond_2
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mEffectType:I

    .line 3196
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->release()V

    .line 3197
    const-string v0, "videocamera"

    const-string v1, "[Flow] camera release!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3199
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    .line 3200
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    goto :goto_1
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 5712
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 5714
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5718
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 5720
    :cond_0
    return-void

    .line 5715
    :catch_0
    move-exception v0

    .line 5716
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private collapseCameraControls()Z
    .locals 4

    .prologue
    const v3, 0x7f0c00cb

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5800
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v2, v0, :cond_1

    .line 5801
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5830
    :cond_0
    :goto_0
    return v0

    .line 5809
    :cond_1
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v2, :cond_2

    .line 5810
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    goto :goto_0

    .line 5813
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_5

    .line 5814
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5815
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 5817
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5818
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 5820
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5821
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 5826
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    .line 5830
    goto :goto_0
.end method

.method private collapseCameraControls(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c00cb

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5762
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v2, v0, :cond_1

    .line 5763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5764
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5795
    :cond_0
    :goto_0
    return v0

    .line 5769
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 5770
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 5774
    goto :goto_0

    .line 5777
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_6

    .line 5778
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5779
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 5781
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5782
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 5784
    :cond_5
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5785
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 5790
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    .line 5795
    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 5697
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hw_video_record_format"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getHwConfigStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5698
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5699
    const-string v0, ".3gp"

    .line 5706
    :goto_0
    return-object v0

    .line 5700
    :cond_0
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5701
    const-string v0, ".mp4"

    goto :goto_0

    .line 5703
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 5704
    const-string v0, ".mp4"

    goto :goto_0

    .line 5706
    :cond_2
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 5689
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5690
    const-string v0, "video/mp4"

    .line 5692
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 1027
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1028
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0e01d0

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private delayedOnResume()V
    .locals 4

    .prologue
    .line 3056
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3058
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3059
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3060
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3061
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3062
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3063
    new-instance v1, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3064
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3066
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$7;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$7;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3072
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3073
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton(Z)V

    .line 3075
    :cond_0
    return-void
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3933
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3934
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 3935
    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 3936
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3937
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3938
    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 3942
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 3944
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3947
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3949
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3950
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    :cond_0
    return-void
.end method

.method private doAfterStopVideoRecording(Z)V
    .locals 2
    .parameter "valid"

    .prologue
    .line 2446
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2447
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_1

    .line 2448
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    .line 2474
    :cond_0
    :goto_0
    return-void

    .line 2450
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 2452
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v0, :cond_0

    .line 2453
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 2458
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    .line 2461
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 2464
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showVideoFrame()V

    .line 2465
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v0, :cond_0

    .line 2466
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 2467
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2469
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 3587
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3589
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3590
    const/4 v0, -0x1

    .line 3591
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3595
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 3596
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->finish()V

    .line 3597
    return-void

    .line 3593
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private doStopVideoRecording()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    .line 4688
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-nez v0, :cond_1

    .line 4744
    :cond_0
    :goto_0
    return-void

    .line 4695
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    move-wide v3, v5

    .line 4721
    :goto_1
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 4722
    const-string v7, "videocamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting current video filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    .line 4726
    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/VideoCamera;->addVideoToMediaStore(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4735
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    .line 4737
    :goto_2
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 4739
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_0

    .line 4740
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    .line 4741
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4706
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 4707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v3, v7

    iget-wide v7, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    sub-long/2addr v3, v7

    iput-wide v3, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalTime:J

    .line 4708
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingPauseTime:J

    .line 4709
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    .line 4712
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 4713
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 4714
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 4715
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 4716
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_5

    .line 4717
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getCameraRotation()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move v0, v2

    .line 4719
    goto :goto_1

    .line 4728
    :catch_0
    move-exception v0

    .line 4729
    :try_start_2
    const-string v3, "videocamera"

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4730
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 4731
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 4732
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 4733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4735
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    throw v0
.end method

.method private doSwitchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3965
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3967
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    if-eqz v0, :cond_1

    .line 3968
    const-string v0, "off"

    .line 3972
    :goto_0
    const-string v2, "pref_camera_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3973
    const-string v2, "pref_video_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3974
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3977
    invoke-direct {p0, v4, v4}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 3979
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 3980
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_2

    .line 3981
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 3987
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 3989
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_sound_state_key"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3990
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3991
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    .line 3997
    :goto_2
    iput v4, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 3999
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v1, p0, v2}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 4000
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 4002
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4003
    const-string v2, "pref_camera_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4004
    const-string v2, "pref_video_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4005
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4008
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 4010
    new-instance v0, Lcom/android/hwcamera/VideoCamera$8;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$8;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4018
    const-string v0, "videocamera"

    const-string v1, "[Flow] Camera switched !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    new-instance v0, Lcom/android/hwcamera/VideoCamera$9;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$9;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4034
    return-void

    .line 3970
    :cond_1
    const-string v0, "on"

    goto :goto_0

    .line 3983
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getThumbnail()V

    goto :goto_1

    .line 3993
    :cond_3
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    goto :goto_2
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 5241
    const/4 v0, 0x0

    return v0
.end method

.method private ensureCameraDevice()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3204
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 3209
    :try_start_0
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/hwcamera/HwCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/hwcamera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3220
    const-string v0, "videocamera"

    const-string v1, "[Flow] camera open!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_0
    :goto_0
    return-void

    .line 3210
    :catch_0
    move-exception v0

    .line 3211
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    .line 3212
    const-string v0, "videocamera"

    const-string v1, "camera hardware open failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3214
    :catch_1
    move-exception v0

    .line 3215
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    .line 3216
    const-string v0, "videocamera"

    const-string v1, "camera hardware disabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;
    .locals 2
    .parameter

    .prologue
    .line 4175
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4176
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4177
    const-string v1, "pref_camera_videosize_key"

    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 4181
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4182
    const-string v0, "pref_camera_videosize_key"

    invoke-static {p1, v0}, Lcom/android/hwcamera/CameraSettings;->removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    .line 4185
    :cond_1
    return-object p1
.end method

.method private finishRecorderAndCloseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3228
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_3

    .line 3230
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 3232
    invoke-direct {p0, v1, v1}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 3234
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showAlert()V

    .line 3253
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 3254
    return-void

    .line 3238
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    goto :goto_0

    .line 3245
    :cond_3
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v0, v2, :cond_1

    .line 3249
    invoke-direct {p0, v1, v1}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    goto :goto_0
.end method

.method private flashModeInit()V
    .locals 3

    .prologue
    .line 1898
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 1899
    new-instance v1, Lcom/android/hwcamera/hwui/FlashImageView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/FlashImageView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    .line 1900
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 1902
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/hwui/FlashImageView;->setFlashMocdChangeListener(Lcom/android/hwcamera/hwui/FlashImageView$OnFlashModeChangeListener;)V

    .line 1905
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 1907
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    .line 1910
    :cond_0
    return-void
.end method

.method private flashModeUpdate()V
    .locals 2

    .prologue
    .line 1914
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    if-nez v0, :cond_0

    .line 1915
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    :goto_0
    return-void

    .line 1919
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 1920
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashImageView:Lcom/android/hwcamera/hwui/FlashImageView;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/FlashImageView;->init(I)V

    goto :goto_0
.end method

.method private galleryExClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2018
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 2019
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v0, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 2022
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setControlBarVisibility(I)V

    .line 2023
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 2024
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    .line 2025
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2027
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    .line 2029
    return-void
.end method

.method private galleryExEnd()V
    .locals 3

    .prologue
    const v2, 0x7f0c0056

    const/4 v1, 0x0

    .line 1997
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 1998
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    .line 2000
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2001
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mColorEffectExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2003
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideInControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 2004
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 2015
    :goto_0
    return-void

    .line 2007
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setControlBarVisibility(I)V

    .line 2008
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 2009
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setFlashSwitchIconVisibility(I)V

    .line 2010
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2012
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    goto :goto_0
.end method

.method private galleryExInit()V
    .locals 4

    .prologue
    .line 1974
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setSuperPanelVisibility(I)V

    .line 1976
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    if-nez v0, :cond_0

    .line 1977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsGalleryExViewAdd:Z

    .line 1978
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1979
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1980
    new-instance v2, Lcom/android/hwcamera/hwui/GalleryEx;

    const v3, 0x7f040011

    invoke-direct {v2, p0, v1, v0, v3}, Lcom/android/hwcamera/hwui/GalleryEx;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    .line 1981
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 1982
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 1983
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getHorizontalScrollView()Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExHorScroll:Landroid/view/View;

    .line 1984
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    .line 1988
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 1989
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 1990
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->init(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 1992
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1993
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1994
    return-void

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private galleryExStart(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1959
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExKEY:Ljava/lang/String;

    .line 1960
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    .line 1961
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 1964
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1968
    :cond_1
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideOutControlBar(Landroid/view/View;Landroid/view/View;)V

    .line 1970
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 7
    .parameter

    .prologue
    .line 3821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3822
    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 3824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3825
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 3827
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3828
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3829
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3834
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/hwcamera/Storage;->getCameraPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 3835
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 3836
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3839
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3841
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3842
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_1

    .line 3843
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 3848
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    if-eqz v1, :cond_2

    .line 3849
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3850
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3853
    :cond_2
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    return-void

    .line 3831
    :catch_0
    move-exception v5

    .line 3832
    const-string v5, "videocamera"

    const-string v6, "make camera path dir error!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 4748
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
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

    .line 6149
    if-nez p1, :cond_0

    .line 6150
    const/4 v0, 0x0

    .line 6191
    :goto_0
    return-object v0

    .line 6159
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6160
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6161
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 6162
    const/16 v0, 0x2bc

    .line 6173
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/hwcamera/VideoCamera;->getPreviewSizeUnderMaxValueWithRatio(Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 6175
    if-nez v1, :cond_2

    .line 6176
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/hwcamera/VideoCamera;->getPreviewSizeUnderMaxValueWithRatio(Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 6179
    :cond_2
    if-nez v1, :cond_4

    .line 6180
    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/VideoCamera;->getPreviewSizeUnderMaxValueWithoutRatio(Ljava/util/List;I)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6183
    :goto_1
    if-nez v0, :cond_3

    .line 6184
    invoke-direct {p0, p1, v3}, Lcom/android/hwcamera/VideoCamera;->getPreviewSizeUnderMaxValueWithoutRatio(Ljava/util/List;I)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 6188
    :cond_3
    const-string v1, "videocamera"

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

.method private getPreviewSizeUnderMaxValueWithRatio(Ljava/util/List;DI)Landroid/hardware/Camera$Size;
    .locals 10
    .parameter
    .parameter
    .parameter
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
    const/4 v4, 0x0

    .line 6198
    .line 6199
    if-nez p1, :cond_1

    .line 6236
    :cond_0
    return-object v4

    .line 6203
    :cond_1
    const-wide v2, 0x7fefffffffffffffL

    .line 6211
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6212
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6214
    if-gtz v0, :cond_4

    .line 6216
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6217
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 6219
    :goto_0
    const-string v0, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "targetHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
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

    .line 6224
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v6, p4, :cond_2

    .line 6225
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 6226
    sub-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fa999999999999aL

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_2

    .line 6228
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_3

    .line 6230
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_2
    move-object v4, v0

    .line 6232
    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_2

    :cond_4
    move v1, v0

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

    .line 6243
    if-nez p1, :cond_1

    .line 6278
    :cond_0
    return-object v4

    .line 6255
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 6256
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6258
    if-gtz v0, :cond_4

    .line 6260
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 6261
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 6263
    :goto_0
    const-string v0, "videocamera"

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

    .line 6266
    const-string v0, "videocamera"

    const-string v2, "No preview size match the aspect ratio"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6267
    const-wide v2, 0x7fefffffffffffffL

    .line 6268
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

    .line 6269
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    if-ge v6, p2, :cond_2

    .line 6270
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v2

    if-gez v6, :cond_3

    .line 6272
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

.method private getSupportedVideoQuality()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x2

    .line 5432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5434
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5435
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5437
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5438
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5440
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5441
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5443
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5444
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5446
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hw_MMS_unsupported"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5448
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5449
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5453
    :cond_4
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5454
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5457
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5458
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5460
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5461
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5463
    :cond_7
    return-object v0
.end method

.method private getThumbnail()V
    .locals 2

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 4769
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$11;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$11;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4788
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 4852
    long-to-double v2, p1

    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 4853
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private getTotalRecordingTime()J
    .locals 8

    .prologue
    .line 5606
    :try_start_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 5607
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5608
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3f88f5c3

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v3, 0x8

    div-long v3, v0, v3

    .line 5609
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v0, v5

    div-long/2addr v0, v3

    .line 5610
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recording time videoBitRate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audioBitRate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bitrate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recording time stat.getAvailableBlocks() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getBlockSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recording time remaining time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5621
    :goto_0
    return-wide v0

    .line 5616
    :catch_0
    move-exception v0

    .line 5620
    const-string v1, "videocamera"

    const-string v2, "Fail to access sdcard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5621
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1523
    :goto_0
    return-object v0

    .line 1518
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 1519
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    .line 1520
    const/4 v0, 0x0

    array-length v4, v1

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 1521
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x42c8

    div-float/2addr v0, v5

    aput v0, v1, v2

    .line 1520
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1523
    goto :goto_0
.end method

.method private hideAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4609
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4610
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 4611
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 4612
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    if-nez v0, :cond_0

    .line 4613
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 4614
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4617
    :cond_0
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 4620
    :cond_1
    return-void
.end method

.method private hideReviewUI()V
    .locals 2

    .prologue
    .line 6282
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6283
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6284
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6287
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eqz v0, :cond_1

    .line 6288
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 6289
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_1

    .line 6290
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    .line 6294
    :cond_1
    return-void
.end method

.method private initThumbnailButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4791
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    .line 4792
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->enableFilter(Z)V

    .line 4793
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 4798
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 4800
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton()V

    .line 4803
    :cond_0
    return-void
.end method

.method private initTwinkleAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 4858
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    .line 4859
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4860
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 4861
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 4862
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$13;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/VideoCamera$13;-><init>(Lcom/android/hwcamera/VideoCamera;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4872
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4873
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$14;

    invoke-direct {v1, p0, p1}, Lcom/android/hwcamera/VideoCamera$14;-><init>(Lcom/android/hwcamera/VideoCamera;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4884
    return-void

    .line 4858
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5895
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 5896
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5898
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5899
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusAreaSupported:Z

    .line 5900
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMeteringAreaSupported:Z

    .line 5901
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mAeLockSupported:Z

    .line 5902
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mAwbLockSupported:Z

    .line 5912
    :goto_0
    return-void

    .line 5906
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusAreaSupported:Z

    .line 5909
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMeteringAreaSupported:Z

    .line 5910
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mAeLockSupported:Z

    .line 5911
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mAwbLockSupported:Z

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5906
    goto :goto_1

    :cond_2
    move v1, v2

    .line 5909
    goto :goto_2
.end method

.method private initializeFeatures(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "ro.config.hw_videocamera_caf"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    .line 1454
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_videocamera_touchfocus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsTouchFocusNeeded:Z

    .line 1456
    return-void
.end method

.method private initializeHeadUpDisplay()V
    .locals 4

    .prologue
    .line 1802
    new-instance v0, Lcom/android/hwcamera/CameraSettings;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1804
    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/CameraSettings;->getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 1805
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/hwcamera/PreferenceGroup;)Lcom/android/hwcamera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 1809
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setSupportedTargetTrackingState()V

    .line 1810
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->targetTrakingModeInit()V

    .line 1812
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->superPanelInit()V

    .line 1813
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1816
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1819
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1821
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeCapabilities()V

    .line 1825
    const/4 v0, 0x1

    .line 1826
    const-string v1, "ro.camera.sound.forced"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1827
    const/4 v0, 0x0

    .line 1829
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1, p0, v0}, Lcom/android/hwcamera/FocusManager;->initializeSoundPlayer(Landroid/content/Context;Z)V

    .line 1842
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getZoomRatios()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomRatios:[F

    .line 1843
    return-void
.end method

.method private initializeMiscControls()V
    .locals 1

    .prologue
    .line 6118
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/PreviewFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6120
    return-void
.end method

.method private initializeRecorder()V
    .locals 14

    .prologue
    const-wide/32 v5, 0x445c0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 3632
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 3779
    :cond_0
    :goto_0
    return-void

    .line 3636
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 3637
    const-string v0, "videocamera"

    const-string v1, "Surface holder is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3641
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3642
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 3645
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeVideoFileDescriptor()V

    .line 3646
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 3647
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 3648
    if-eqz v0, :cond_3

    .line 3650
    :try_start_0
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "rw"

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3652
    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3658
    :cond_3
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3661
    :goto_2
    iget-boolean v7, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    if-nez v7, :cond_4

    .line 3662
    invoke-direct {p0, v4}, Lcom/android/hwcamera/VideoCamera;->setCafEnable(Z)V

    .line 3670
    :cond_4
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3671
    const-string v7, "videocamera"

    const-string v8, "The previous  media recoder has\'t stop!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->stop()V

    .line 3673
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 3676
    :cond_5
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 3679
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v7}, Lcom/android/hwcamera/HwCamera;->unlock()V

    .line 3680
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v8}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 3681
    iget-boolean v7, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v7, :cond_6

    .line 3682
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3684
    :cond_6
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v12}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 3686
    iget-boolean v7, p0, Lcom/android/hwcamera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_7

    .line 3687
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v8, 0x408f400000000000L

    iget v10, p0, Lcom/android/hwcamera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 3690
    :cond_7
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v7, :cond_9

    .line 3693
    :try_start_1
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 3694
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0, v7}, Lcom/android/hwcamera/VideoCamera;->isNeedStereo(Landroid/media/CamcorderProfile;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3695
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 3696
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/hwcamera/VideoCamera;->setAudioParamForStero(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3704
    :cond_8
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v8, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 3707
    :cond_9
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v7}, Lcom/android/hwcamera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 3708
    if-eqz v7, :cond_a

    iget-boolean v8, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    if-eqz v8, :cond_a

    .line 3709
    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v7, v9

    invoke-static {v8, v7}, Lcom/android/hwcamera/Util;->setLocation(FF)V

    .line 3714
    :cond_a
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_c

    .line 3715
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 3722
    :goto_3
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 3725
    iget-wide v7, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    cmp-long v7, v7, v2

    if-nez v7, :cond_b

    .line 3726
    invoke-static {}, Lcom/android/hwcamera/Storage;->getAvailableSpace()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 3728
    :cond_b
    iget-wide v7, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    const-wide/32 v9, 0x300000

    add-long/2addr v7, v9

    const-wide/32 v9, 0x1400000

    sub-long/2addr v7, v9

    .line 3731
    cmp-long v9, v7, v2

    if-lez v9, :cond_0

    .line 3735
    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    cmp-long v2, v0, v7

    if-gez v2, :cond_d

    .line 3744
    :goto_4
    :try_start_2
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxFileSize : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3759
    :goto_5
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 3760
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 3761
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v12, :cond_e

    .line 3762
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 3767
    :goto_6
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 3770
    :try_start_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3777
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 3778
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 3653
    :catch_0
    move-exception v0

    .line 3655
    const-string v7, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3698
    :catch_1
    move-exception v0

    .line 3699
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 3700
    invoke-direct {p0, v4}, Lcom/android/hwcamera/VideoCamera;->setAudioParamForStero(Z)V

    goto/16 :goto_0

    .line 3717
    :cond_c
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v7}, Lcom/android/hwcamera/VideoCamera;->generateVideoFilename(I)V

    .line 3718
    iget-object v7, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3737
    :cond_d
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    if-ne v13, v0, :cond_10

    .line 3738
    cmp-long v0, v5, v7

    if-gez v0, :cond_10

    move-wide v0, v5

    .line 3739
    goto/16 :goto_4

    .line 3764
    :cond_e
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 3771
    :catch_2
    move-exception v0

    .line 3772
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3773
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 3774
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3746
    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_f
    move v0, v4

    goto :goto_6

    :cond_10
    move-wide v0, v7

    goto/16 :goto_4

    :cond_11
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private initializeZoom()V
    .locals 11

    .prologue
    const v10, 0x7f0c00cb

    const/4 v9, 0x0

    .line 1460
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomSeekBar:Landroid/widget/SeekBar;

    .line 1465
    new-instance v0, Lcom/android/hwcamera/hwui/ZoomControl;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    .line 1466
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    const v1, 0x7f0c00eb

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020032

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x7f0c00ef

    invoke-virtual {p0, v7}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/hwcamera/RotateImageView;

    const v8, 0x7f0c00ed

    invoke-virtual {p0, v8}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual/range {v0 .. v8}, Lcom/android/hwcamera/hwui/ZoomControl;->initZoomControlRes(Lcom/android/hwcamera/hwui/RotateLinearLayout;Landroid/widget/SeekBar;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/android/hwcamera/RotateImageView;Lcom/android/hwcamera/RotateImageView;)V

    .line 1474
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->initZoomControl()V

    .line 1475
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setOrientationEx(I)V

    .line 1478
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    .line 1479
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-smooth-zoom-support"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1481
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    .line 1484
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hw_videocamera_zoom_no_mdp"

    invoke-static {v0, v1, v9}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomWithoutMDP:Z

    .line 1489
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomMax(I)V

    .line 1490
    iput v9, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 1491
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 1492
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setSmoothZoomSupported(Z)V

    .line 1493
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControlListener:Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setOnZoomChangeListener(Lcom/android/hwcamera/hwui/ZoomControl$OnZoomChangedListener;)V

    .line 1494
    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 1496
    invoke-direct {p0, v9}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    .line 1500
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomListener:Lcom/android/hwcamera/VideoCamera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0
.end method

.method private isCaptureAvailable()Z
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 3457
    const/4 v0, 0x1

    .line 3458
    .local v0, reVal:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3459
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 3460
    const/4 v0, 0x0

    .line 3462
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsReview:Z

    if-eqz v1, :cond_3

    .line 3463
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsReview:Z

    .line 3464
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3465
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3467
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3468
    const/4 v0, 0x0

    .line 3470
    :cond_3
    return v0
.end method

.method private isDisplayStateFromThirdParty()Z
    .locals 2

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusAvailable()Z
    .locals 2

    .prologue
    .line 3445
    const/4 v0, 0x1

    .line 3446
    .local v0, reVal:Z
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExRoot:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3447
    const/4 v0, 0x0

    .line 3449
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3450
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsReview:Z

    .line 3451
    const/4 v0, 0x0

    .line 3453
    :cond_1
    return v0
.end method

.method private isFrontCamera()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5869
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v0, v2, v3

    .line 5870
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v1, :cond_0

    .line 5873
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInnerlVideoCaptureIntent()Z
    .locals 3

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "config_innerl_intent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isNeedStereo(Landroid/media/CamcorderProfile;)Z
    .locals 2
    .parameter "mProfile2"

    .prologue
    .line 3626
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStorageSpaceEnough()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 4217
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 4220
    invoke-static {}, Lcom/android/hwcamera/Storage;->getAvailableSpace()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    .line 4221
    iget-wide v1, p0, Lcom/android/hwcamera/VideoCamera;->mStorageSpace:J

    const-wide/32 v3, 0x1400000

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 4223
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    .line 4227
    :goto_0
    return v0

    :cond_0
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

    .line 4975
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

.method private isTouchFocusNeeded()Z
    .locals 1

    .prologue
    .line 5877
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsTouchFocusNeeded:Z

    return v0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 3582
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3583
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideoQualitySupport(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5421
    .local p2, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5422
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5423
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5424
    const/4 v1, 0x1

    .line 5428
    :cond_0
    return v1

    .line 5422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 4762
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4763
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4764
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 4756
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4757
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4758
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4759
    return-void
.end method

.method private makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-nez v0, :cond_0

    .line 2862
    invoke-static {p0, p1, p2}, Lcom/android/hwcamera/hwui/RotateToast;->makeRotateText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/hwcamera/hwui/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 2869
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v2}, Lcom/android/hwcamera/ShutterButton;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/RotateToast;->setOrientationEx(II)V

    .line 2871
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->show()V

    .line 2872
    return-void

    .line 2864
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateToast;->setText(Ljava/lang/CharSequence;)V

    .line 2865
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/hwui/RotateToast;->setDuration(I)V

    goto :goto_0
.end method

.method private onSharedPreferencesChanged()V
    .locals 5

    .prologue
    .line 5246
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 5265
    :goto_0
    return-void

    .line 5247
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    monitor-enter v3

    .line 5248
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 5251
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 5264
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5253
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_video_gps_key"

    invoke-static {v2, v4}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v1

    .line 5255
    .local v1, recordLocation:Z
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 5258
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v2}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 5259
    .local v0, cameraId:I
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-eq v2, v0, :cond_2

    .line 5260
    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->switchCameraId(I)V

    .line 5264
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 5262
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resetCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onZoomValueChanged(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1571
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1572
    :cond_1
    const-string v0, "Zoom"

    const-string v1, "onZoomValueChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 1574
    const-string v0, "Zoom"

    const-string v1, "mSmoothZoomSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    if-eqz v0, :cond_2

    .line 1576
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I

    .line 1577
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    if-ne v0, v2, :cond_0

    .line 1578
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    goto :goto_0

    .line 1581
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1582
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mTargetZoomValue:I

    .line 1583
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->startSmoothZoom(I)V

    .line 1584
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    goto :goto_0

    .line 1587
    :cond_3
    const-string v0, "Zoom"

    const-string v1, "!mSmoothZoomSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 1589
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1590
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1593
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private pauseVideoRecording()V
    .locals 4

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 4350
    :goto_0
    return-void

    .line 4340
    :cond_0
    :try_start_0
    const-string v0, "pause"

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->invokePauseResumeMethodInMediaRecorder(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 4342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingPauseTime:J

    .line 4343
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalTime:J

    .line 4344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    .line 4345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4346
    :catch_0
    move-exception v0

    .line 4347
    const-string v1, "videocamera"

    const-string v2, "Could not pause media recorder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readVideoPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2876
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 2877
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v1, v5, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2881
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/android/hwcamera/VideoCamera;->isVideoQualitySupport(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2886
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2888
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2889
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2890
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2892
    if-nez v0, :cond_2

    .line 2894
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 2896
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCapture480P:Z

    move v0, v2

    .line 2920
    :cond_0
    :goto_1
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2921
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2923
    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 2927
    :goto_2
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 2930
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setBitrateAsSetted()V

    .line 2933
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-ne v0, v4, :cond_1

    .line 2934
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 2937
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_videocamera_review_key"

    const v2, 0x7f0e022c

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2939
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewTime:I

    .line 2940
    return-void

    .line 2899
    :cond_2
    if-ne v0, v3, :cond_3

    .line 2901
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 2903
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCapture480P:Z

    move v0, v3

    goto :goto_1

    .line 2908
    :cond_3
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 2910
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCapture480P:Z

    move v0, v4

    goto :goto_1

    .line 2914
    :cond_4
    iget-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_0

    .line 2915
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    .line 2916
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCapture480P:Z

    .line 2917
    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoIntentSupportSetVideoSize:Z

    goto :goto_1

    .line 2925
    :cond_5
    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->getVidoeDurationInMillis(I)I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 2

    .prologue
    .line 3782
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 3784
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->cleanupEmptyFile()V

    .line 3785
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 3786
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 3787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 3791
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    .line 3794
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->IS_FOCUS_MODE_CONTINUOUS_VIDEO:Z

    if-nez v0, :cond_2

    .line 3795
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setCafEnable(Z)V

    .line 3799
    :cond_2
    return-void
.end method

.method private resetCameraParameters()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5214
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v4, :cond_0

    .line 5237
    :goto_0
    return-void

    .line 5220
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 5221
    .local v0, size:Landroid/hardware/Camera$Size;
    const/4 v1, 0x1

    .line 5222
    .local v1, sizeChanged:Z
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v4, :cond_3

    .line 5223
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v4, v5, :cond_1

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v4, v5, :cond_2

    :cond_1
    move v1, v3

    .line 5228
    :goto_1
    if-eqz v1, :cond_6

    .line 5231
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 5232
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 5233
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 5223
    goto :goto_1

    .line 5226
    :cond_3
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoWidth:I

    if-ne v4, v5, :cond_4

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, p0, Lcom/android/hwcamera/VideoCamera;->mVideoHeight:I

    if-eq v4, v5, :cond_5

    :cond_4
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    .line 5235
    :cond_6
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 4751
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4752
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4753
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_0

    .line 2944
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 2949
    :goto_0
    return-void

    .line 2947
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mVideoHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mVideoWidth:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restartPreview()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1043
    :try_start_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPreview()V

    .line 1045
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z
    :try_end_0
    .catch Lcom/android/hwcamera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return v1

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, e:Lcom/android/hwcamera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showCameraErrorAndFinish()V

    goto :goto_0

    .line 1053
    .end local v0           #e:Lcom/android/hwcamera/CameraHardwareException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private restoreParameterToDefault()V
    .locals 3

    .prologue
    .line 5331
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreferenceGroup;->reloadValue()V

    .line 5333
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->targetTrakingModeUpdate()V

    .line 5336
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    .line 5337
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 5339
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "videotag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5342
    return-void
.end method

.method private restorePreferences()V
    .locals 4

    .prologue
    .line 5345
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 5383
    :goto_0
    return-void

    .line 5349
    :cond_0
    new-instance v0, Lcom/android/hwcamera/VideoCamera$15;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$15;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    .line 5372
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    .line 5373
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 5375
    :cond_1
    new-instance v1, Lcom/android/hwcamera/hwui/RotateDailog;

    const v2, 0x7f0e0137

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0138

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/hwcamera/hwui/RotateDailog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    .line 5379
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5380
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateDailog;->setParentView(Landroid/view/View;)V

    .line 5381
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->createPopupWindowEx()V

    .line 5382
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    goto :goto_0
.end method

.method private resumeVideoRecording()V
    .locals 6

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 4367
    :goto_0
    return-void

    .line 4357
    :cond_0
    :try_start_0
    const-string v0, "resume"

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->invokePauseResumeMethodInMediaRecorder(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 4359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 4360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    .line 4361
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingPauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    .line 4362
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVideoRecording mRecordingTotalDiffTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4363
    :catch_0
    move-exception v0

    .line 4364
    const-string v1, "videocamera"

    const-string v2, "Could not pause media recorder."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2058
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private saveLocationInit()V
    .locals 3

    .prologue
    .line 1733
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 1735
    invoke-static {}, Lcom/android/hwcamera/Storage;->isInternalStorageExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    .line 1737
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1739
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "memorycard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1741
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 1757
    :goto_0
    return-void

    .line 1747
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->isExternalStorageExist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    .line 1748
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1750
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1751
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1752
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_0

    .line 1756
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->checkStorageForFirstInit()V

    goto :goto_0
.end method

.method private seconds2Hours(J)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x3c

    const/4 v7, 0x2

    .line 5626
    div-long v0, p1, v8

    .line 5627
    div-long v2, v0, v8

    .line 5628
    mul-long v4, v2, v8

    sub-long v4, v0, v4

    .line 5629
    mul-long/2addr v0, v8

    sub-long v0, p1, v0

    .line 5631
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 5632
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v7, :cond_0

    .line 5633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5636
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 5637
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 5638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5640
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5641
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 5642
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 5643
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v7, :cond_2

    .line 5644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5647
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_3

    .line 5648
    const-string v0, "99:59:59"

    .line 5653
    :goto_0
    return-object v0

    .line 5651
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private setAudioParamForStero(Z)V
    .locals 4
    .parameter

    .prologue
    .line 3612
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3613
    const-string v1, ""

    .line 3614
    if-eqz p1, :cond_1

    .line 3615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stereo_record=on;stereo_record_mainmic_is_left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3622
    :goto_1
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3623
    return-void

    .line 3615
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 3618
    :cond_1
    const-string v1, "stereo_record=off"

    goto :goto_1
.end method

.method private setBitrateAsSetted()V
    .locals 3

    .prologue
    .line 5836
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hw_video_qulity_level"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5837
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_quality_level_key"

    const v2, 0x7f0e014f

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5839
    const-string v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5840
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_NORMAL_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 5847
    :cond_0
    :goto_0
    return-void

    .line 5842
    :cond_1
    const-string v1, "fine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5843
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    sget-object v0, Lcom/android/hwcamera/VideoCamera;->VIDEOQUALITY_BITRATE_FINE_TABLE:Lcom/android/hwcamera/DefaultHashMap;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0
.end method

.method private setCafEnable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3808
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 3809
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 3811
    if-eqz p1, :cond_1

    .line 3812
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3816
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3818
    :cond_0
    return-void

    .line 3814
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0e017f

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 4983
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4985
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    .line 4986
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    .line 4993
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 4994
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 4999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5000
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5001
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5005
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setBitrateAsSetted()V

    .line 5027
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0e017e

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5029
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 5030
    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5032
    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v1, v4, :cond_c

    .line 5033
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 5047
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_coloreffect_key"

    const v2, 0x7f0e0186

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5049
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5050
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 5053
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5054
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5055
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_whitebalance_key"

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5058
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5062
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    .line 5063
    if-eqz v1, :cond_4

    const-string v2, "off"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 5064
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 5067
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 5075
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_distortion_key"

    const v2, 0x7f0e0222

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5078
    invoke-static {v0}, Lcom/android/hwcamera/Util;->setRecordDistortionValue(Ljava/lang/String;)V

    .line 5082
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 5083
    const-string v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5084
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5088
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5089
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5093
    :cond_7
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5094
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "recording-hint"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5095
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5096
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 5099
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5100
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5101
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_steady_video_key"

    const v2, 0x7f0e0218

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5103
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5104
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5112
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1, v7}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5114
    if-nez v0, :cond_10

    .line 5116
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {p0, v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;I)V

    .line 5123
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_antibanding_key"

    const v2, 0x7f0e0259

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5125
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5126
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 5128
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5130
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5131
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5133
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5135
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mAutoFocusMoveCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusMoveCallback;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5140
    :cond_b
    :goto_4
    return-void

    .line 5035
    :cond_c
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5039
    :cond_d
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 5040
    if-nez v0, :cond_1

    .line 5041
    const v0, 0x7f0e0179

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    goto/16 :goto_0

    .line 5069
    :cond_e
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 5070
    if-nez v0, :cond_5

    .line 5071
    const-string v0, "auto"

    goto/16 :goto_1

    .line 5106
    :cond_f
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5119
    :cond_10
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 5120
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_3

    .line 5137
    :cond_11
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private setCameraUIButControlBar(I)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c0046

    const v3, 0x7f0c002a

    const/4 v2, 0x0

    .line 2478
    if-nez p1, :cond_1

    .line 2479
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideInPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 2480
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2481
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeIn(Landroid/view/View;)V

    .line 2489
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 2491
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 2496
    :cond_0
    return-void

    .line 2483
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->getHandle()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->slideOutPanelHandler(Landroid/view/View;Landroid/view/View;)V

    .line 2484
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 2485
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setControlBarVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 2040
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2041
    if-eqz v0, :cond_0

    .line 2042
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2044
    :cond_0
    return-void
.end method

.method private setFlashSwitchIconVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 2046
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2047
    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2050
    :cond_0
    return-void
.end method

.method private setIconsArrayPaddingBottom()V
    .locals 5

    .prologue
    const v4, 0x7f0c0046

    const/4 v3, 0x0

    .line 1847
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1849
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1860
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1861
    return-void

    .line 1851
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1854
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1855
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1857
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 2
    .parameter

    .prologue
    .line 2213
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2214
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2215
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2216
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2219
    :cond_0
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_5

    .line 2220
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2221
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2223
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_1

    .line 2224
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOrientationEx(I)V

    .line 2226
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_2

    .line 2227
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2230
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    if-eqz v0, :cond_3

    .line 2231
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGalleryExView:Lcom/android/hwcamera/hwui/GalleryEx;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/GalleryEx;->setOrientationEx(I)V

    .line 2236
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_4

    .line 2237
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2238
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 2243
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_5

    .line 2244
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ZoomControl;->setOrientationEx(I)V

    .line 2248
    :cond_5
    return-void
.end method

.method private setOrientationVidoInvokeAfterCapture(I)V
    .locals 3
    .parameter

    .prologue
    .line 2170
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 2171
    if-nez v0, :cond_0

    .line 2206
    :goto_0
    return-void

    .line 2174
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2175
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2176
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2177
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2179
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2195
    :sswitch_0
    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 2197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 2188
    :sswitch_1
    const/16 v1, 0x5e

    invoke-virtual {v0, v2, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 2189
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 2179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setSuperPanelVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setHandleVisiable(I)V

    .line 2055
    :cond_0
    return-void
.end method

.method private setSupportedTargetTrackingState()V
    .locals 3

    .prologue
    .line 1891
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_video_targettrackingmode_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 1892
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrackingSupported:Z

    .line 1893
    return-void

    .line 1892
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setZoomBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ZoomControl;->setVisibility(I)V

    .line 2036
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 4543
    invoke-direct {p0, v4}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    .line 4545
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showVideoFrame()V

    .line 4546
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    if-eqz v0, :cond_1

    .line 4547
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    if-eqz v0, :cond_0

    .line 4548
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsInvokeBarFirstInflate:Z

    .line 4550
    :cond_0
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/Util;->fadeOut(Landroid/view/View;)V

    .line 4551
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4552
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4553
    const v2, 0x7f040040

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4554
    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4555
    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4556
    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4557
    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4558
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4559
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 4560
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setOrientationVidoInvokeAfterCapture(I)V

    .line 4562
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 4565
    :cond_1
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1036
    .local v0, ress:Landroid/content/res/Resources;
    const v1, 0x7f0e0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e012a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/hwcamera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method private showConfirmGpsDialog()V
    .locals 2

    .prologue
    .line 5387
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const-string v1, "pref_video_gps_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->setKey(Ljava/lang/String;)V

    .line 5388
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 5389
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5390
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/GPSDailog;->creatGpsDialogBox(Landroid/view/ViewGroup;)V

    .line 5391
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 5392
    return-void
.end method

.method private showEulaDialog()V
    .locals 4

    .prologue
    .line 5395
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->setSuperPanel(Lcom/android/hwcamera/hwui/SuperPanel;)V

    .line 5396
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5397
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    new-instance v2, Lcom/android/hwcamera/VideoCamera$16;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/VideoCamera$16;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-string v3, "pref_video_gps_key"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/hwcamera/hwui/GPSDailog;->creatFirstTimeDialogBox(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 5415
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->getDialogBoxView()Lcom/android/hwcamera/hwui/RotateDailog;

    move-result-object v0

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateDailog;->setOrientationEx(I)V

    .line 5416
    return-void
.end method

.method private showPauseVedioUI(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f020080

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2584
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 2585
    if-eqz p1, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2587
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    .line 2588
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2589
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 2611
    :goto_0
    return-void

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2592
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2595
    :cond_1
    if-eqz p1, :cond_2

    .line 2596
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2597
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2598
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2599
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2600
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/hwcamera/ShutterButton;->setBackgroundResource(I)V

    .line 2601
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2602
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    goto :goto_0

    .line 2604
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2605
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2606
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 2607
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 2608
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showPhoneStorageHint(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2799
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_3

    .line 2801
    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2803
    const v0, 0x7f0e0136

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2808
    :goto_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2812
    :goto_1
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 2858
    :cond_0
    :goto_2
    return-void

    .line 2806
    :cond_1
    const v0, 0x7f0e0135

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2810
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 2818
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v3

    .line 2819
    const-wide/32 v5, 0x1400000

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    move v0, v1

    .line 2825
    :goto_3
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_5

    .line 2829
    const v0, 0x7f0e0269

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    .line 2846
    :goto_4
    if-eqz v0, :cond_4

    .line 2847
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2852
    :cond_4
    :goto_5
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 2855
    if-eqz v1, :cond_0

    .line 2856
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    goto :goto_2

    .line 2830
    :cond_5
    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 2833
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_4

    .line 2836
    :cond_6
    if-eqz v0, :cond_7

    .line 2838
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2841
    :cond_7
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_4

    .line 2849
    :cond_8
    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method private showRecordingTime(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, -0x1

    const/high16 v5, 0x41c0

    const/high16 v4, 0x4120

    const/16 v1, 0x10e

    const/4 v0, 0x0

    .line 4377
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->addRecordingTimeSubRectRules(I)V

    .line 4384
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4385
    if-ne p1, v3, :cond_0

    move p1, v0

    .line 4389
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/hwui/RotateLayout;->setOrientation(I)V

    .line 4395
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4396
    if-gtz v2, :cond_2

    .line 4397
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 4402
    :goto_0
    if-nez p1, :cond_3

    .line 4403
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4442
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4443
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 4444
    return-void

    .line 4399
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 4404
    :cond_3
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_4

    .line 4405
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 4406
    :cond_4
    if-ne p1, v1, :cond_5

    .line 4407
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 4408
    :cond_5
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 4409
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 4413
    :cond_6
    if-ne p1, v3, :cond_7

    move p1, v1

    .line 4417
    :cond_7
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    invoke-virtual {v2, p1}, Lcom/android/hwcamera/hwui/RotateLayout;->setOrientation(I)V

    .line 4423
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getControlBarHeight()I

    move-result v2

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getFrameMarginBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4424
    if-gtz v2, :cond_8

    .line 4425
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 4430
    :goto_2
    if-nez p1, :cond_9

    .line 4431
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 4427
    :cond_8
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getDensity()F

    move-result v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 4432
    :cond_9
    const/16 v3, 0x5a

    if-ne p1, v3, :cond_a

    .line 4433
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 4434
    :cond_a
    if-ne p1, v1, :cond_b

    .line 4435
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 4436
    :cond_b
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 4437
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method private showSDCardStorageHint(J)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, -0x1

    const-wide/16 v7, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2715
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_4

    .line 2717
    cmp-long v0, p1, v9

    if-nez v0, :cond_1

    .line 2719
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2728
    :goto_0
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2732
    :goto_1
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 2795
    :cond_0
    :goto_2
    return-void

    .line 2720
    :cond_1
    cmp-long v0, p1, v7

    if-nez v0, :cond_2

    .line 2722
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2725
    :cond_2
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2730
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 2739
    :cond_4
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v3

    .line 2740
    const-wide/32 v5, 0x1400000

    cmp-long v0, v3, v5

    if-lez v0, :cond_c

    move v0, v1

    .line 2746
    :goto_3
    cmp-long v3, p1, v9

    if-nez v3, :cond_7

    .line 2748
    if-eqz v0, :cond_6

    .line 2751
    const v0, 0x7f0e0268

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2782
    :goto_4
    if-eqz v0, :cond_5

    .line 2783
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2788
    :cond_5
    :goto_5
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    .line 2792
    if-eqz v1, :cond_0

    .line 2793
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_2

    .line 2754
    :cond_6
    const v0, 0x7f0e0269

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_4

    .line 2757
    :cond_7
    cmp-long v3, p1, v7

    if-nez v3, :cond_9

    .line 2759
    if-eqz v0, :cond_8

    .line 2762
    const v0, 0x7f0e026a

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2765
    :cond_8
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_4

    .line 2770
    :cond_9
    if-eqz v0, :cond_a

    .line 2773
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2776
    :cond_a
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_4

    .line 2785
    :cond_b
    invoke-direct {p0, v0, v2}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_3
.end method

.method private showStorageHint(ZJ)V
    .locals 0
    .parameter "isSaveToSDCard"
    .parameter "storageAvailableSpace"

    .prologue
    .line 2706
    if-eqz p1, :cond_0

    .line 2707
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoCamera;->showSDCardStorageHint(J)V

    .line 2711
    :goto_0
    return-void

    .line 2709
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/hwcamera/VideoCamera;->showPhoneStorageHint(J)V

    goto :goto_0
.end method

.method private showStorageHintEx(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2679
    const/4 v0, 0x0

    .line 2680
    if-eqz p1, :cond_3

    .line 2681
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2703
    :goto_0
    return-void

    .line 2684
    :cond_0
    const v0, 0x7f0e0257

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2685
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToExternalSdCard()V

    .line 2695
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2696
    invoke-static {}, Lcom/android/hwcamera/Storage;->getmStrongeHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2701
    :cond_2
    :goto_2
    invoke-static {v0}, Lcom/android/hwcamera/Storage;->setmStrongeHint(Ljava/lang/String;)V

    goto :goto_0

    .line 2687
    :cond_3
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2689
    const v0, 0x7f0e026f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2691
    invoke-static {}, Lcom/android/hwcamera/Storage;->switchToInternalSdCard()V

    goto :goto_1

    .line 2698
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->makeRotateToastifNeeded(Ljava/lang/CharSequence;I)V

    goto :goto_2
.end method

.method private showVideoFrame()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4570
    const/4 v2, 0x0

    .line 4571
    .local v2, src:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 4572
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4579
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 4583
    iget v4, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    neg-int v4, v4

    invoke-static {v2, v4, v8}, Lcom/android/hwcamera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4592
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4593
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4594
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4595
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4596
    .local v3, width:I
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4597
    .local v0, _params:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4598
    int-to-double v4, v3

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v6}, Lcom/android/hwcamera/PreviewFrameLayout;->getAspectRatio()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4599
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4600
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4601
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    .line 4605
    .end local v0           #_params:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #width:I
    :goto_1
    return-void

    .line 4574
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_0

    .line 4575
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/hwcamera/PreviewFrameLayout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/hwcamera/Thumbnail;->createVideoThumbnail(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 4603
    :cond_2
    iput-boolean v8, p0, Lcom/android/hwcamera/VideoCamera;->mRecordVideoFileState:Z

    goto :goto_1
.end method

.method private startPlayVideoActivity()V
    .locals 4

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 2342
    :goto_0
    return-void

    .line 2334
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2335
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2337
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    goto :goto_0

    .line 2338
    :catch_0
    move-exception v0

    .line 2339
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t view video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3094
    const-string v2, "videocamera"

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->ensureCameraDevice()V

    .line 3098
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    if-eqz v2, :cond_1

    .line 3173
    :cond_0
    :goto_0
    return-void

    .line 3103
    :cond_1
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-ne v2, v1, :cond_2

    .line 3104
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->stopPreview()V

    .line 3105
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 3109
    :cond_2
    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    .line 3110
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/hwcamera/Util;->getDisplayOrientation(II)I

    move-result v2

    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayOrientation:I

    .line 3112
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-static {p0, v2, v3}, Lcom/android/hwcamera/Util;->setCameraDisplayOrientation(Landroid/app/Activity;ILcom/android/hwcamera/HwCamera;)V

    .line 3113
    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-static {v2}, Lcom/android/hwcamera/Util;->setFaceOrientation(I)Z

    .line 3114
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    .line 3117
    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomState:I

    .line 3121
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v5}, Lcom/android/hwcamera/PreviewFrameLayout;->getAspectRatio()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/android/hwcamera/VideoCamera;->getOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3123
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v3

    .line 3124
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v4

    .line 3125
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3126
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6, v2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 3131
    :goto_1
    int-to-float v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v5, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v2, v5

    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v6}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3135
    const-string v5, "videocamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startpreview origin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " now: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v4}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3140
    const v3, 0x3c23d70a

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 3141
    const-string v2, "videocamera"

    const-string v3, "startpreview notifyScreenNailChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->notifyScreenNailChanged()V

    .line 3144
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_4

    .line 3145
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 3146
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3148
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/HwCamera;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 3149
    const-string v2, "videocamera"

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->startPreviewAsync()V

    .line 3157
    const-string v2, "videocamera"

    const-string v3, "[Flow] Preview started!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    .line 3159
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mZooming:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3165
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v2}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3168
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 3169
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_2
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mFlashSupported:Z

    .line 3170
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomMax:I

    goto/16 :goto_0

    .line 3128
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6, v2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3160
    :catch_0
    move-exception v0

    .line 3161
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeCamera()V

    .line 3162
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3163
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move v0, v1

    .line 3169
    goto :goto_2
.end method

.method private startVideoRecording()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4231
    const-string v0, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v3, :cond_0

    .line 4332
    :goto_0
    return-void

    .line 4236
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4237
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    .line 4251
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    .line 4252
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isStorageSpaceEnough()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4253
    const-string v0, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4240
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4241
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewOrientation:I

    goto :goto_1

    .line 4258
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4274
    :cond_4
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-eq v0, v3, :cond_5

    .line 4275
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 4283
    :cond_5
    invoke-static {p0}, Lcom/android/hwcamera/Util;->pauseAudioPlayback(Landroid/content/Context;)V

    .line 4285
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4316
    :goto_2
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    .line 4317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    .line 4318
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 4320
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->showRecordingTime(I)V

    .line 4323
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_6

    .line 4324
    invoke-direct {p0, v3}, Lcom/android/hwcamera/VideoCamera;->showPauseVedioUI(Z)V

    .line 4326
    :cond_6
    iput-wide v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    .line 4327
    iput-wide v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingPauseTime:J

    .line 4328
    iput-wide v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalTime:J

    .line 4330
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingTime()V

    .line 4331
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 4265
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeRecorder()V

    .line 4266
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_4

    .line 4267
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4295
    :cond_8
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 4297
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 4298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setSwipingEnabled(Z)V

    .line 4300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4302
    :catch_0
    move-exception v0

    .line 4303
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4304
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->releaseMediaRecorder()V

    .line 4306
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 4307
    :cond_9
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 4308
    iput-object v6, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 4311
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->lock()V

    goto/16 :goto_0
.end method

.method private stopReviewIfNeed()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 994
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 997
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 998
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1000
    :cond_0
    return-void
.end method

.method private stopVideoRecording(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mStopVideoThreadFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mStopVideoThreadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2396
    const-string v0, "videocamera"

    const-string v1, "videoRecording thread has being started,so cancel this thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :goto_0
    return-void

    .line 2404
    :cond_0
    new-instance v0, Lcom/android/hwcamera/VideoCamera$5;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$5;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2413
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/hwcamera/VideoCamera$6;-><init>(Lcom/android/hwcamera/VideoCamera;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mStopVideoThreadFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private superPanelInit()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5268
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 5269
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 5270
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoCaptureIntent(Z)V

    .line 5271
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsLowRecordVideo:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoRecordQuality(Z)V

    .line 5273
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCapture480P:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setMovieStudioVideoQuality(Z)V

    .line 5276
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoIntentSupportSetVideoSize:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsSupportVideoIntentSetVideoSize(Z)V

    .line 5280
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 5281
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 5282
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 5284
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsInternalStorageExist(Z)V

    .line 5287
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setIsExternalStorageExist(Z)V

    .line 5289
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 5291
    const v1, 0x7f0c0021

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 5292
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/hwcamera/hwui/RotateLinearLayout;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    .line 5293
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->initSettingmenu([Lcom/android/hwcamera/hwui/RotateLinearLayout;)V

    .line 5295
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setCurrentState(Z)V

    .line 5296
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->initVideoSubPanel()V

    .line 5300
    const/16 v0, 0x21c

    .line 5301
    const/16 v1, 0x438

    .line 5302
    invoke-static {v6}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5303
    invoke-static {v3, v6}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 5304
    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 5306
    :cond_1
    invoke-static {v5}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5307
    invoke-static {v3, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 5308
    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 5310
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->set_videoSize_title(II)V

    .line 5313
    return-void
.end method

.method private switchCameraId(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4079
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 4125
    :cond_0
    :goto_0
    return-void

    .line 4082
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0}, Lcom/android/hwcamera/RotateImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4083
    const-string v0, "videocamera"

    const-string v1, "switchCameraId too fast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4086
    :cond_2
    const-string v0, "videocamera"

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

    .line 4090
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-ne v0, v3, :cond_0

    .line 4104
    :cond_3
    iput p1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 4105
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0, p1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 4107
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v0, :cond_4

    .line 4108
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 4113
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_5

    .line 4114
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 4119
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4123
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->updateZoomControlWhenSwitchCameraId(Z)V

    goto :goto_0
.end method

.method private switchCameraInit()V
    .locals 2

    .prologue
    .line 1925
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    .line 1927
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    .line 1934
    :goto_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraRefresh()V

    .line 1935
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$4;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1944
    return-void

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchCameraRefresh()V
    .locals 4

    .prologue
    const v3, 0x7f0e013e

    .line 1947
    .line 1948
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_id_key"

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    const v0, 0x7f0200da

    .line 1955
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 1956
    return-void

    .line 1953
    :cond_0
    const v0, 0x7f0200db

    goto :goto_0
.end method

.method private switchCameraUI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4042
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4043
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 4049
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 4051
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeHeadUpDisplay()V

    .line 4053
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    if-eqz v0, :cond_1

    .line 4054
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->setTouchFocusEnable(Z)V

    .line 4057
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    if-eqz v0, :cond_2

    .line 4058
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 4061
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->targetTrakingModeUpdate()V

    .line 4064
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    .line 4065
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    .line 4066
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-nez v0, :cond_3

    .line 4067
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 4073
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->updateZoomControlWhenSwitchCameraId(Z)V

    .line 4075
    return-void

    .line 4069
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchCameraImage:Lcom/android/hwcamera/RotateImageView;

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private switchToCameraMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5143
    const-string v2, "videocamera"

    const-string v3, "[Flow] switchToCameraMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    .line 5182
    :cond_0
    :goto_0
    return v0

    .line 5146
    :cond_1
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-nez v2, :cond_0

    .line 5152
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-ne v2, v1, :cond_0

    .line 5169
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    move v0, v1

    .line 5182
    goto :goto_0
.end method

.method private targetTrakingModeInit()V
    .locals 3

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrackingSupported:Z

    if-nez v0, :cond_0

    .line 1874
    :goto_0
    return-void

    .line 1869
    :cond_0
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    .line 1870
    new-instance v1, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/RotateImageView;Z)V

    iput-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    .line 1871
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 1872
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 1873
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->init()V

    goto :goto_0
.end method

.method private targetTrakingModeUpdate()V
    .locals 2

    .prologue
    .line 1878
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrackingSupported:Z

    if-nez v0, :cond_1

    .line 1879
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1880
    if-eqz v0, :cond_0

    .line 1881
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1886
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 1887
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTargetTrakingToggleView:Lcom/android/hwcamera/hwui/TargetTrackingToggleView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/TargetTrackingToggleView;->init()V

    goto :goto_0
.end method

.method private updateAndShowCurrentStorageHint()V
    .locals 6

    .prologue
    .line 2615
    .line 2616
    invoke-static {}, Lcom/android/hwcamera/Storage;->isSaveToSDCard()Z

    move-result v0

    .line 2618
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v1, :cond_0

    .line 2619
    const/4 v0, 0x1

    move v2, v0

    .line 2626
    :goto_0
    if-eqz v2, :cond_1

    .line 2627
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    .line 2632
    :goto_1
    const-wide/32 v3, 0x1400000

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 2633
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStorage()(M) :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    :goto_2
    return-void

    .line 2621
    :cond_0
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    if-nez v1, :cond_3

    .line 2622
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 2629
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    goto :goto_1

    .line 2636
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lcom/android/hwcamera/VideoCamera;->showStorageHint(ZJ)V

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method private updateAndShowStorageHint()V
    .locals 7

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInternalStorageExist:Z

    if-nez v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2644
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "memorycard"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2650
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsExternalStorageExist:Z

    if-nez v0, :cond_1

    .line 2651
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2652
    const-string v1, "pref_camera_save_location_key"

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2659
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_save_location_key"

    const v2, 0x7f0e0206

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2661
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2662
    const/4 v2, 0x0

    .line 2663
    invoke-static {}, Lcom/android/hwcamera/Storage;->getPhoneAvailableSpace()J

    move-result-wide v0

    .line 2669
    :goto_0
    const-wide/32 v3, 0x1400000

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    .line 2670
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStorage()(M) :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0x100000

    div-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->showStorageHintEx(Z)V

    .line 2676
    :goto_1
    return-void

    .line 2665
    :cond_2
    const/4 v2, 0x1

    .line 2666
    invoke-static {}, Lcom/android/hwcamera/Storage;->getSDCardAvailableSpace()J

    move-result-wide v0

    goto :goto_0

    .line 2674
    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lcom/android/hwcamera/VideoCamera;->showStorageHint(ZJ)V

    goto :goto_1
.end method

.method private updateRecordingIndicator(Z)V
    .locals 2
    .parameter

    .prologue
    .line 4529
    if-eqz p1, :cond_0

    .line 4531
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 4539
    :goto_0
    return-void

    .line 4534
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v1, 0x7f020182

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 4535
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 4536
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v9, 0x3e8

    .line 4899
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-nez v0, :cond_0

    .line 4972
    :goto_0
    return-void

    .line 4903
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4906
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-eqz v2, :cond_3

    .line 4907
    iget-wide v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalTime:J

    .line 4915
    :goto_1
    const/4 v6, 0x0

    .line 4918
    rem-long v2, v0, v9

    sub-long v7, v9, v2

    .line 4924
    div-long/2addr v0, v9

    .line 4926
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_4

    .line 4929
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 4930
    long-to-int v0, v0

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 4931
    const/4 v0, 0x3

    iput v0, v2, Landroid/os/Message;->what:I

    .line 4932
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4959
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v0, v6, :cond_2

    .line 4962
    iput-boolean v6, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 4964
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f09001f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4967
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4970
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 4909
    :cond_3
    iget-wide v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTotalDiffTime:J

    sub-long/2addr v0, v2

    goto :goto_1

    .line 4938
    :cond_4
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioBitRate:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3f88f5c3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    const-wide/16 v9, 0x8

    div-long/2addr v2, v9

    .line 4941
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 4942
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    div-long v2, v9, v2

    .line 4948
    :goto_3
    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    .line 4949
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->getTotalRecordingTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4951
    :cond_5
    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 4952
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/VideoCamera;->seconds2Hours(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    move-wide v2, v4

    goto :goto_3
.end method

.method private updateStopRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4664
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->updateRecordingIndicator(Z)V

    .line 4665
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 4666
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 4670
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_0

    .line 4671
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->showPauseVedioUI(Z)V

    .line 4675
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setOrientationIndicator(I)V

    .line 4676
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 4678
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->isBackPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_1

    .line 4679
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowCurrentStorageHint()V

    .line 4681
    :cond_1
    return-void
.end method

.method private updateThumbnailButton()V
    .locals 1

    .prologue
    .line 4805
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->updateThumbnailButton(Z)V

    .line 4806
    return-void
.end method

.method private updatesuperpanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5317
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-nez v0, :cond_0

    .line 5318
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/SuperPanel;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 5322
    :cond_0
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    if-nez v0, :cond_1

    .line 5323
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToBackCamera(Z)V

    .line 5327
    :goto_0
    return-void

    .line 5325
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->onChangeToFrontCamera(Z)V

    goto :goto_0
.end method

.method private viewLastVideo()V
    .locals 1

    .prologue
    .line 4624
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 4649
    :goto_0
    return-void

    .line 4648
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->gotoGallery()Z

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 5917
    const-string v0, "videocamera"

    const-string v1, "video auto focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5919
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mAutoFocusCallback:Lcom/android/hwcamera/VideoCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 5920
    const-string v0, "videocamera"

    const-string v1, "video auto focus finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5925
    :goto_0
    return-void

    .line 5922
    :catch_0
    move-exception v0

    .line 5923
    const-string v0, "videocamera"

    const-string v1, "autoFocus failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelAutoFocus(I)V
    .locals 2
    .parameter

    .prologue
    .line 5930
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 5931
    const-string v0, "videocamera"

    const-string v1, "mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5941
    :goto_0
    return-void

    .line 5935
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    .line 5936
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->cancelAutoFocus()V

    .line 5937
    const-string v0, "videocamera"

    const-string v1, "[Flow] cancelSensorAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5938
    :catch_0
    move-exception v0

    .line 5939
    const-string v0, "videocamera"

    const-string v1, "cancelAutoFocus failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 5946
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v2, 0x1

    .line 1664
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v2, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1667
    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1668
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_2

    .line 1669
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 1680
    :cond_1
    :goto_0
    return v2

    .line 1672
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 1673
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    goto :goto_0

    .line 1674
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1675
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 1676
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1677
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method public displayReviewOnGallery()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3921
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v0, v2, :cond_0

    .line 3922
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3923
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->updateCameraAppView(Z)V

    .line 3924
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 3925
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3929
    :goto_0
    return-void

    .line 3928
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2963
    const-string v0, "videocamera"

    const-string v1, "[Flow] doOnResume begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    invoke-static {p0}, Lcom/android/hwcamera/Storage;->saveLocationInit(Landroid/content/Context;)V

    .line 2971
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-eqz v0, :cond_1

    .line 3049
    :cond_0
    :goto_0
    return-void

    .line 2978
    :cond_1
    invoke-static {p0}, Lcom/android/hwcamera/Util;->stopFMRadioPlay(Landroid/content/Context;)V

    .line 2981
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2982
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2990
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 2991
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 2992
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    .line 2993
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 2994
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2998
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 3000
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-eq v0, v4, :cond_3

    .line 3001
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2003

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3002
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/VolumePlusButton;->enableVolumePlusButton(Z)V

    .line 3006
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 3007
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 3008
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-nez v0, :cond_5

    .line 3009
    const-string v0, "videocamera"

    const-string v1, "onResume restart preview begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3011
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v0, :cond_4

    .line 3012
    const v0, 0x7f0e012a

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3013
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    if-eqz v0, :cond_0

    .line 3014
    const v0, 0x7f0e0265

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 3019
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 3021
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->targetTrakingModeUpdate()V

    .line 3024
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeUpdate()V

    .line 3026
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updatesuperpanel()V

    .line 3027
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/LocationManager;->getGpsState(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3028
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_gps_key"

    const-string v2, "off"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/RecordLocationPreference;->setLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/GPSDailog;->initGpsAnimation(Landroid/view/View;)V

    .line 3034
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_video_gps_key"

    invoke-static {v0, v1}, Lcom/android/hwcamera/RecordLocationPreference;->getLocationPreference(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v0

    .line 3036
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3045
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3047
    const-string v0, "videocamera"

    const-string v1, "[Flow] doOnResume end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 5675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 5676
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5677
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5678
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5679
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 5680
    return-void
.end method

.method public hideTwinkleAnimation()V
    .locals 1

    .prologue
    .line 4887
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4888
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4890
    :cond_0
    return-void
.end method

.method public initControlBarHeight()V
    .locals 2

    .prologue
    const v1, 0x7f0c000c

    .line 1058
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    .line 1064
    :goto_0
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    invoke-static {v0}, Lcom/android/hwcamera/hwui/MenuCommon;->setControlBarHeight(I)V

    .line 1070
    return-void

    .line 1061
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mControlBarHeight:I

    goto :goto_0
.end method

.method public initThumbnailMaskView()V
    .locals 2

    .prologue
    .line 1423
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    .line 1424
    new-instance v0, Lcom/android/hwcamera/VideoCamera$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$2;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

    .line 1437
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskViewListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1438
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailMaskView:Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1439
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1074
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult rescode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    .line 1076
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 1077
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3370
    const-string v0, "videocamera"

    const-string v1, "[Flow] onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :try_start_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->exitGallery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 3441
    :cond_0
    :goto_0
    return-void

    .line 3376
    :catch_0
    move-exception v0

    .line 3377
    #calls: Lcom/android/gallery3d/app/AbstractGalleryActivity;->onBackPressed()V
    invoke-static {p0}, Lcom/android/hwcamera/VideoCamera;->access$8801(Lcom/android/hwcamera/VideoCamera;)V

    goto :goto_0

    .line 3381
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_2

    .line 3382
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    goto :goto_0

    .line 3386
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 3388
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_4

    .line 3389
    :cond_3
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->hideTwinkleAnimation()V

    .line 3392
    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    goto :goto_0

    .line 3396
    :cond_4
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v3, :cond_5

    .line 3397
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3398
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3399
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3402
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_6

    .line 3403
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 3405
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_7

    .line 3406
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 3408
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3409
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 3440
    :goto_1
    const-string v0, "videocamera"

    const-string v1, "[Flow] onBackPressed end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3410
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3411
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_1

    .line 3413
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3414
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_1

    .line 3420
    :cond_a
    invoke-static {v2}, Lcom/android/hwcamera/hwui/ZoomControl;->resetFirstTimeInitialized(Z)V

    .line 3433
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onBlueToothMediaButtonDown()V
    .locals 2

    .prologue
    .line 6009
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isFocusAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6010
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6011
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 6014
    :cond_0
    return-void
.end method

.method public onBlueToothMediaButtonUp()V
    .locals 2

    .prologue
    .line 5999
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6000
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6001
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 6002
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/hwcamera/VideoCamera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 6005
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 2345
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2384
    :cond_0
    :goto_0
    return-void

    .line 2347
    :sswitch_0
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    .line 2348
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->hideAlert()V

    .line 2350
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    .line 2353
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setCameraParameters()V

    goto :goto_0

    .line 2357
    :sswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startPlayVideoActivity()V

    goto :goto_0

    .line 2360
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 2364
    :sswitch_3
    invoke-direct {p0, v1, v1}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 2367
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->deleteCurrentVideo()V

    .line 2369
    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 2377
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-nez v0, :cond_0

    .line 2381
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->viewLastVideo()V

    goto :goto_0

    .line 2345
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0024 -> :sswitch_4
        0x7f0c00cc -> :sswitch_2
        0x7f0c00cd -> :sswitch_1
        0x7f0c00ce -> :sswitch_0
        0x7f0c00cf -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 5208
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0c0025

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1081
    const-string v0, "videocamera"

    const-string v3, "[Flow] onCreate begin"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/hwcamera/Util;->initializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 1085
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1087
    new-instance v0, Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 1088
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1089
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 1091
    const-string v0, "ro.camera.show.eula"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "pref_eula"

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/VideoCamera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mEulaPreference:Landroid/content/SharedPreferences;

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "support_full_hd_video_quality"

    invoke-static {v0, v3, v2}, Lcom/android/hwcamera/Util;->getHWConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_7

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->setIsSupportFullHDVideoQuality(Z)V

    .line 1101
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1103
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->initializeFeatures(Landroid/content/ContentResolver;)V

    .line 1106
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    new-instance v0, Lcom/android/hwcamera/FocusManager;

    const v3, 0x7f0e0177

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/hwcamera/FocusManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    .line 1110
    new-instance v0, Lcom/android/hwcamera/CameraMovedController;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/CameraMovedController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    .line 1111
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/FocusManager;->setCameraMovedController(Lcom/android/hwcamera/CameraMovedController;)V

    .line 1117
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    .line 1118
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mNumberOfCameras:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_8

    .line 1119
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    .line 1120
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1121
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-static {v0, v3}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1125
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1126
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setContentView(I)V

    .line 1130
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->saveLocationInit()V

    .line 1132
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 1134
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->createCameraScreenNail(Z)V

    .line 1135
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    .line 1136
    new-instance v0, Lcom/android/hwcamera/LocationManager;

    invoke-direct {v0, p0, p0}, Lcom/android/hwcamera/LocationManager;-><init>(Landroid/content/Context;Lcom/android/hwcamera/LocationManager$Listener;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    .line 1141
    new-instance v3, Ljava/lang/Thread;

    new-instance v0, Lcom/android/hwcamera/VideoCamera$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/VideoCamera$1;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1174
    const-string v0, "videocamera"

    const-string v4, "[Flow] onCreate open camera"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1178
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1180
    if-ne v4, v1, :cond_2

    .line 1181
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1182
    const v5, 0x3f333333

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1183
    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1187
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isInnerlVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsInnerlVideoCaptureIntent:Z

    .line 1191
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->readVideoPreferences()V

    .line 1193
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->devlatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1198
    invoke-static {p0}, Lcom/android/hwcamera/Util;->calDisplayMetrics(Landroid/content/Context;)V

    .line 1201
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    .line 1205
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/android/hwcamera/PreviewFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1207
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1208
    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v4, v0}, Lcom/android/hwcamera/PreviewFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1213
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1215
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 1219
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1220
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->setSingleTapArea(Landroid/view/View;)V

    .line 1223
    :cond_4
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusIndicator:Landroid/view/View;

    .line 1233
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mQuickCapture:Z

    .line 1234
    const v0, 0x7f0c00d7

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 1235
    const v0, 0x7f0c00c9

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/hwui/RotateLayout;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;

    .line 1237
    const v0, 0x7f0c00ca

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeSubRect:Landroid/view/View;

    .line 1240
    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1241
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1242
    iget-boolean v5, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v5, :cond_a

    .line 1243
    const v5, 0x7f040005

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1264
    :goto_3
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    .line 1265
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const v4, 0x7f0200e4

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/ShutterButton;->setImageResource(I)V

    .line 1266
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 1267
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->requestFocus()Z

    .line 1270
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f050014

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 1271
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/hwcamera/VideoCamera;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1272
    invoke-static {}, Lcom/android/hwcamera/Util;->hasPauseResumeMethodInMediaRecorder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    .line 1273
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_6

    .line 1274
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/ShutterButton;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    .line 1275
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    if-eqz v0, :cond_5

    .line 1276
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 1277
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/ShutterButton;->setVisibility(I)V

    .line 1278
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1279
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/ShutterButton;->setOnShutterButtonListener(Lcom/android/hwcamera/ShutterButton$OnShutterButtonListener;)V

    .line 1281
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitchLayout:Landroid/widget/RelativeLayout;

    .line 1282
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1284
    const-string v0, "ro.camera.sound.forced"

    const-string v5, "0"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    .line 1287
    :goto_4
    new-instance v5, Lcom/android/hwcamera/SoundPlayer;

    const v6, 0x7f070003

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Lcom/android/hwcamera/SoundPlayer;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    iput-object v5, p0, Lcom/android/hwcamera/VideoCamera;->mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

    .line 1289
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/RotateImageView;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseImageView:Lcom/android/hwcamera/RotateImageView;

    .line 1290
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/VideoCamera;->initTwinkleAnimation(Landroid/view/View;)V

    .line 1295
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/VolumePlusButton;->enableVolumePlusButton(Z)V

    .line 1296
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/VolumePlusButton;->setOnVolumePlusButtonListener(Lcom/android/hwcamera/VolumePlusButton$OnVolumePlusButtonListener;)V

    .line 1298
    invoke-static {}, Lcom/android/hwcamera/BlueToothMediaButton;->getInstance()Lcom/android/hwcamera/BlueToothMediaButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/BlueToothMediaButton;->setOnBlueToothMediaButtonListener(Lcom/android/hwcamera/BlueToothMediaButton$OnBlueToothMediaButtonListener;)V

    .line 1301
    new-instance v0, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/hwcamera/VideoCamera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    .line 1305
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V

    .line 1306
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-eqz v0, :cond_b

    .line 1307
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    :goto_5
    return-void

    :cond_7
    move v0, v2

    .line 1097
    goto/16 :goto_0

    .line 1123
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    invoke-virtual {v0, p0, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1134
    goto/16 :goto_2

    .line 1245
    :cond_a
    const v5, 0x7f040007

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1253
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initThumbnailButton()V

    .line 1256
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->initThumbnailMaskView()V

    .line 1259
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/Switcher;

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    .line 1260
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {v0, p0}, Lcom/android/hwcamera/Switcher;->setOnSwitchListener(Lcom/android/hwcamera/Switcher$OnSwitchListener;)V

    .line 1261
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    invoke-virtual {p0, v8}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/hwcamera/Switcher;->addTouchView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 1310
    :cond_b
    :try_start_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v0, :cond_e

    .line 1311
    const v0, 0x7f0e012a

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1318
    :catch_0
    move-exception v0

    .line 1331
    :cond_c
    new-instance v0, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/VideoCamera$SuperPanelListener;-><init>(Lcom/android/hwcamera/VideoCamera;Lcom/android/hwcamera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanelListener:Lcom/android/hwcamera/VideoCamera$SuperPanelListener;

    .line 1334
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeHeadUpDisplay()V

    .line 1335
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->flashModeInit()V

    .line 1336
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchCameraInit()V

    .line 1338
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1340
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1341
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1342
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Lcom/android/hwcamera/hwui/GPSDailog;

    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-direct {v0, p0, v3}, Lcom/android/hwcamera/hwui/GPSDailog;-><init>(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;)V

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    .line 1349
    const-string v0, "ro.camera.shuttersound"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1350
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_video_shutter_sound_key"

    const-string v4, "on"

    invoke-virtual {v0, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "silent Option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v3}, Lcom/android/hwcamera/HwCamera;->getAndroidCamera()Landroid/hardware/Camera;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v3, v0}, Lcom/android/hwcamera/Util;->setSilentOption(Ljava/lang/Object;Z)V

    .line 1357
    :cond_d
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_video_sound_state_key"

    const-string v4, "on"

    invoke-virtual {v0, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1359
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    .line 1363
    :goto_6
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->initializeMiscControls()V

    .line 1365
    const-string v0, "videocamera"

    const-string v1, "[Flow] onCreate end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1313
    :cond_e
    :try_start_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDisabled:Z

    if-eqz v0, :cond_c

    .line 1314
    const v0, 0x7f0e0265

    invoke-static {p0, v0}, Lcom/android/hwcamera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 1361
    :cond_f
    iput-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    goto :goto_6

    :cond_10
    move v0, v1

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2272
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onDestroy()V

    .line 2273
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2274
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOpenCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2275
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2277
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2279
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mThumnailAnimation:Landroid/view/animation/Animation;

    .line 2281
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    if-eqz v0, :cond_1

    .line 2282
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/LocationManager;->release()V

    .line 2285
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v0, :cond_2

    .line 2286
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->release()V

    .line 2289
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_3

    .line 2290
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->unsetOnPanelListener()V

    .line 2291
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->unInitSettingmenu()V

    .line 2292
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->unsetComboPreferences()V

    .line 2293
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->relase()V

    .line 2297
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2299
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    if-eqz v0, :cond_6

    .line 2300
    const-string v0, "off"

    .line 2304
    :goto_0
    const-string v2, "pref_camera_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2305
    const-string v2, "pref_video_sound_state_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2306
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2317
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

    if-eqz v0, :cond_4

    .line 2318
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->release()V

    .line 2319
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

    .line 2323
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_5

    .line 2324
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2325
    iput-object v3, p0, Lcom/android/hwcamera/VideoCamera;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 2328
    :cond_5
    return-void

    .line 2302
    :cond_6
    const-string v0, "on"

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    .line 4190
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4193
    invoke-direct {p0, v1, v1}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 4195
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V

    .line 4197
    :cond_0
    return-void
.end method

.method public onFlashModeChange()Z
    .locals 1

    .prologue
    .line 5199
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 5200
    :cond_0
    const/4 v0, 0x0

    .line 5202
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
    const/4 v1, 0x1

    .line 6298
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSwitchControlBar:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 6299
    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/ActivityBase;->onFullScreenChanged(Z)V

    .line 6301
    :cond_1
    iput-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mIsSwitchControlBar:Z

    .line 6302
    if-eqz p1, :cond_3

    .line 6303
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->hideReviewUI()V

    .line 6304
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 6305
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    if-nez v0, :cond_2

    .line 6317
    :goto_0
    return-void

    .line 6308
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    new-instance v1, Lcom/android/hwcamera/VideoCamera$17;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/VideoCamera$17;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/hwcamera/RotateImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6315
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 4201
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 4203
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 4213
    :cond_0
    :goto_0
    return-void

    .line 4205
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 4207
    const v0, 0x7f0e01d1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4210
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3476
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 3529
    :goto_0
    return v0

    .line 3480
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3529
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 3482
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3483
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    move v0, v1

    .line 3484
    goto :goto_0

    .line 3488
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3489
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->performClick()Z

    move v0, v1

    .line 3490
    goto :goto_0

    .line 3494
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 3495
    goto :goto_0

    .line 3497
    :cond_2
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v1, :cond_1

    .line 3498
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :sswitch_3
    move v0, v1

    .line 3506
    goto :goto_0

    .line 3512
    :sswitch_4
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3513
    if-eqz v0, :cond_3

    .line 3514
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3521
    :cond_3
    :sswitch_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isFocusAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3522
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonDown(Landroid/view/KeyEvent;)V

    move v0, v1

    .line 3523
    goto :goto_0

    .line 3480
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_5
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x4f -> :sswitch_5
        0x52 -> :sswitch_2
        0x55 -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x66

    const/4 v1, 0x1

    .line 3534
    sparse-switch p1, :sswitch_data_0

    .line 3571
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3536
    :sswitch_0
    const-string v0, "videocamera"

    const-string v2, "KEYCODE_HOME pressed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3538
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3539
    const/16 v2, 0x63

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3540
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3541
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3542
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0010

    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-static {v0, v2, v3}, Lcom/android/hwcamera/Util;->slideOutControlBar(Landroid/view/View;Landroid/view/View;I)V

    .line 3543
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    move v0, v1

    .line 3547
    goto :goto_0

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3549
    :sswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setPressed(Z)V

    move v0, v1

    .line 3550
    goto :goto_0

    .line 3555
    :sswitch_2
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3556
    if-eqz v0, :cond_1

    .line 3557
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/hwcamera/BlueToothMediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3565
    :cond_1
    :sswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3566
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mVolumePlusButton:Lcom/android/hwcamera/VolumePlusButton;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/VolumePlusButton;->onVolumePlusButtonUp(Landroid/view/KeyEvent;)V

    :cond_2
    move v0, v1

    .line 3568
    goto :goto_0

    .line 3534
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_3
        0x1b -> :sswitch_1
        0x4f -> :sswitch_3
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayoutChange()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x6a

    const/4 v0, 0x0

    .line 6039
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    if-eqz v1, :cond_1

    .line 6106
    :cond_0
    :goto_0
    return-void

    .line 6050
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->initControlBarHeight()V

    .line 6052
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/PreviewFrameLayout;->calPreviewFrameMargin()V

    .line 6053
    const-string v1, "videocamera"

    const-string v2, "onLayoutChange :setIconsArrayPaddingBottomsetIconsArrayPaddingBottom"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->setIconsArrayPaddingBottom()V

    .line 6058
    invoke-static {}, Lcom/android/hwcamera/Util;->calValidTouchFocusArea()V

    .line 6059
    iput v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    .line 6060
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    if-eqz v1, :cond_4

    .line 6061
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ZoomControl;->setZoomIndex(I)V

    .line 6062
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/ZoomControl;->calZoomControlRegions()V

    .line 6063
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/ZoomControl;->updateZoomControlLayoutSize()V

    .line 6064
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/ZoomControl;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 6065
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    .line 6066
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2002

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6077
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSwitchControlBar:Z

    .line 6081
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v1, :cond_0

    .line 6088
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/android/hwcamera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayRotation:I

    if-ne v1, v2, :cond_6

    .line 6100
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6101
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/hwcamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    iget v2, p0, Lcom/android/hwcamera/VideoCamera;->mCameraId:I

    aget-object v1, v1, v2

    .line 6102
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v5, :cond_7

    .line 6103
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusIndicator:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewFrameLayout:Lcom/android/hwcamera/PreviewFrameLayout;

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/hwcamera/VideoCamera;->mDisplayOrientation:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/hwcamera/FocusManager;->initialize(Landroid/view/View;Landroid/view/View;Lcom/android/hwcamera/hwui/FaceView;Lcom/android/hwcamera/FocusManager$Listener;ZI)V

    goto :goto_0

    .line 6070
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6071
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6073
    :cond_5
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 6091
    :cond_6
    invoke-direct {p0, v0, v0}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 6094
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mPreviewing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mStartPreviewFail:Z

    if-nez v1, :cond_3

    .line 6095
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->restartPreview()Z

    goto :goto_2

    :cond_7
    move v5, v0

    .line 6102
    goto :goto_3
.end method

.method protected onPause()V
    .locals 7

    .prologue
    const/16 v6, 0x67

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3259
    const-string v0, "videocamera"

    const-string v1, "[Flow] onPause begin "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mIsHomeExit:Z

    .line 3261
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onPause()V

    .line 3263
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3264
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3266
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3267
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3276
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_2

    .line 3277
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->hideTwinkleAnimation()V

    .line 3280
    :cond_2
    iput-boolean v3, p0, Lcom/android/hwcamera/VideoCamera;->mPausing:Z

    .line 3281
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_3

    .line 3282
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->dissmissPopWindowNoAni()V

    .line 3283
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 3284
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->collapseAllPanelsControls()V

    .line 3287
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->finishRecorderAndCloseCamera()V

    .line 3288
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->closeVideoFileDescriptor()V

    .line 3289
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    .line 3290
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 3291
    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3297
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 3298
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3299
    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3302
    :cond_5
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resetScreenOn()V

    .line 3309
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    if-eqz v0, :cond_6

    .line 3310
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateToast;->cancel()V

    .line 3311
    iput-object v4, p0, Lcom/android/hwcamera/VideoCamera;->mRotateToast:Lcom/android/hwcamera/hwui/RotateToast;

    .line 3313
    :cond_6
    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    if-ne v0, v3, :cond_7

    .line 3315
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mReviewPlayState:Z

    if-nez v0, :cond_7

    .line 3316
    iput v2, p0, Lcom/android/hwcamera/VideoCamera;->mReviewState:I

    .line 3317
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/VideoCamera;->setCameraUI(I)V

    .line 3318
    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3319
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3322
    :cond_7
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v0, :cond_8

    .line 3323
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExClose()V

    .line 3325
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    if-eqz v0, :cond_9

    .line 3326
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->dismissDialogBox()V

    .line 3328
    :cond_9
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    if-eqz v0, :cond_a

    .line 3329
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mDailogBoxView:Lcom/android/hwcamera/hwui/RotateDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/RotateDailog;->dismissPoupWindowEx()V

    .line 3331
    :cond_a
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mOrientationListener:Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/hwcamera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 3332
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLocationManager:Lcom/android/hwcamera/LocationManager;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/LocationManager;->recordLocation(Z)V

    .line 3335
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3340
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusState:I

    if-eq v0, v3, :cond_b

    .line 3341
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0}, Lcom/android/hwcamera/FocusManager;->cancelAutoFocus()V

    .line 3347
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    if-eqz v0, :cond_c

    .line 3348
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraMovedController:Lcom/android/hwcamera/CameraMovedController;

    invoke-virtual {v0}, Lcom/android/hwcamera/CameraMovedController;->pause()V

    .line 3355
    :cond_c
    invoke-direct {p0, v5}, Lcom/android/hwcamera/VideoCamera;->setZoomBarVisibility(I)V

    .line 3358
    invoke-static {}, Lcom/android/hwcamera/Storage;->saveLocationUnInit()V

    .line 3360
    const-string v0, "videocamera"

    const-string v1, "[Flow] onPause end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    return-void
.end method

.method public onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x258

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2503
    invoke-virtual {p1}, Lcom/android/hwcamera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2581
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2505
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2506
    const-string v0, "videocamera"

    const-string v1, "camera onPause 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    goto :goto_0

    .line 2509
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2510
    const-string v0, "videocamera"

    const-string v1, "camera onPause2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 2515
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-nez v0, :cond_0

    .line 2520
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_5

    .line 2521
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_3

    .line 2522
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->showPauseVedioUI(Z)V

    .line 2525
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    .line 2549
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2551
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsSupportPauseAndResume:Z

    if-eqz v0, :cond_4

    .line 2552
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2555
    :cond_4
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2527
    :cond_5
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_6

    .line 2528
    invoke-direct {p0, v2}, Lcom/android/hwcamera/VideoCamera;->showPauseVedioUI(Z)V

    .line 2529
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->hideTwinkleAnimation()V

    .line 2530
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->resumeVideoRecording()V

    .line 2531
    invoke-direct {p0, v3, v3}, Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V

    goto :goto_1

    .line 2535
    :cond_6
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    if-eqz v0, :cond_7

    .line 2536
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "camera_sound_state"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2541
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-eqz v0, :cond_0

    .line 2545
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2547
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->startVideoRecording()V

    goto :goto_1

    .line 2538
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "camera_sound_state"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2

    .line 2560
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_a

    .line 2561
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->pauseVideoRecording()V

    .line 2562
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->showTwinkleAnimation()V

    .line 2563
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    if-nez v0, :cond_8

    .line 2564
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 2566
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseImageView:Lcom/android/hwcamera/RotateImageView;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 2575
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/hwcamera/ShutterButton;->setEnabled(Z)V

    .line 2576
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2567
    :cond_a
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderPausing:Z

    if-eqz v0, :cond_9

    .line 2568
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsMute:Z

    if-nez v0, :cond_b

    .line 2569
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseVedioSound:Lcom/android/hwcamera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/hwcamera/SoundPlayer;->play()V

    .line 2571
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2572
    invoke-virtual {p0}, Lcom/android/hwcamera/VideoCamera;->hideTwinkleAnimation()V

    .line 2573
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPauseImageView:Lcom/android/hwcamera/RotateImageView;

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_3

    .line 2503
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c000e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 2388
    return-void
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6124
    invoke-super {p0, p1, p2, p3}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    .line 6125
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6143
    :cond_0
    :goto_0
    return-void

    .line 6131
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 6135
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6139
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6142
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/hwcamera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onSingleTapUp(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1644
    invoke-super {p0, p1, p2}, Lcom/android/hwcamera/ActivityBase;->onSingleTapUp(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1645
    iget-boolean v2, p0, Lcom/android/hwcamera/VideoCamera;->mIsOnGalleryExState:Z

    if-eqz v2, :cond_0

    .line 1646
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->galleryExEnd()V

    .line 1648
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v2, :cond_1

    .line 1649
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1650
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 1659
    :cond_1
    :goto_0
    return v0

    .line 1651
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1652
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_0

    .line 1653
    :cond_3
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1654
    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v2, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1659
    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 2257
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStart()V

    .line 2258
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mSwitcher:Lcom/android/hwcamera/Switcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/Switcher;->setSwitch(Z)V

    .line 2261
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2266
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onStop()V

    .line 2267
    return-void
.end method

.method public onSwitchChanged(Lcom/android/hwcamera/Switcher;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 5186
    if-ne p2, v0, :cond_0

    .line 5187
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v1, "pref_camera_tag"

    const-string v2, "cameratag"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/ResetPreference;->writePreferredTag(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    .line 5191
    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 5725
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5727
    iget-boolean v1, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 5755
    :cond_0
    :goto_0
    return v0

    .line 5731
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/hwcamera/VideoCamera;->collapseCameraControls(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5735
    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isTouchFocusNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5741
    invoke-static {p2}, Lcom/android/hwcamera/Util;->isTouchFocusAreaValid(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5746
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->clearFocusUI()V

    goto :goto_0

    .line 5752
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isBuildVersionAboveICS()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5753
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v0, p2}, Lcom/android/hwcamera/FocusManager;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 5755
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/hwcamera/FocusManager;->handleFocus(IIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 3365
    invoke-super {p0}, Lcom/android/hwcamera/ActivityBase;->onUserInteraction()V

    .line 3366
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/hwcamera/VideoCamera;->keepScreenOnAwhile()V

    .line 3367
    :cond_0
    return-void
.end method

.method public onVolumePlusButtonClick()V
    .locals 1

    .prologue
    .line 5990
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5991
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->onShutterButtonClick(Lcom/android/hwcamera/ShutterButton;)V

    .line 5994
    :cond_0
    return-void
.end method

.method public onVolumePlusButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 6023
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/hwcamera/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6024
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mShutterButton:Lcom/android/hwcamera/ShutterButton;

    invoke-virtual {p0, v0, p1}, Lcom/android/hwcamera/VideoCamera;->onShutterButtonFocus(Lcom/android/hwcamera/ShutterButton;Z)V

    .line 6027
    :cond_0
    return-void
.end method

.method public onVolumePlusButtonLongPressed()V
    .locals 0

    .prologue
    .line 6032
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 4169
    const-string v0, "videocamera"

    const-string v1, "invoke setAutoFocusMoveCallback!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/HwCamera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 4171
    return-void
.end method

.method public setCameraUI(I)V
    .locals 1
    .parameter

    .prologue
    .line 2498
    invoke-direct {p0, p1}, Lcom/android/hwcamera/VideoCamera;->setCameraUIButControlBar(I)V

    .line 2499
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2500
    return-void
.end method

.method public setFocusParameters()V
    .locals 3

    .prologue
    .line 5963
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    if-nez v0, :cond_0

    .line 5964
    const-string v0, "videocamera"

    const-string v1, "TODO: avoid NullPointerException from doFaceFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    :goto_0
    return-void

    .line 5968
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    invoke-virtual {v0}, Lcom/android/hwcamera/HwCamera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 5970
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mAeLockSupported:Z

    if-eqz v0, :cond_1

    .line 5971
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5973
    :cond_1
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mAwbLockSupported:Z

    if-eqz v0, :cond_2

    .line 5974
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5976
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->doFoucsPolicy(Landroid/hardware/Camera$Parameters;)V

    .line 5978
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 5980
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focus Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v2}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5981
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mFocusManager:Lcom/android/hwcamera/FocusManager;

    invoke-virtual {v1}, Lcom/android/hwcamera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 5983
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mCameraDevice:Lcom/android/hwcamera/HwCamera;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/HwCamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c0049

    const v4, 0x7f0c0048

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 5658
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    .line 5659
    iput-boolean p1, p0, Lcom/android/hwcamera/VideoCamera;->mGpsSignalState:Z

    .line 5660
    if-eqz p1, :cond_0

    .line 5661
    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/GPSDailog;->hideGpsAnimation()V

    .line 5662
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5663
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5664
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5671
    :goto_0
    return-void

    .line 5666
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5667
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5668
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5669
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mGPSDailog:Lcom/android/hwcamera/hwui/GPSDailog;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/GPSDailog;->showGpsAnimation()V

    goto :goto_0
.end method

.method public showTwinkleAnimation()V
    .locals 1

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 4893
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mTwinkleAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4895
    :cond_0
    return-void
.end method

.method protected updateRemaining()V
    .locals 0

    .prologue
    .line 3053
    return-void
.end method

.method protected updateThumbnailButton(Z)V
    .locals 4
    .parameter "isForce"

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mLastThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-nez v0, :cond_0

    .line 4811
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4816
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/hwcamera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4818
    :cond_1
    new-instance v0, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/hwcamera/VideoCamera$12;

    invoke-direct {v3, p0}, Lcom/android/hwcamera/VideoCamera$12;-><init>(Lcom/android/hwcamera/VideoCamera;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;-><init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/android/hwcamera/Thumbnail$ThumbnailThread;->start()V

    .line 4847
    :cond_2
    :goto_0
    return-void

    .line 4841
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    .line 4842
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnailView:Lcom/android/hwcamera/RotateImageView;

    iget-object v1, p0, Lcom/android/hwcamera/VideoCamera;->mThumbnail:Lcom/android/hwcamera/Thumbnail;

    invoke-virtual {v1}, Lcom/android/hwcamera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateZoomControlWhenSwitchCameraId(Z)V
    .locals 1
    .parameter "beforeSwitch"

    .prologue
    .line 3956
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/ZoomControl;->updateZoomControlWhenSwitchCameraId(Z)V

    .line 3957
    return-void
.end method

.method public zoomStateSwitch()V
    .locals 1

    .prologue
    .line 1505
    iget-boolean v0, p0, Lcom/android/hwcamera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1506
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1507
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera;->mZoomControl:Lcom/android/hwcamera/hwui/ZoomControl;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/ZoomControl;->zoomStateSwitch()V

    goto :goto_0
.end method
