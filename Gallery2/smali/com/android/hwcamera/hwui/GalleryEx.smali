.class public Lcom/android/hwcamera/hwui/GalleryEx;
.super Ljava/lang/Object;
.source "GalleryEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mEntryValue:[Ljava/lang/CharSequence;

.field private mGalleryExViewHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mIconIds:[I

.field private mIconListPreference:Lcom/android/hwcamera/IconListPreference;

.field private mKEY:Ljava/lang/String;

.field private mKeyValues:[Ljava/lang/CharSequence;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mParentView:Landroid/widget/LinearLayout;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mResources:Landroid/content/res/Resources;

.field private mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)V
    .locals 7
    .parameter "context"
    .parameter "inflater"
    .parameter "rootView"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    .line 30
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mResources:Landroid/content/res/Resources;

    .line 31
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 33
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 34
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 35
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    .line 36
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 37
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 38
    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    .line 42
    iput v5, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenWidth:I

    .line 43
    iput v5, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenHeight:I

    .line 44
    iput v5, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mGalleryExViewHeight:I

    .line 53
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    .line 54
    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mResources:Landroid/content/res/Resources;

    .line 56
    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 57
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenWidth:I

    .line 58
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenHeight:I

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, horizontalDip:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const/16 v2, 0x8c

    .line 66
    :goto_0
    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 69
    .local v3, horizontalPix:F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mGalleryExViewHeight:I

    .line 72
    .end local v1           #display:Landroid/view/Display;
    .end local v2           #horizontalDip:I
    .end local v3           #horizontalPix:F
    :cond_0
    invoke-virtual {p2, p4, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, colorEffectViewGroup:Landroid/view/View;
    const v4, 0x7f0c0040

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    .line 74
    const v4, 0x7f0c0042

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 75
    const v4, 0x7f0c0043

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    .line 78
    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    .line 79
    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v6}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 81
    return-void

    .line 64
    .end local v0           #colorEffectViewGroup:Landroid/view/View;
    .restart local v1       #display:Landroid/view/Display;
    .restart local v2       #horizontalDip:I
    :cond_1
    const/16 v2, 0x64

    goto :goto_0
.end method

.method private addItem(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .parameter "itemID"
    .parameter "text"
    .parameter "drawable"

    .prologue
    .line 133
    new-instance v0, Lcom/android/hwcamera/hwui/IconText;

    invoke-direct {v0, p2, p3}, Lcom/android/hwcamera/hwui/IconText;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 134
    .local v0, iconText:Lcom/android/hwcamera/hwui/IconText;
    new-instance v1, Lcom/android/hwcamera/hwui/IconTextView;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/hwcamera/hwui/IconTextView;-><init>(Landroid/content/Context;Lcom/android/hwcamera/hwui/IconText;)V

    .line 135
    .local v1, iconTextView:Lcom/android/hwcamera/hwui/IconTextView;
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/hwui/IconTextView;->setId(I)V

    .line 136
    invoke-virtual {v1, p0}, Lcom/android/hwcamera/hwui/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const/4 v2, 0x1

    return v2
.end method

.method private getIndexByValue(Ljava/lang/String;)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKeyValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKeyValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    .end local v0           #i:I
    :goto_1
    return v0

    .line 159
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setSelectedById(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 168
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 169
    .local v2, nItemCounts:I
    const/4 v0, 0x0

    .line 170
    .local v0, childView:Lcom/android/hwcamera/hwui/IconTextView;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #childView:Lcom/android/hwcamera/hwui/IconTextView;
    check-cast v0, Lcom/android/hwcamera/hwui/IconTextView;

    .line 172
    .restart local v0       #childView:Lcom/android/hwcamera/hwui/IconTextView;
    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/IconTextView;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 173
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/IconTextView;->setSelected(Z)V

    .line 170
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/hwcamera/hwui/IconTextView;->setSelected(Z)V

    goto :goto_1

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method public getHorizontalScrollView()Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getRotateLinearLayout()Lcom/android/hwcamera/hwui/RotateLinearLayout;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 6
    .parameter "KEY"

    .prologue
    .line 84
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    if-nez v3, :cond_1

    .line 85
    :cond_0
    const-string v3, "ColorEffects"

    const-string v4, "mParentView is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKEY:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mParentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 91
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/hwcamera/IconListPreference;

    iput-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    .line 92
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconIds:[I

    .line 93
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mEntryValue:[Ljava/lang/CharSequence;

    .line 94
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKeyValues:[Ljava/lang/CharSequence;

    .line 96
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mEntryValue:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mEntryValue:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconIds:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/hwcamera/hwui/GalleryEx;->addItem(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKEY:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/hwcamera/IconListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, colorEffectValue:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/GalleryEx;->getIndexByValue(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, selectedItemIndex:I
    invoke-direct {p0, v2}, Lcom/android/hwcamera/hwui/GalleryEx;->setSelectedById(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 144
    .local v1, viewId:I
    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/GalleryEx;->setSelectedById(I)V

    .line 146
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/hwcamera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, oldIndex:I
    if-eq v0, v1, :cond_0

    .line 148
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v2}, Lcom/android/hwcamera/IconListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mIconListPreference:Lcom/android/hwcamera/IconListPreference;

    invoke-virtual {v2, v1}, Lcom/android/hwcamera/IconListPreference;->setValueIndex(I)V

    .line 150
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    iget-object v3, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKEY:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mKeyValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    return-void

    .line 150
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 110
    return-void
.end method

.method public setComboPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "comboPreferences"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 118
    return-void
.end method

.method public setOrientationEx(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 189
    :sswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iget v1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenWidth:I

    iget v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mGalleryExViewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 190
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 197
    :sswitch_1
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iget v1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenHeight:I

    iget v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mGalleryExViewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 200
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 208
    :sswitch_2
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    iget v1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mScreenHeight:I

    iget v2, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mGalleryExViewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setNewWithHeight(II)V

    .line 211
    iget-object v0, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mRotateLinearLayout:Lcom/android/hwcamera/hwui/RotateLinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0x10e -> :sswitch_2
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method public setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/hwcamera/hwui/GalleryEx;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 114
    return-void
.end method
