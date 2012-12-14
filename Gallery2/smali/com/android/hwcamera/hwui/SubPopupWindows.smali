.class public Lcom/android/hwcamera/hwui/SubPopupWindows;
.super Ljava/lang/Object;
.source "SubPopupWindows.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;
    }
.end annotation


# static fields
.field private static CURRENT_INDEX:I


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private dismissWindowOnlyListener:Landroid/view/animation/Animation$AnimationListener;

.field private isPopupWindowShowing:Z

.field private keyvalues:[Ljava/lang/CharSequence;

.field private listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mDefaultRect:Landroid/graphics/Rect;

.field private mFirstQuarterRect:Landroid/graphics/Rect;

.field private mHasDataState:Z

.field private mKey:Ljava/lang/String;

.field private mLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mList:Landroid/widget/ListView;

.field private mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

.field private mListpre:Lcom/android/hwcamera/ListPreference;

.field private mParent:Landroid/view/View;

.field private mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

.field private mPictureSizeDrawable:[I

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mRadioDrawable:[I

.field private mScenceDefaultValue:Ljava/lang/String;

.field private mSecondQuarterRect:Landroid/graphics/Rect;

.field private mSetValue:Ljava/lang/String;

.field private mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mShootModeadpter:Landroid/widget/SimpleAdapter;

.field private mThirdQuarterRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/hwcamera/hwui/SubPopupWindows;->CURRENT_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "parent"
    .parameter "mSuperPanel"
    .parameter "prefer"
    .parameter "key"

    .prologue
    .line 85
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/hwcamera/hwui/SubPopupWindows;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/hwui/SuperPanel;Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "parent"
    .parameter "mSuperPanel"
    .parameter "prefer"
    .parameter "key"
    .parameter "isNext"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPictureSizeDrawable:[I

    .line 48
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupWindowShowing:Z

    .line 59
    iput-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    .line 60
    iput-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    .line 61
    iput-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    .line 62
    iput-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    .line 66
    const-string v1, "auto"

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mScenceDefaultValue:Ljava/lang/String;

    .line 339
    new-instance v1, Lcom/android/hwcamera/hwui/SubPopupWindows$5;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$5;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissWindowOnlyListener:Landroid/view/animation/Animation$AnimationListener;

    .line 348
    new-instance v1, Lcom/android/hwcamera/hwui/SubPopupWindows$6;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$6;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 71
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParent:Landroid/view/View;

    .line 73
    iput-object p4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 74
    iput-object p5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    .line 76
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->getSettingmenu()[Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v1

    array-length v0, v1

    .line 78
    .local v0, length:I
    if-eqz p6, :cond_0

    .line 79
    sget v1, Lcom/android/hwcamera/hwui/SubPopupWindows;->CURRENT_INDEX:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/hwcamera/hwui/SubPopupWindows;->CURRENT_INDEX:I

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/SuperPanel;->getSettingmenu()[Lcom/android/hwcamera/hwui/RotateLinearLayout;

    move-result-object v1

    sget v2, Lcom/android/hwcamera/hwui/SubPopupWindows;->CURRENT_INDEX:I

    rem-int/2addr v2, v0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 83
    .end local v0           #length:I
    :cond_1
    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x13t 0x1t 0x2t 0x7ft
        0x14t 0x1t 0x2t 0x7ft
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x5ft 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SuperPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/SubPopupWindows;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/SubPopupWindows;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V

    return-void
.end method

.method private calculateRect()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, defaultXoffset:I
    const/4 v1, 0x0

    .line 366
    .local v1, defaultYoffset:I
    const/4 v2, 0x0

    .line 367
    .local v2, firstXoffset:I
    const/4 v3, 0x0

    .line 368
    .local v3, firstYoffset:I
    const/4 v4, 0x0

    .line 369
    .local v4, secondXoffset:I
    const/4 v5, 0x0

    .line 370
    .local v5, secondYoffset:I
    const/4 v6, 0x0

    .line 371
    .local v6, thirdXoffset:I
    const/4 v7, 0x0

    .line 373
    .local v7, thirdYoffset:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 375
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthLandscape()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getMenuCollapseLength()I

    move-result v9

    sub-int v0, v8, v9

    .line 376
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v1, v8, 0x2

    .line 377
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthPortrait()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 378
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v3

    .line 379
    move v4, v0

    .line 380
    move v5, v1

    .line 381
    move v6, v2

    .line 382
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuWidth()I

    move-result v9

    sub-int v7, v8, v9

    .line 397
    :goto_0
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v3, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    .line 398
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    .line 399
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v7, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    .line 400
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0, v1, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    .line 401
    return-void

    .line 385
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuWidth()I

    move-result v9

    sub-int v0, v8, v9

    .line 386
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthPortrait()I

    move-result v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 387
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getScreenWidth()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirdMenuHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 389
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelContentLength()I

    move-result v8

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getPanelSubContentLengthLandscape()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getMenuCollapseLength()I

    move-result v9

    sub-int v3, v8, v9

    .line 391
    invoke-static {}, Lcom/android/hwcamera/hwui/MenuCommon;->getThirtMenuMarginEdge()I

    move-result v4

    .line 392
    move v5, v1

    .line 393
    move v6, v2

    .line 394
    move v7, v3

    goto :goto_0
.end method

.method private initHaveKeydata()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    .line 254
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    .line 255
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    if-nez v3, :cond_0

    .line 256
    iput-boolean v5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    .line 289
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    .line 261
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, defalueValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    const-string v4, "pref_camera_scenemode_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mScenceDefaultValue:Ljava/lang/String;

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    .line 267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 268
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListpre:Lcom/android/hwcamera/ListPreference;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 271
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    const-string v4, "pref_camera_picturesize_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/hwcamera/CameraSettings;->isWideScreenSize(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    const-string v3, "pictureSizeImage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPictureSizeDrawable:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    :cond_3
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 281
    :cond_4
    const-string v3, "pictureSizeImage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mPictureSizeDrawable:[I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 288
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    goto/16 :goto_0
.end method

.method private setPopupShowing(Z)V
    .locals 0
    .parameter "isshowing"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupWindowShowing:Z

    .line 221
    return-void
.end method


# virtual methods
.method public ChangeRadioImg(IZ)V
    .locals 7
    .parameter "selectedItem"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    .line 230
    .local v0, currentShootAdapter:Landroid/widget/SimpleAdapter;
    const/4 v4, -0x1

    if-ne v4, p1, :cond_1

    .line 231
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 232
    .local v3, itemNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 234
    invoke-virtual {v0, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 235
    .local v1, currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "Radioimage"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v1           #currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 250
    .end local v2           #i:I
    .end local v3           #itemNum:I
    :goto_1
    return-void

    .line 242
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 243
    .restart local v1       #currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_2

    .line 244
    const-string v4, "Radioimage"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v4, "ItemTitle"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSetValue:Ljava/lang/String;

    .line 249
    :goto_2
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 247
    :cond_2
    const-string v4, "Radioimage"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mRadioDrawable:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public creatPopupWindows()V
    .locals 3

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->calculateRect()V

    .line 153
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    new-instance v2, Lcom/android/hwcamera/hwui/SubPopupWindows$3;

    invoke-direct {v2, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$3;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 163
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 171
    .local v0, photoFlyAnimation:Landroid/view/animation/Animation;
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 172
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V

    .line 174
    return-void

    .line 168
    .end local v0           #photoFlyAnimation:Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #photoFlyAnimation:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public dismissPopupWindowNoAni()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setVisibility(I)V

    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->setPopupShowing(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;->onPopupWindowDismiss()V

    .line 215
    :cond_0
    return-void
.end method

.method public dismissPopupWindows(Z)V
    .locals 3
    .parameter "isCloseParent"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 189
    .local v0, popWindowdismissAnimation:Landroid/view/animation/Animation;
    :goto_0
    if-eqz p1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 195
    :goto_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    new-instance v2, Lcom/android/hwcamera/hwui/SubPopupWindows$4;

    invoke-direct {v2, p0, v0}, Lcom/android/hwcamera/hwui/SubPopupWindows$4;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 207
    .end local v0           #popWindowdismissAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #popWindowdismissAnimation:Landroid/view/animation/Animation;
    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->dismissWindowOnlyListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public initHaveKeySettingView()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 90
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeydata()V

    .line 91
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 92
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    .line 94
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 95
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mKey:Ljava/lang/String;

    const-string v1, "pref_camera_picturesize_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    const v3, 0x7f04003d

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "pictureSizeImage"

    aput-object v5, v4, v8

    const-string v5, "ItemTitle"

    aput-object v5, v4, v6

    const-string v5, "Radioimage"

    aput-object v5, v4, v7

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->creatPopupWindows()V

    .line 116
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/hwcamera/hwui/SubPopupWindows$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$1;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/hwcamera/hwui/SubPopupWindows$2;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/SubPopupWindows$2;-><init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mHasDataState:Z

    return v0

    .line 104
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->listItem:Ljava/util/ArrayList;

    const v3, 0x7f04003c

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "ItemTitle"

    aput-object v5, v4, v8

    const-string v5, "Radioimage"

    aput-object v5, v4, v6

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mShootModeadpter:Landroid/widget/SimpleAdapter;

    goto :goto_0

    .line 99
    nop

    :array_0
    .array-data 0x4
        0xc5t 0x0t 0xct 0x7ft
        0xc3t 0x0t 0xct 0x7ft
        0xc4t 0x0t 0xct 0x7ft
    .end array-data

    .line 104
    :array_1
    .array-data 0x4
        0xc3t 0x0t 0xct 0x7ft
        0xc4t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->isPopupWindowShowing:Z

    return v0
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mListeners:Lcom/android/hwcamera/hwui/SubPopupWindows$Listenerex;

    .line 303
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 306
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 309
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    invoke-virtual {v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .local v0, mRelativeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 331
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mDefaultRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 332
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 316
    :sswitch_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mFirstQuarterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 317
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 321
    :sswitch_1
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSecondQuarterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 322
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 326
    :sswitch_2
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mThirdQuarterRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 327
    iget-object v1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mSettingMenu:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setSceceDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows;->mScenceDefaultValue:Ljava/lang/String;

    .line 407
    return-void
.end method
