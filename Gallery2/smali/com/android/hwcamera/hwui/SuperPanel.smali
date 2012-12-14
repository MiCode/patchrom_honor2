.class public Lcom/android/hwcamera/hwui/SuperPanel;
.super Lcom/android/hwcamera/hwui/Panel;
.source "SuperPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/hwcamera/hwui/Panel$OnPanelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SuperPanel$Listeners;,
        Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;
    }
.end annotation


# static fields
.field private static final MAXIDLETIME:I

.field private static SUB_SUBMENU_DISPLAY_TIME:I

.field private static SUM_SUBMENU_DISPLAY_TIME:I


# instance fields
.field private CLOSE_SUB_MENU_STEP_PX:I

.field private m1080P_videosize_Height:I

.field private mCameraId:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mGPSstatus:Z

.field private mHandleTouchEvnt:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsCameraCaptureIntent:Z

.field private mIsExternalStorageExist:Z

.field private mIsInternalStorageExist:Z

.field private mIsLowVideoRecord:Z

.field private mIsSubMenuClosing:Z

.field private mIsVideo:Z

.field private mIsVideoCapture480P:Z

.field private mIsVideoCaptureIntent:Z

.field private mIsVideoIntentSupportSetVideoSize:Z

.field private mLastDisplayID:I

.field private mLastSubPanel:Landroid/view/View;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mMessageOffset:I

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mQHD_videosize_Height:I

.field private mSeekBarView:Landroid/view/View;

.field private mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

.field private mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private mSubAnimLength:I

.field private mSubMenuContent:Landroid/view/View;

.field private mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

.field private mSubMenuContentSub:Landroid/view/View;

.field private mSubMenuHandler:Landroid/os/Handler;

.field private mSubMenuState:Z

.field private mSubPanel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSupperPanelLength_Landscape:I

.field private mSupperPanelLength_Portrait:I

.field private mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

