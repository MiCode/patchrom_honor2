.class public Lcom/android/hwcamera/hwui/SettingsView;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;
    }
.end annotation


# instance fields
.field private effectDistortionEnable:[Z

.field private mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mCameraID:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mCurTouchX:F

.field private mCurTouchY:F

.field private mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

.field private mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

.field mIsEnableImage:Z

.field mIsEnableIso:Z

.field mIsEnableRed:Z

.field mIsEnableReview:Z

.field mIsEnableSceneMode:Z

.field mIsEnableSteady:Z

.field mIsEnableWhite:Z

.field private mIsExternalStorageExist:Z

.field mIsImageCaptureIntent:Z

.field private mIsInternalStorageExist:Z

.field private mIsVideo:Z

.field private mLastTouchView:Landroid/view/View;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewListenerID:I

.field private mListViewPreListenerID:I

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mOrientation:I

.field private mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mResources:Landroid/content/res/Resources;

.field private mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

.field private mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mScenceDefaultValue:Ljava/lang/String;

.field private mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mSettingsRoot:Landroid/widget/LinearLayout;

.field private mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

.field private mShutterSoundStatus:Z

.field private mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSoundStateFlag:Z

.field private mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

.field private mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

.field private mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mThreshold:F

.field private mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

.field private mhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/SuperPanel;)V
    .locals 5
    .parameter "context"
    .parameter "rootLinear"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 68
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    .line 69
    iput v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 70
    iput v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 71
    iput v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 72
    iput v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 73
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    .line 113
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 121
    iput v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    .line 123
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 128
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableReview:Z

    .line 131
    const/4 v1, 0x2

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    .line 132
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    .line 134
    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    .line 138
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateFlag:Z

    .line 149
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsInternalStorageExist:Z

    .line 153
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsExternalStorageExist:Z

    .line 861
    new-instance v1, Lcom/android/hwcamera/hwui/SettingsView$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SettingsView$1;-><init>(Lcom/android/hwcamera/hwui/SettingsView;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mhandler:Landroid/os/Handler;

    .line 157
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    .line 158
    const v1, 0x7f0c00db

    invoke-virtual {p2, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    .line 160
    const v1, 0x7f0c00da

    invoke-virtual {p2, v1}, Lcom/android/hwcamera/hwui/SuperPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 161
    .local v0, scrollView:Landroid/widget/ScrollView;
    if-eqz v0, :cond_0

    .line 163
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 164
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 167
    :cond_0
    iput-object p2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    .line 169
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    .line 170
    return-void

    .line 131
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/SettingsView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/hwcamera/hwui/SettingsView;)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    return-object v0
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 891
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 892
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 894
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 910
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 912
    return-void
.end method

.method private addToRootView(Lcom/android/hwcamera/hwui/SingleTextview;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 916
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/hwcamera/hwui/ImageLine;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/ImageLine;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 917
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 919
    return-void
.end method

.method private anctionUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1429
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1430
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1431
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1433
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1435
    return-void
.end method

.method private beautyUpdatesItems()V
    .locals 0

    .prologue
    .line 1395
    return-void
.end method

.method private burstUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1372
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1373
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1374
    return-void
.end method

.method private clearTouchXY()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1470
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 1471
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 1472
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 1473
    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 1474
    return-void
.end method

.method private dealConflictMenuforCamera()V
    .locals 7

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_coloreffect_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e0186

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, value:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->effectChangedUpdateItems(Ljava/lang/String;)V

    .line 344
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    const-string v1, "single"

    .line 345
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v3}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->shootChangeUpdateItems(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v4, "pref_camera_distortion_key"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e0222

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, distortionValue:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->distortionChangedUpdateItems(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private distortionChangedUpdateItems(Ljava/lang/String;)V
    .locals 5
    .parameter "Value"

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "pref_camera_shootmode_key"

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0208

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, shootValue:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 1260
    const-string v0, "single"

    .line 1279
    :cond_0
    return-void
.end method

.method private effectChangedUpdateItems(Ljava/lang/String;)V
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1198
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v3, "pref_camera_shootmode_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0208

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 1201
    const-string v1, "single"

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/ShootCommon;->getScenemodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, scenesModeValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    aget-boolean v2, v2, v6

    if-nez v2, :cond_4

    .line 1207
    const-string v2, "hdr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "panorama"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1208
    :cond_1
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1209
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1210
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1211
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1221
    :goto_0
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1235
    :goto_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1236
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1237
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    if-eqz v2, :cond_6

    .line 1238
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1242
    :goto_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1243
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1244
    return-void

    .line 1212
    :cond_2
    const-string v2, "lowlight"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1213
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1214
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1215
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1216
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    goto :goto_0

    .line 1218
    :cond_3
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1219
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    :cond_4
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1224
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->redSteadyEnableByShoot(Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->sceneChangeedUpdateItems(Ljava/lang/String;)V

    .line 1226
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    goto :goto_1

    .line 1228
    :cond_5
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1229
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSceneMode:Z

    .line 1230
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1231
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1232
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    goto :goto_1

    .line 1240
    :cond_6
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-virtual {v2, v7, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_2
.end method

.method private getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "key"
    .parameter "list"

    .prologue
    .line 959
    const-string v4, ""

    .line 960
    .local v4, summary:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, defaultValue:Ljava/lang/String;
    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 968
    const/4 v0, 0x0

    .line 974
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v5, p1, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, mvalue:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 976
    .local v1, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    .line 977
    invoke-virtual {p2, v3}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 978
    .local v2, index:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 979
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    .end local v2           #index:I
    :cond_1
    return-object v4

    .line 970
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v3           #mvalue:Ljava/lang/String;
    :cond_2
    const-string v5, "pref_camera_scenemode_key"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method private getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z
    .locals 4
    .parameter "key"
    .parameter "list"

    .prologue
    .line 990
    const/4 v0, 0x0

    .line 991
    .local v0, bCheckboxState:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    if-eqz v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, viewValue:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 996
    .end local v1           #viewValue:Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private groupUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1403
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1404
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1405
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1411
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1413
    return-void
.end method

.method private hdrUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1420
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1421
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1422
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1423
    return-void
.end method

.method private initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;
    .locals 2
    .parameter "view"
    .parameter "key"
    .parameter "id"

    .prologue
    .line 935
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 936
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    .line 937
    const/4 v1, 0x0

    .line 944
    :goto_0
    return-object v1

    .line 939
    :cond_0
    new-instance p1, Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .end local p1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;-><init>(Landroid/content/Context;)V

    .line 940
    .restart local p1
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextTitle(Ljava/lang/String;)V

    .line 941
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setId(I)V

    .line 943
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V

    move-object v1, p1

    .line 944
    goto :goto_0
.end method

.method private initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;
    .locals 2
    .parameter "view"
    .parameter "key"
    .parameter "id"

    .prologue
    .line 922
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 923
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    if-nez v0, :cond_0

    .line 924
    const/4 v1, 0x0

    .line 931
    :goto_0
    return-object v1

    .line 926
    :cond_0
    new-instance p1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .end local p1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    .line 927
    .restart local p1
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 929
    invoke-direct {p0, p2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getViewCheckBoxState(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 930
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    move-object v1, p1

    .line 931
    goto :goto_0
.end method

.method private initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;
    .locals 1
    .parameter "view"
    .parameter "title"
    .parameter "id"

    .prologue
    .line 949
    new-instance p1, Lcom/android/hwcamera/hwui/SingleTextview;

    .end local p1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;-><init>(Landroid/content/Context;)V

    .line 950
    .restart local p1
    invoke-virtual {p1, p2}, Lcom/android/hwcamera/hwui/SingleTextview;->setContent(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p1, p3}, Lcom/android/hwcamera/hwui/SingleTextview;->setId(I)V

    .line 952
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleTextview;)V

    .line 953
    return-object p1
.end method

.method private initWhitebanlance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "distortionKey"
    .parameter "whitebalanceKey"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v1, 0x1005

    invoke-direct {p0, v0, p2, v1}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 383
    :cond_0
    return-void
.end method

.method private lowlightUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1438
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1439
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1440
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1441
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1442
    return-void
.end method

.method private panoramaUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1350
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1351
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1353
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1363
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1364
    return-void
.end method

.method private pictureSizeInit()V
    .locals 5

    .prologue
    .line 400
    new-instance v2, Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 401
    const-string v1, ""

    .line 414
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v3, "pref_camera_picturesize_key"

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 415
    .local v0, list:Lcom/android/hwcamera/ListPreference;
    const-string v2, "pref_camera_picturesize_key"

    invoke-direct {p0, v2, v0}, Lcom/android/hwcamera/hwui/SettingsView;->getDoubleLineSummary(Ljava/lang/String;Lcom/android/hwcamera/ListPreference;)Ljava/lang/String;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0e0155

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextTitle(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setTextSummary(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v3, 0x100d

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setId(I)V

    .line 420
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Size:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/DoubleLineStyle;)V

    .line 421
    return-void
.end method

.method private redSteadyEnableByShoot(Ljava/lang/String;)V
    .locals 3
    .parameter "shootValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1283
    const-string v0, "single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1285
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    .line 1290
    :goto_0
    return-void

    .line 1287
    :cond_0
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableRed:Z

    .line 1288
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableSteady:Z

    goto :goto_0
.end method

.method private sceneChangeedUpdateItems(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1166
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1167
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1168
    iput-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1169
    const/4 v0, 0x0

    .line 1171
    .local v0, autoFocusEnable:Z
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1173
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    .line 1174
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    .line 1175
    iput-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    .line 1176
    const-string v1, "single"

    .line 1177
    .local v1, shootValue:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1180
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/hwui/ShootCommon;->getAutoFocusEnable(Ljava/lang/String;)Z

    move-result v0

    .line 1185
    .end local v1           #shootValue:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    if-eqz v2, :cond_2

    .line 1186
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mWhite_Banlance:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1190
    :goto_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableIso:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1191
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableImage:Z

    invoke-direct {p0, v2, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V

    .line 1192
    return-void

    .line 1188
    :cond_2
    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-boolean v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsEnableWhite:Z

    invoke-virtual {v2, v4, v3}, Lcom/android/hwcamera/hwui/SuperPanel;->setPanelItemEnable(IZ)V

    goto :goto_0
.end method

.method private setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 1065
    if-eqz p1, :cond_0

    .line 1066
    if-eqz p2, :cond_1

    .line 1067
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setEnableEx(Z)V

    .line 1068
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setEnableEx(Z)V

    .line 1071
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/DoubleLineStyle;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 1052
    if-eqz p1, :cond_0

    .line 1053
    if-eqz p2, :cond_1

    .line 1054
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setEnableEx(Z)V

    .line 1055
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setEnableEx(Z)V

    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setSingleLineEnable(Lcom/android/hwcamera/hwui/SingleTextview;Z)V
    .locals 1
    .parameter "view"
    .parameter "isEnable"

    .prologue
    .line 1078
    if-eqz p1, :cond_0

    .line 1079
    if-eqz p2, :cond_1

    .line 1080
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setEnableEx(Z)V

    .line 1081
    invoke-virtual {p1, p0}, Lcom/android/hwcamera/hwui/SingleTextview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setEnableEx(Z)V

    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/hwcamera/hwui/SingleTextview;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private setViewSelected(Landroid/view/View;Z)V
    .locals 3
    .parameter "selectView"
    .parameter "isNeedHighlight"

    .prologue
    const/4 v2, 0x0

    .line 440
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_2
    if-eqz p2, :cond_3

    .line 449
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 451
    :cond_3
    return-void
.end method

.method private shootChangeUpdateItems(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/ShootCommon;->transformVauletoInt(Ljava/lang/String;)I

    move-result v0

    .line 1298
    .local v0, index:I
    packed-switch v0, :pswitch_data_0

    .line 1342
    :goto_0
    :pswitch_0
    return-void

    .line 1304
    :pswitch_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->hdrUpdateItems()V

    goto :goto_0

    .line 1308
    :pswitch_2
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->groupUpdateItems()V

    goto :goto_0

    .line 1312
    :pswitch_3
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->burstUpdateItems()V

    goto :goto_0

    .line 1316
    :pswitch_4
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->smileUpdateItems()V

    goto :goto_0

    .line 1320
    :pswitch_5
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->beautyUpdatesItems()V

    goto :goto_0

    .line 1324
    :pswitch_6
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->panoramaUpdateItems()V

    goto :goto_0

    .line 1328
    :pswitch_7
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->anctionUpdateItems()V

    goto :goto_0

    .line 1332
    :pswitch_8
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->zslUpdateItems()V

    goto :goto_0

    .line 1336
    :pswitch_9
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->lowlightUpdateItems()V

    goto :goto_0

    .line 1298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private shutterSoundInit(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 357
    new-instance v1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 358
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e0248

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v2, 0x1016

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 360
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "on"

    invoke-virtual {v1, p1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, statevale:Ljava/lang/String;
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    .line 362
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundStatus:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 363
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    .line 364
    return-void
.end method

.method private smileUpdateItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1385
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1386
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1387
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->setSingleLineCheckBoxEnable(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Z)V

    .line 1388
    return-void
.end method

.method private soundStateInit(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 369
    new-instance v1, Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 370
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setTextContent(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v2, 0x1019

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setId(I)V

    .line 372
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    const-string v2, "on"

    invoke-virtual {v1, p1, v2}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, statevale:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateFlag:Z

    .line 374
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    iget-boolean v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateFlag:Z

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 375
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SettingsView;->addToRootView(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)V

    .line 376
    return-void
.end method

.method private updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1003
    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setSelected(Z)V

    .line 1004
    const-string v0, "off"

    .line 1005
    .local v0, strState:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->getCheckBoxState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    invoke-virtual {p1, v2}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 1011
    :goto_0
    return-object v0

    .line 1008
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 1009
    const-string v0, "on"

    goto :goto_0
.end method

.method private zslUpdateItems()V
    .locals 0

    .prologue
    .line 1426
    return-void
.end method


# virtual methods
.method public dismissPopupWindow(Z)V
    .locals 1
    .parameter "isCloseAll"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public dismissPopupWindowNoAni()V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindowNoAni()V

    .line 1447
    :cond_0
    return-void
.end method

.method public isPopupWindowShowing()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionUp(Landroid/view/View;)Z
    .locals 13
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 525
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    .line 526
    .local v11, viewId:I
    const-string v5, ""

    .line 527
    .local v5, KEY:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    .line 816
    :cond_0
    :goto_0
    :pswitch_0
    const-string v0, ""

    if-eq v5, v0, :cond_d

    .line 818
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 821
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 822
    .local v9, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 825
    new-instance v0, Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/hwui/SubPopupWindows;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    .line 832
    .end local v9           #msg:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-nez v0, :cond_a

    move v6, v12

    .line 858
    :goto_2
    return v6

    .line 529
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->displaySeekbar()V

    .line 531
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->getSeekBarView()Landroid/view/View;

    move-result-object v8

    .line 533
    .local v8, mImageview:Landroid/view/View;
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-direct {v0, v1, v8, v2}, Lcom/android/hwcamera/hwui/ImagejustmentView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/PreferenceGroup;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    .line 534
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initImagejustment(Lcom/android/hwcamera/ComboPreferences;)V

    .line 536
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImagejustmentView:Lcom/android/hwcamera/hwui/ImagejustmentView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;->registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V

    .line 537
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 541
    :cond_2
    const/16 v0, 0x1004

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto :goto_0

    .line 548
    .end local v8           #mImageview:Landroid/view/View;
    :pswitch_2
    const-string v5, "pref_camera_whitebalance_key"

    .line 549
    const/16 v0, 0x1005

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 554
    :pswitch_3
    const-string v5, "pref_camera_timer_key"

    .line 555
    const/16 v0, 0x1006

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 582
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v10

    .line 583
    .local v10, stateValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 584
    .local v7, key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_3

    .line 585
    const-string v7, "pref_camera_gps_key"

    .line 589
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v10}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/16 v0, 0x100a

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 591
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 587
    :cond_3
    const-string v7, "pref_video_gps_key"

    goto :goto_3

    .line 599
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #stateValue:Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShutterSoundTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v10

    .line 600
    .restart local v10       #stateValue:Ljava/lang/String;
    const/4 v7, 0x0

    .line 601
    .restart local v7       #key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_4

    .line 602
    const-string v7, "pref_camera_shutter_sound_key"

    .line 606
    :goto_4
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v10}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/16 v0, 0x1016

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 608
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 604
    :cond_4
    const-string v7, "pref_video_shutter_sound_key"

    goto :goto_4

    .line 617
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #stateValue:Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSoundStateTag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v10

    .line 618
    .restart local v10       #stateValue:Ljava/lang/String;
    const-string v0, "off"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 619
    const-string v10, "on"

    .line 624
    :goto_5
    const/4 v7, 0x0

    .line 625
    .restart local v7       #key:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v0, :cond_6

    .line 626
    const-string v7, "pref_camera_sound_state_key"

    .line 630
    :goto_6
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0, v7, v10}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/16 v0, 0x1019

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 632
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 621
    .end local v7           #key:Ljava/lang/String;
    :cond_5
    const-string v10, "off"

    goto :goto_5

    .line 628
    .restart local v7       #key:Ljava/lang/String;
    :cond_6
    const-string v7, "pref_video_sound_state_key"

    goto :goto_6

    .line 640
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #stateValue:Ljava/lang/String;
    :pswitch_7
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onRestorePreferencesClicked()V

    .line 641
    const/16 v0, 0x100b

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 642
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 649
    :pswitch_8
    const-string v5, "pref_camera_iso_key"

    .line 650
    const/16 v0, 0x100c

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 669
    :pswitch_9
    const-string v5, "pref_camera_picturesize_key"

    .line 671
    const/16 v0, 0x100d

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 676
    :pswitch_a
    const-string v5, "pref_camera_jpegquality_key"

    .line 677
    const/16 v0, 0x100e

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 726
    :pswitch_b
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v10

    .line 727
    .restart local v10       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_steady_video_key"

    invoke-interface {v0, v1, v10}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/16 v0, 0x1011

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 729
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 736
    .end local v10           #stateValue:Ljava/lang/String;
    :pswitch_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v10

    .line 737
    .restart local v10       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_redeyedetection_key"

    invoke-interface {v0, v1, v10}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/16 v0, 0x1008

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 740
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 747
    .end local v10           #stateValue:Ljava/lang/String;
    :pswitch_d
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SettingsView;->updateCheckBoxState(Lcom/android/hwcamera/hwui/SingleLineCheckBox;)Ljava/lang/String;

    move-result-object v10

    .line 748
    .restart local v10       #stateValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    const-string v1, "pref_camera_grid_key"

    invoke-interface {v0, v1, v10}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const/16 v0, 0x1009

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 751
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    goto/16 :goto_0

    .line 758
    .end local v10           #stateValue:Ljava/lang/String;
    :pswitch_e
    const/16 v0, 0x1013

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 759
    const-string v5, "pref_camera_save_location_key"

    .line 761
    goto/16 :goto_0

    .line 785
    :pswitch_f
    const/16 v0, 0x1015

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 786
    const-string v5, "pref_camera_scenemode_key"

    .line 788
    goto/16 :goto_0

    .line 790
    :pswitch_10
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v0, :cond_7

    .line 791
    const-string v5, "pref_videocamera_review_key"

    .line 795
    :goto_7
    const/16 v0, 0x1012

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    goto/16 :goto_0

    .line 793
    :cond_7
    const-string v5, "pref_camera_review_key"

    goto :goto_7

    .line 799
    :pswitch_11
    const/16 v0, 0x1017

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 800
    const-string v5, "pref_video_quality_level_key"

    .line 802
    goto/16 :goto_0

    .line 804
    :pswitch_12
    const/16 v0, 0x1018

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    .line 805
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v0, :cond_8

    .line 806
    const-string v5, "pref_video_antibanding_key"

    goto/16 :goto_0

    .line 808
    :cond_8
    const-string v5, "pref_camera_antibanding_key"

    .line 811
    goto/16 :goto_0

    .line 828
    :cond_9
    new-instance v0, Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/hwcamera/hwui/SubPopupWindows;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    goto/16 :goto_1

    .line 836
    :cond_a
    const-string v0, "pref_camera_scenemode_key"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 837
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setSceceDefaultValue(Ljava/lang/String;)V

    .line 840
    :cond_b
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 841
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeySettingView()Z

    .line 842
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setOrientationEx(I)V

    .line 843
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    new-instance v1, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/hwcamera/hwui/SettingsView$PopupWindowlListener;-><init>(Lcom/android/hwcamera/hwui/SettingsView;Lcom/android/hwcamera/hwui/SettingsView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->registerListeners(Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;)V

    .line 844
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto/16 :goto_2

    .line 846
    :cond_c
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, v12}, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissPopupWindows(Z)V

    .line 847
    iput v12, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto/16 :goto_2

    .line 850
    :cond_d
    iget v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewListenerID:I

    iput v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListViewPreListenerID:I

    goto/16 :goto_2

    .line 527
    :pswitch_data_0
    .packed-switch 0x1004
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_10
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_5
        :pswitch_11
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 471
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 472
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 473
    invoke-direct {p0, p1, v3}, Lcom/android/hwcamera/hwui/SettingsView;->setViewSelected(Landroid/view/View;Z)V

    .line 474
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 475
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    goto :goto_0

    .line 479
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 480
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 481
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->clearTouchXY()V

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 483
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->onActionUp(Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 487
    :pswitch_2
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    .line 488
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    .line 489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    .line 491
    const/16 v1, 0x10e

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0x5a

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    if-ne v1, v2, :cond_3

    .line 492
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchX:F

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 495
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 498
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 501
    :cond_3
    iget v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCurTouchY:F

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/hwcamera/hwui/SettingsView;->mThreshold:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 504
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mLastTouchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 507
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 1091
    return-void
.end method

.method public setCameraID(I)V
    .locals 0
    .parameter "cameraID"

    .prologue
    .line 1477
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    .line 1478
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 1099
    return-void
.end method

.method public setExternalStorageExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 1465
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsExternalStorageExist:Z

    .line 1466
    return-void
.end method

.method public setGPSstatus(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SingleLineCheckBox;->setCheckBoxState(Z)V

    .line 1162
    :cond_0
    return-void
.end method

.method public setImageCaptureIntent(Z)V
    .locals 0
    .parameter "isImageCaptureIntent"

    .prologue
    .line 1454
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsImageCaptureIntent:Z

    .line 1455
    return-void
.end method

.method public setInternalStorageExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    .line 1459
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsInternalStorageExist:Z

    .line 1460
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1102
    iput p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mOrientation:I

    .line 1103
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSubPopWindow:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-virtual {v0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setOrientationEx(I)V

    .line 1106
    :cond_0
    return-void
.end method

.method public setPreferenceGroupEx(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 1095
    return-void
.end method

.method public setReviewEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1482
    return-void
.end method

.method public setStorageLocationEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    invoke-direct {p0, v0, p1}, Lcom/android/hwcamera/hwui/SettingsView;->setDoubleLineEnable(Lcom/android/hwcamera/hwui/DoubleLineStyle;Z)V

    .line 1487
    return-void
.end method

.method public setVidoState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1450
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    .line 1451
    return-void
.end method

.method public viewInit()Z
    .locals 7

    .prologue
    .line 173
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSettingsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 174
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_0

    .line 178
    new-instance v4, Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v6, p0, Lcom/android/hwcamera/hwui/SettingsView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/hwcamera/hwui/ShootCommon;-><init>(Lcom/android/hwcamera/ComboPreferences;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    .line 179
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/ShootCommon;->setScenemodeDefaultValue(Lcom/android/hwcamera/PreferenceGroup;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mScenceDefaultValue:Ljava/lang/String;

    .line 183
    :cond_0
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_scenemode_key"

    const/16 v6, 0x1015

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSceneMode:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 187
    :cond_1
    const-string v2, "pref_camera_review_key"

    .line 188
    .local v2, key:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_2

    .line 189
    const-string v2, "pref_videocamera_review_key"

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v5, 0x1012

    invoke-direct {p0, v4, v2, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mReview:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 194
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_iso_key"

    const/16 v6, 0x100c

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mISO:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 199
    :cond_3
    const-string v4, "pref_camera_distortion_key"

    const-string v5, "pref_camera_whitebalance_key"

    invoke-direct {p0, v4, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initWhitebanlance(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "pref_camera_antibanding_key"

    .line 203
    .local v0, antiKey:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_4

    .line 204
    const-string v0, "pref_video_antibanding_key"

    .line 206
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const/16 v5, 0x1018

    invoke-direct {p0, v4, v0, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mAntiBanding:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 208
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_contrast_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_exposure_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_6

    :cond_5
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_6

    .line 210
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e01f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1004

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mImage_Adjust:Lcom/android/hwcamera/hwui/SingleTextview;

    .line 217
    :cond_6
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_7

    .line 218
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_timer_key"

    const/16 v6, 0x1006

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mTimer:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 224
    :cond_7
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_video_quality_level_key"

    const/16 v6, 0x1017

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mVideo_quality_level:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 228
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_jpegquality_key"

    const/16 v6, 0x100e

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPicture_Quality:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 230
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_picturesize_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_8

    .line 232
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->pictureSizeInit()V

    .line 236
    :cond_8
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_9

    .line 237
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_steady_video_key"

    const/16 v6, 0x1011

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSteady_video:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 242
    :cond_9
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_shutter_sound_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_video_shutter_sound_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 244
    :cond_a
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_11

    .line 245
    const-string v4, "pref_camera_shutter_sound_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->shutterSoundInit(Ljava/lang/String;)V

    .line 253
    :cond_b
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_camera_sound_state_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v5, "pref_video_sound_state_key"

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 255
    :cond_c
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_12

    .line 256
    const-string v4, "pref_camera_sound_state_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->soundStateInit(Ljava/lang/String;)V

    .line 285
    :cond_d
    :goto_1
    iget v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mCameraID:I

    if-nez v4, :cond_e

    .line 286
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_redeyedetection_key"

    const/16 v6, 0x1008

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRed_eye_reduction:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 297
    :cond_e
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const-string v5, "pref_camera_grid_key"

    const/16 v6, 0x1009

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGrid:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 300
    const-string v1, "pref_camera_gps_key"

    .line 301
    .local v1, gpsKey:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-eqz v4, :cond_f

    .line 302
    const-string v1, "pref_video_gps_key"

    .line 304
    :cond_f
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    const/16 v5, 0x100a

    invoke-direct {p0, v4, v1, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleCheckboxMenu(Lcom/android/hwcamera/hwui/SingleLineCheckBox;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mGps_Tag:Lcom/android/hwcamera/hwui/SingleLineCheckBox;

    .line 309
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsInternalStorageExist:Z

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsExternalStorageExist:Z

    if-eqz v4, :cond_10

    .line 311
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    const-string v5, "pref_camera_save_location_key"

    const/16 v6, 0x1013

    invoke-direct {p0, v4, v5, v6}, Lcom/android/hwcamera/hwui/SettingsView;->initDoubleLineMenu(Lcom/android/hwcamera/hwui/DoubleLineStyle;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/DoubleLineStyle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mSaveLocation:Lcom/android/hwcamera/hwui/DoubleLineStyle;

    .line 317
    :cond_10
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e0137

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

    const/16 v5, 0x100b

    invoke-direct {p0, v4, v3, v5}, Lcom/android/hwcamera/hwui/SettingsView;->initSingleLineMenu(Lcom/android/hwcamera/hwui/SingleTextview;Ljava/lang/String;I)Lcom/android/hwcamera/hwui/SingleTextview;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mRestore_Default:Lcom/android/hwcamera/hwui/SingleTextview;

    .line 320
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_13

    .line 321
    const/4 v4, 0x0

    .line 331
    :goto_2
    return v4

    .line 247
    .end local v1           #gpsKey:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_11
    const-string v4, "pref_video_shutter_sound_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->shutterSoundInit(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_12
    const-string v4, "pref_video_sound_state_key"

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/SettingsView;->soundStateInit(Ljava/lang/String;)V

    goto :goto_1

    .line 323
    .restart local v1       #gpsKey:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    :cond_13
    iget-boolean v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mIsVideo:Z

    if-nez v4, :cond_14

    .line 327
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SettingsView;->mShootCommon:Lcom/android/hwcamera/hwui/ShootCommon;

    invoke-virtual {v5}, Lcom/android/hwcamera/hwui/ShootCommon;->getShootmodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/hwcamera/hwui/ShootCommon;->getEffectDistortionEnableByShoot(Ljava/lang/String;)[Z

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SettingsView;->effectDistortionEnable:[Z

    .line 329
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SettingsView;->dealConflictMenuforCamera()V

    .line 331
    :cond_14
    const/4 v4, 0x1

    goto :goto_2
.end method