.field private settingmenu:[Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private subViewParam:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xf0

    sput v0, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    .line 75
    const/16 v0, 0xf

    sput v0, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    .line 94
    const/16 v0, 0x1f40

    invoke-static {v0}, Lcom/android/hwcamera/Util;->getDelayTime(I)I

    move-result v0

    sput v0, Lcom/android/hwcamera/hwui/SuperPanel;->MAXIDLETIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/hwui/Panel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 61
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    .line 63
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mQHD_videosize_Height:I

    .line 71
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    .line 78
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    .line 105
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoIntentSupportSetVideoSize:Z

    .line 111
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    .line 113
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    .line 115
    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 118
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsInternalStorageExist:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsExternalStorageExist:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCapture480P:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SubmenuSlideHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandlerThread:Landroid/os/HandlerThread;

    .line 143
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->initMenuCommon()V

    .line 145
    invoke-virtual {p0, p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOnPanelListener(Lcom/android/hwcamera/hwui/Panel$OnPanelListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel$SubMenuHandler;-><init>(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SuperPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SuperPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SuperPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/hwcamera/hwui/SuperPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/SuperPanel;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/hwcamera/hwui/SuperPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method private closePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 728
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 730
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    goto :goto_0

    .line 733
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method private initSecondLevelMenu(Z)Z
    .locals 4
    .parameter "isVideo"

    .prologue
    const/4 v2, 0x1

    .line 698
    const-string v0, "pref_camera_distortion_key"

    .line 699
    .local v0, key:Ljava/lang/String;
    const-string v1, "pref_camera_whitebalance_key"

    .line 700
    .local v1, whitebalanceKey:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 701
    const-string v1, "pref_video_whitebalance_key"

    .line 702
    const-string v0, "pref_video_distortion_key"

    .line 704
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    .line 705
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setKey(Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 708
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 716
    :goto_0
    return v2

    .line 712
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 714
    :cond_2
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 715
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v3, v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z
    .locals 1
    .parameter "listView"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 722
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V

    .line 723
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 724
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/ListSubSettingView;->initModeView()Z

    move-result v0

    return v0
.end method

.method private initThirdLevelMenu()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 670
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    if-eqz v2, :cond_3

    .line 671
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 672
    invoke-virtual {p0, v4, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 673
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    const-string v3, "pref_video_whitebalance_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/ListSubSettingView;->setKey(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 693
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 680
    goto :goto_0

    .line 682
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_video_distortion_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 683
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 684
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v2, "pref_video_distortion_key"

    invoke-interface {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {p0, v4, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0

    .line 691
    :cond_3
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePanel()V

    .line 692
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v2, "pref_camera_coloreffect_key"

    invoke-interface {v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->gallerExEntry(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCameraStateMenu(ZZ)V
    .locals 3
    .parameter "isOnCameraState"
    .parameter "captureIntent"

    .prologue
    const/4 v2, 0x0

    .line 1033
    if-eqz p2, :cond_0

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCaptureIntentMenu(Z)V

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_distortion_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1037
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    .line 1039
    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hw_front_camera_support_coloreffect"

    invoke-static {v0, v1, v2}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 1043
    :cond_2
    return-void
.end method

.method private setCaptureIntentMenu(Z)V
    .locals 4
    .parameter "isOnCameraState"

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0c005c

    .line 1049
    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1071
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1057
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    if-eqz v1, :cond_1

    .line 1058
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 1061
    :cond_1
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCapture480P:Z

    if-eqz v1, :cond_2

    .line 1062
    invoke-virtual {p0, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 1066
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-static {v1}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, defalutValue:Ljava/lang/String;
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSubPanelOriginParam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    .line 347
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 354
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 357
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 358
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 362
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    .line 365
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 366
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setVideoStateMeun(ZZ)V
    .locals 6
    .parameter "isOnCameraState"
    .parameter "captureIntent"

    .prologue
    const v5, 0x7f0c005c

    const v4, 0x7f0c005b

    .line 1008
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoIntentSupportSetVideoSize:Z

    if-nez v1, :cond_1

    .line 1010
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->setCaptureIntentMenu(Z)V

    .line 1018
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v2, "pref_video_distortion_key"

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1019
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 1020
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 1026
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel;->refreshWhitebalanceIcon(Z)V

    .line 1027
    return-void

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_video_quality_key"

    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, vidosizeValue:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    .line 1015
    const-string v1, "pref_video_quality_key"

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1022
    .end local v0           #vidosizeValue:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1023
    invoke-virtual {p0, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private startChangePanel(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 547
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 548
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 550
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    sget v2, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 553
    return-void
.end method


# virtual methods
.method public closePopWindowNoAni()V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindowNoAni()V

    .line 972
    :cond_0
    return-void
.end method

.method public closePopWindowOnly()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 965
    :cond_0
    return-void
.end method

.method public closeSubPanelOnly()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 959
    return-void
.end method

.method public collapseAllPanelsControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowNoAni()V

    .line 1251
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 1252
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 1255
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 1256
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {p0, v1, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0
.end method

.method public collapsePanelsControls()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1237
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->onPanelStartClose()Z

    .line 1246
    :cond_0
    :goto_0
    return v0

    .line 1240
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1241
    invoke-virtual {p0, v1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setOpen(ZZ)V

    goto :goto_0

    .line 1243
    :cond_2
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1246
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->updatePanelIdleState()Z

    .line 748
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandleTouchEvnt:Z

    if-nez v0, :cond_0

    .line 749
    const/4 v0, 0x1

    .line 751
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/hwcamera/hwui/Panel;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public displaySeekbar()V
    .locals 3

    .prologue
    .line 945
    const/4 v0, 0x2

    .line 946
    .local v0, SelectID:I
    const v1, 0x7f0c008c

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    .line 947
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 948
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    .line 949
    return-void
.end method

.method public dissmissPopWindowNoAni()V
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindowNoAni()V

    .line 1160
    :cond_0
    return-void
.end method

.method public getSeekBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSeekBarView:Landroid/view/View;

    .line 954
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingmenu()[Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:[Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method public getSupperPanelHeight(FII)I
    .locals 5
    .parameter "ration"
    .parameter "step"
    .parameter "screenHeight"

    .prologue
    .line 1230
    int-to-float v4, p3

    mul-float v3, v4, p1

    .line 1231
    .local v3, superPanelHeightTemp:F
    int-to-float v4, p2

    div-float v0, v3, v4

    .line 1232
    .local v0, fSupperStepBy:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1233
    .local v1, iSupperStepBy:I
    mul-int v2, v1, p2

    .line 1234
    .local v2, superPanelHeight:I
    return v2
.end method

.method public initImageSubPanel()V
    .locals 3

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1144
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    return-void
.end method

.method public initMenuCommon()V
    .locals 11

    .prologue
    const/16 v9, 0xb4

    const/high16 v8, 0x43a5

    const/high16 v10, 0x4387

    .line 244
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 245
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 246
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v5, 0x0

    .line 247
    .local v5, screenWidth:I
    const/4 v4, 0x0

    .line 250
    .local v4, screenHeight:I
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v6, v7, :cond_0

    .line 251
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 252
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 260
    :goto_0
    const/high16 v2, 0x3f10

    .line 261
    .local v2, ratio_portrait:F
    const/high16 v1, 0x3f20

    .line 272
    .local v1, ratio_landscape:F
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    invoke-virtual {p0, v2, v6, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->getSupperPanelHeight(FII)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    .line 273
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    invoke-virtual {p0, v1, v6, v5}, Lcom/android/hwcamera/hwui/SuperPanel;->getSupperPanelHeight(FII)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    .line 274
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 276
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 277
    const/high16 v6, 0x3fc0

    iget v7, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sget v7, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sget v7, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 278
    invoke-static {v9}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelContentLength(I)V

    .line 279
    invoke-static {v9}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 280
    const/16 v6, 0x24

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    .line 281
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuHeight(I)V

    .line 282
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuWidth(I)V

    .line 303
    :goto_1
    invoke-static {v5}, Lcom/android/hwcamera/hwui/MenuCommon;->setScreenWidth(I)V

    .line 304
    invoke-static {v4}, Lcom/android/hwcamera/hwui/MenuCommon;->setScreenHeight(I)V

    .line 305
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelSubContentLengthLandscape(I)V

    .line 306
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelSubContentLengthPortrait(I)V

    .line 307
    return-void

    .line 254
    .end local v1           #ratio_landscape:F
    .end local v2           #ratio_portrait:F
    :cond_0
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 255
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 284
    .restart local v1       #ratio_landscape:F
    .restart local v2       #ratio_portrait:F
    :cond_1
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    sget v7, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    mul-int/2addr v6, v7

    sget v7, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 286
    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    iput v6, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 289
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 291
    const/16 v6, 0x5a

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 292
    const/4 v6, 0x7

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    .line 297
    :goto_2
    const/high16 v6, 0x4270

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setPanelContentLength(I)V

    .line 299
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuHeight(I)V

    .line 300
    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuWidth(I)V

    goto :goto_1

    .line 294
    :cond_2
    const/16 v6, 0x3c

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setMenuCollapseLength(I)V

    .line 295
    const/16 v6, 0xa

    invoke-static {v6}, Lcom/android/hwcamera/hwui/MenuCommon;->setThirdMenuMarginEdge(I)V

    goto :goto_2
.end method

.method public initSettingmenu([Lcom/android/hwcamera/hwui/RotateLinearLayout;)V
    .locals 0
    .parameter "vi"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:[Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 924
    return-void
.end method

.method public initVideoSubPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1131
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isPopWindowShowing()Z
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v0

    return v0
.end method

.method public isSuperMenuOpened()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    return v0
.end method

.method public menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "modeValue"
    .parameter "key"
    .parameter "MenuItem"

    .prologue
    .line 1077
    if-nez p1, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    const/4 v4, 0x0

    .line 1081
    .local v4, restId:I
    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v5, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/hwcamera/IconListPreference;

    .line 1084
    .local v2, list:Lcom/android/hwcamera/IconListPreference;
    const-string v5, "pref_video_quality_key"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    const/16 v6, 0x440

    if-ne v5, v6, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 1086
    const v4, 0x7f0200be

    .line 1098
    :cond_2
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    .line 1099
    .local v3, menuItem:Lcom/android/hwcamera/RotateImageView;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 1100
    invoke-virtual {v3, v4}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 1087
    .end local v3           #menuItem:Lcom/android/hwcamera/RotateImageView;
    :cond_3
    const-string v5, "pref_video_quality_key"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mQHD_videosize_Height:I

    const/16 v6, 0x220

    if-ne v5, v6, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_4

    .line 1089
    const v4, 0x7f0200c7

    goto :goto_1

    .line 1092
    :cond_4
    invoke-virtual {v2}, Lcom/android/hwcamera/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 1093
    .local v0, drawIds:[I
    invoke-virtual {v2, p1}, Lcom/android/hwcamera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1094
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 1095
    aget v4, v0, v1

    goto :goto_1
.end method

.method public onChangeToBackCamera(Z)V
    .locals 1
    .parameter "isOnCameraState"

    .prologue
    .line 995
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 996
    if-eqz p1, :cond_0

    .line 997
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraStateMenu(ZZ)V

    .line 1001
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoStateMeun(ZZ)V

    goto :goto_0
.end method

.method public onChangeToFrontCamera(Z)V
    .locals 1
    .parameter "isOnCameraState"

    .prologue
    .line 986
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    .line 987
    if-eqz p1, :cond_0

    .line 988
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setCameraStateMenu(ZZ)V

    .line 992
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    invoke-direct {p0, p1, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->setVideoStateMeun(ZZ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const v13, 0x7f020137

    const v12, 0x7f020136

    const/4 v11, 0x0

    .line 561
    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOnAnimating()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    const/4 v0, -0x1

    .line 566
    .local v0, SelectID:I
    const/4 v4, 0x1

    .line 567
    .local v4, isHasData:Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 569
    :pswitch_0
    const/4 v0, 0x0

    .line 570
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 571
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 572
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 573
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setVidoState(Z)V

    .line 574
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setCameraID(I)V

    .line 575
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setImageCaptureIntent(Z)V

    .line 577
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsInternalStorageExist:Z

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setInternalStorageExist(Z)V

    .line 580
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsExternalStorageExist:Z

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/hwui/SettingsView;->setExternalStorageExist(Z)V

    .line 582
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v8}, Lcom/android/hwcamera/hwui/SettingsView;->viewInit()Z

    move-result v4

    .line 583
    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_3

    .line 584
    :cond_2
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v8, v11}, Lcom/android/hwcamera/hwui/SettingsView;->setReviewEnable(Z)V

    .line 586
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v8, v11}, Lcom/android/hwcamera/hwui/SettingsView;->setStorageLocationEnable(Z)V

    .line 589
    :cond_3
    if-eqz v4, :cond_0

    .line 635
    :cond_4
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v8

    if-nez v8, :cond_9

    .line 636
    invoke-virtual {p1, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 637
    iput v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    .line 638
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 639
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v8, 0x4

    if-ge v1, v8, :cond_7

    .line 640
    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    add-int/2addr v8, v1

    rem-int/lit8 v2, v8, 0x4

    .line 641
    .local v2, index:I
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubPanel:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 642
    .local v7, vie:Landroid/view/View;
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8, v7, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 595
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v7           #vie:Landroid/view/View;
    :pswitch_1
    const/4 v0, 0x1

    .line 596
    const/4 v3, 0x1

    .line 597
    .local v3, isDistortionState:Z
    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    invoke-direct {p0, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->initSecondLevelMenu(Z)Z

    move-result v3

    .line 598
    if-eqz v3, :cond_4

    goto/16 :goto_0

    .line 606
    .end local v3           #isDistortionState:Z
    :pswitch_2
    const/4 v0, 0x2

    .line 607
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->initThirdLevelMenu()Z

    move-result v5

    .line 608
    .local v5, isState:Z
    if-eqz v5, :cond_4

    goto/16 :goto_0

    .line 615
    .end local v5           #isState:Z
    :pswitch_3
    const/4 v0, 0x3

    .line 616
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    if-eqz v8, :cond_6

    .line 618
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    iget v10, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mQHD_videosize_Height:I

    invoke-virtual {v8, v9, v10}, Lcom/android/hwcamera/hwui/ListSubSettingView;->set_videoSize_height(II)V

    .line 620
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v4

    .line 626
    :cond_5
    :goto_2
    if-nez v4, :cond_4

    goto/16 :goto_0

    .line 622
    :cond_6
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v9, "pref_camera_shootmode_key"

    invoke-virtual {v8, v9}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 623
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

    invoke-direct {p0, v8}, Lcom/android/hwcamera/hwui/SuperPanel;->initSubMeu(Lcom/android/hwcamera/hwui/ListSubSettingView;)Z

    move-result v4

    goto :goto_2

    .line 645
    .restart local v1       #i:I
    :cond_7
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 646
    .local v6, message:Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v6, Landroid/os/Message;->what:I

    .line 647
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 648
    iget-boolean v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuState:Z

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    if-eqz v8, :cond_8

    .line 649
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 651
    :cond_8
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 665
    .end local v1           #i:I
    .end local v6           #message:Landroid/os/Message;
    :goto_3
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v8}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v8

    iput v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    goto/16 :goto_0

    .line 653
    :cond_9
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 654
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v8, v11}, Lcom/android/hwcamera/hwui/SettingsView;->dismissPopupWindow(Z)V

    .line 656
    :cond_a
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 657
    invoke-virtual {p1, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 658
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 659
    iget v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastDisplayID:I

    iget v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v9, v0, v9

    add-int/lit8 v9, v9, 0x4

    rem-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_b

    .line 660
    iget-object v8, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    iget v9, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mMessageOffset:I

    sub-int v9, v0, v9

    add-int/lit8 v9, v9, 0x4

    rem-int/lit8 v9, v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_3

    .line 662
    :cond_b
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closeSubPanelOnly()V

    goto :goto_3

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0059
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/hwcamera/hwui/Panel;->onFinishInflate()V

    .line 315
    const v3, 0x7f0c005e

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    .line 316
    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    .line 318
    const v3, 0x7f0c005b

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v3, 0x7f0c0059

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v3, 0x7f0c005a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    const v3, 0x7f0c005c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v3, 0x7f0c00d8

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 324
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f050019

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 325
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f05001b

    invoke-virtual {v3, v4, v5}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 327
    new-instance v3, Lcom/android/hwcamera/hwui/SettingsView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/hwcamera/hwui/SettingsView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/SuperPanel;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    .line 329
    const v3, 0x7f0c00e1

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 331
    .local v0, mShootModeList:Landroid/widget/ListView;
    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 332
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 334
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_camera_shootmode_key"

    invoke-direct {v3, v4, v0, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mShootMode:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 336
    const v3, 0x7f0c00e3

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 337
    .local v1, mVideoSizeList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_video_quality_key"

    invoke-direct {v3, v4, v1, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mVideoSize:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 339
    const v3, 0x7f0c00dd

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 340
    .local v2, whiteBalanceList:Landroid/widget/ListView;
    new-instance v3, Lcom/android/hwcamera/hwui/ListSubSettingView;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    const-string v5, "pref_camera_whitebalance_key"

    invoke-direct {v3, v4, v2, v5}, Lcom/android/hwcamera/hwui/ListSubSettingView;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mWhiteBalance:Lcom/android/hwcamera/hwui/ListSubSettingView;

    .line 342
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    .line 343
    return-void
.end method

.method public onPanelClosed(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 3
    .parameter "panel"

    .prologue
    const/4 v2, 0x0

    .line 387
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isPopWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->closePopWindowOnly()V

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    .line 392
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 395
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mLastSubPanel:Landroid/view/View;

    .line 396
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onPanelStateChange(Z)V

    .line 399
    :cond_2
    return-void
.end method

.method public onPanelOpened(Lcom/android/hwcamera/hwui/Panel;)V
    .locals 2
    .parameter "panel"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onPanelStateChange(Z)V

    .line 405
    :cond_0
    return-void
.end method

.method public onPanelStartClose()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 408
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SettingsView;->isPopupWindowShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 411
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    .line 422
    :goto_0
    return v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsSubMenuClosing:Z

    .line 417
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->startChangePanel(I)V

    goto :goto_0

    .line 422
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshWhitebalanceIcon(Z)V
    .locals 7
    .parameter "isOnCameraState"

    .prologue
    .line 1104
    const-string v0, "pref_video_whitebalance_key"

    .line 1105
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x2

    .line 1106
    .local v2, menuIndex:I
    const v1, 0x7f0c005b

    .line 1107
    .local v1, menuId:I
    if-eqz p1, :cond_1

    .line 1108
    const-string v0, "pref_camera_whitebalance_key"

    .line 1109
    const v1, 0x7f0c005a

    .line 1110
    const/4 v2, 0x1

    .line 1117
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v4, v0}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1118
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e017f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, whitebalanceValue:Ljava/lang/String;
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->menuItemIconRefresh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1121
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 1127
    .end local v3           #whitebalanceValue:Ljava/lang/String;
    :goto_1
    return-void

    .line 1112
    :cond_1
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1113
    const v1, 0x7f0c005a

    .line 1114
    const/4 v2, 0x1

    goto :goto_0

    .line 1123
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/RotateImageView;

    const v5, 0x7f0200e7

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/RotateImageView;->setImageResource(I)V

    .line 1125
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_1
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 766
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 767
    return-void
.end method

.method public relase()V
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 941
    :cond_1
    return-void
.end method

.method public setAnimateHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 798
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 800
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 802
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    goto :goto_0
.end method

.method public setAnimateWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 811
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I

    .line 812
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->isSuperMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 814
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->setSubPanelOriginParam()V

    goto :goto_0
.end method

.method public setCameraCaptureIntent(Z)V
    .locals 0
    .parameter "isCameraCaptureIntent"

    .prologue
    .line 1167
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsCameraCaptureIntent:Z

    .line 1168
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 790
    return-void
.end method

.method public setCurrentState(Z)V
    .locals 0
    .parameter "isvideo"

    .prologue
    .line 1150
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideo:Z

    .line 1151
    return-void
.end method

.method public setFirstLevelMenuEnableByShoot(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1206
    new-instance v1, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    .line 1208
    .local v1, shootCommon:Lcom/android/hwcamera/hwui/ShootCommon;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ShootCommon;->setScenemodeDefaultValue(Lcom/android/hwcamera/PreferenceGroup;)Ljava/lang/String;

    .line 1211
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v0

    .line 1214
    .local v0, effectDistortionEnable:[Z
    iget v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mCameraId:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hw_front_camera_support_coloreffect"

    invoke-static {v2, v3, v5}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1216
    :cond_0
    const/4 v2, 0x2

    aget-boolean v3, v0, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 1218
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_distortion_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1219
    aget-boolean v2, v0, v5

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/ShootCommon;->isWhiteBalanceEnable(Z)Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_2
    aget-boolean v2, v0, v4

    invoke-virtual {p0, v4, v2}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0
.end method

.method public setGPSstatus(Z)V
    .locals 2
    .parameter "status"

    .prologue
    .line 908
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mGPSstatus:Z

    .line 909
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mGPSstatus:Z

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setGPSstatus(Z)V

    .line 912
    :cond_0
    return-void
.end method

.method public setIsExternalStorageExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsExternalStorageExist:Z

    .line 785
    return-void
.end method

.method public setIsInternalStorageExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsInternalStorageExist:Z

    .line 772
    return-void
.end method

.method public setIsSupportVideoIntentSetVideoSize(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 777
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoIntentSupportSetVideoSize:Z

    .line 778
    return-void
.end method

.method public setMovieStudioVideoQuality(Z)V
    .locals 0
    .parameter "isVideoCapture480P"

    .prologue
    .line 1172
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCapture480P:Z

    .line 1173
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 9
    .parameter "degree"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f02000d

    const/high16 v4, 0x3fc0

    .line 824
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    if-eqz v3, :cond_0

    .line 825
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSettingsView:Lcom/android/hwcamera/hwui/SettingsView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setOrientationEx(I)V

    .line 828
    :cond_0
    const v3, 0x7f0c005c

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 830
    const v3, 0x7f0c005b

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 832
    const v3, 0x7f0c005a

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 834
    const v3, 0x7f0c0059

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/RotateImageView;->setDegree(I)V

    .line 836
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 837
    .local v0, mLineLayout:Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 841
    .local v2, titleView:Landroid/view/View;
    div-int/lit8 v3, p1, 0x5a

    rem-int/lit8 v1, v3, 0x4

    .line 842
    .local v1, orientation:I
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v3, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    .line 845
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 847
    if-nez v1, :cond_2

    .line 848
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 849
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 851
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 853
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f05001a

    const v5, 0x7f05001c

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    .line 906
    :cond_1
    :goto_0
    return-void

    .line 854
    :cond_2
    if-ne v1, v8, :cond_3

    .line 855
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 856
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 858
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020015

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 860
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f050017

    const v5, 0x7f050018

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 861
    :cond_3
    if-ne v1, v6, :cond_4

    .line 862
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 863
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 865
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020015

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 867
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f050019

    const v5, 0x7f05001b

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto :goto_0

    .line 868
    :cond_4
    if-ne v1, v7, :cond_1

    .line 869
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateWidth(I)V

    .line 870
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUB_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/hwcamera/hwui/SuperPanel;->SUM_SUBMENU_DISPLAY_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->CLOSE_SUB_MENU_STEP_PX:I

    .line 872
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f020010

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 874
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f05001d

    const v5, 0x7f05001e

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 879
    :cond_5
    if-nez v1, :cond_6

    .line 880
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 882
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SuperPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 884
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f050019

    const v5, 0x7f05001b

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 885
    :cond_6
    if-ne v1, v8, :cond_7

    .line 886
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 888
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 890
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f05001a

    const v5, 0x7f05001c

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 891
    :cond_7
    if-ne v1, v6, :cond_8

    .line 892
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Landscape:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 894
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    const v4, 0x7f02000f

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 896
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f05001d

    const v5, 0x7f05001e

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0

    .line 897
    :cond_8
    if-ne v1, v7, :cond_1

    .line 898
    iget v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSupperPanelLength_Portrait:I

    invoke-virtual {p0, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setAnimateHeight(I)V

    .line 900
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v5}, Landroid/widget/ViewFlipper;->setBackgroundResource(I)V

    .line 902
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentSub:Landroid/view/View;

    check-cast v3, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v4, 0x7f050017

    const v5, 0x7f050018

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setInOutAnimation(II)V

    goto/16 :goto_0
.end method

.method public setPanelItemEnable(IZ)V
    .locals 2
    .parameter "index"
    .parameter "isEnable"

    .prologue
    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, itemId:I
    packed-switch p1, :pswitch_data_0

    .line 1204
    :goto_0
    return-void

    .line 1189
    :pswitch_0
    const v0, 0x7f0c0059

    .line 1203
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/hwcamera/RotateImageView;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1192
    :pswitch_1
    const v0, 0x7f0c005a

    .line 1193
    goto :goto_1

    .line 1195
    :pswitch_2
    const v0, 0x7f0c005b

    .line 1196
    goto :goto_1

    .line 1198
    :pswitch_3
    const v0, 0x7f0c005c

    .line 1199
    goto :goto_1

    .line 1187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 755
    return-void
.end method

.method public setVideoCaptureIntent(Z)V
    .locals 0
    .parameter "isVideoCaptureIntent"

    .prologue
    .line 1163
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsVideoCaptureIntent:Z

    .line 1164
    return-void
.end method

.method public setVideoRecordQuality(Z)V
    .locals 0
    .parameter "lowRecord"

    .prologue
    .line 1177
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mIsLowVideoRecord:Z

    .line 1178
    return-void
.end method

.method public set_videoSize_title(II)V
    .locals 0
    .parameter "height"
    .parameter "qhdHeight"

    .prologue
    .line 1181
    iput p2, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mQHD_videosize_Height:I

    .line 1182
    iput p1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->m1080P_videosize_Height:I

    .line 1183
    return-void
.end method

.method public unInitSettingmenu()V
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->settingmenu:[Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 928
    return-void
.end method

.method public unsetComboPreferences()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 794
    return-void
.end method

.method public updatePanelIdleState()Z
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 915
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 917
    .local v0, closemenu:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 918
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuHandler:Landroid/os/Handler;

    sget v2, Lcom/android/hwcamera/hwui/SuperPanel;->MAXIDLETIME:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 919
    const/4 v1, 0x1

    return v1
.end method

.method public updateSubMenuState(I)V
    .locals 1
    .parameter "mstep"

    .prologue
    .line 509
    new-instance v0, Lcom/android/hwcamera/hwui/SuperPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/hwcamera/hwui/SuperPanel$1;-><init>(Lcom/android/hwcamera/hwui/SuperPanel;I)V

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/hwui/SuperPanel;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void
.end method
