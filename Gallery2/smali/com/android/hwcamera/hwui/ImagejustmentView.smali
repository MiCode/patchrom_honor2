.class public Lcom/android/hwcamera/hwui/ImagejustmentView;
.super Ljava/lang/Object;
.source "ImagejustmentView.java"


# instance fields
.field private mBrightnessEntryValues:[Ljava/lang/CharSequence;

.field private mBrightnessLayout:Landroid/widget/LinearLayout;

.field private mBrightnessPref:Lcom/android/hwcamera/ListPreference;

.field private mBrightnessValue:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContrastEntryValues:[Ljava/lang/CharSequence;

.field private mContrastLayout:Landroid/widget/LinearLayout;

.field private mContrastPref:Lcom/android/hwcamera/ListPreference;

.field private mContrastStep:I

.field private mContrastValue:Ljava/lang/String;

.field private mExposureLayout:Landroid/widget/LinearLayout;

.field private mExposurePref:Lcom/android/hwcamera/ListPreference;

.field private mExposureValue:Ljava/lang/String;

.field private mImageBrightness:Landroid/widget/SeekBar;

.field private mImageBrightnessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mImageContrast:Landroid/widget/SeekBar;

.field private mImageContrastListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mImageExposure:Landroid/widget/SeekBar;

.field private mImageExposureListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mImageSaturation:Landroid/widget/SeekBar;

.field private mImageSaturationListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mLastBrightnessProgress:I

.field private mLastContrastProgress:I

.field private mLastExposureProgress:I

.field private mLastSaturationProgress:I

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mMinContrastValue:I

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mSaturationEntryValues:[Ljava/lang/CharSequence;

.field private mSaturationLayout:Landroid/widget/LinearLayout;

.field private mSaturationPref:Lcom/android/hwcamera/ListPreference;

.field private mSaturationValue:Ljava/lang/String;

.field private mSeekbarView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 1
    .parameter "context"
    .parameter "seekbarView"
    .parameter "preferenceGroup"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mMinContrastValue:I

    .line 52
    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastStep:I

    .line 57
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    .line 60
    iput-object p3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/ImagejustmentView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastContrastProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastContrastProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastSaturationProgress:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastSaturationProgress:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/hwcamera/hwui/ImagejustmentView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastBrightnessProgress:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastBrightnessProgress:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private getBrightnessProgress()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContrastMaxProgress()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getExposureBegin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExposureEnd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExposureMiddle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSaturationProgress()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDefaultValues(II)Ljava/lang/String;
    .locals 4
    .parameter "maxProgress"
    .parameter "stringId"

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, defaultvalue:Ljava/lang/String;
    div-int/lit8 v2, p1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int v0, v2, v3

    .line 157
    .local v0, acultDefaultValue:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initImageValue(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 3
    .parameter "comboPreferences"

    .prologue
    .line 160
    const-string v0, "pref_camera_exposure_key"

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    .line 162
    const-string v0, "enter mexpouse"

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_saturation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "pref_camera_saturation_key"

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getSaturationProgress()I

    move-result v1

    const v2, 0x7f0e01b3

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initDefaultValues(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    .line 166
    const-string v0, "enter mSaturation"

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_contrast_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "pref_camera_contrast_key"

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getContrastMaxProgress()I

    move-result v1

    const v2, 0x7f0e01b0

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initDefaultValues(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastValue:Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_brightness_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "pref_camera_brightness_key"

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getBrightnessProgress()I

    move-result v1

    const v2, 0x7f0e01b6

    invoke-direct {p0, v1, v2}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initDefaultValues(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    .line 177
    :cond_2
    return-void
.end method

.method private setBrightnessDegreeBar()V
    .locals 5

    .prologue
    .line 221
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c009e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 222
    .local v0, brightnessBegin:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c009f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 225
    .local v2, brightnessMiddle:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c00a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 228
    .local v1, brightnessEnd:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method private setBrightnessFilterDegrees()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessEntryValues:[Ljava/lang/CharSequence;

    .line 193
    :cond_0
    return-void
.end method

.method private setContrastDegreeBar()V
    .locals 5

    .prologue
    .line 210
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c0099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    .local v0, contrastBegin:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 214
    .local v2, contrastMiddle:Landroid/widget/TextView;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 217
    .local v1, contrastEnd:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method private setContrastFilterDegrees()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastEntryValues:[Ljava/lang/CharSequence;

    .line 183
    :cond_0
    return-void
.end method

.method private setExposureDegreeBar()V
    .locals 5

    .prologue
    .line 265
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 266
    .local v0, exposureBegin:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getExposureBegin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c0090

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 269
    .local v2, exposureMiddle:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getExposureMiddle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c0091

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 272
    .local v1, exposureEnd:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getExposureEnd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method private setExposureProgress()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 281
    return-void
.end method

.method private setListeners()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$1;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposureListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 336
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$2;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$2;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrastListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 370
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$3;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$3;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturationListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 401
    new-instance v0, Lcom/android/hwcamera/hwui/ImagejustmentView$4;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/ImagejustmentView$4;-><init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightnessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 428
    :cond_3
    return-void
.end method

.method private setSaturationDegreeBar()V
    .locals 5

    .prologue
    .line 233
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    .local v0, saturationBegin:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c0095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 237
    .local v2, saturationMiddle:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v4, 0x7f0c0096

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 240
    .local v1, saturationEnd:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method private setSaturationFilterDegrees()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationEntryValues:[Ljava/lang/CharSequence;

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public initImagejustment(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 7
    .parameter "comboPreferences"

    .prologue
    const/16 v6, -0x64

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_contrast_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_5

    .line 68
    invoke-static {}, Lcom/android/hwcamera/Util;->getMinContrast()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mMinContrastValue:I

    .line 69
    invoke-static {}, Lcom/android/hwcamera/Util;->getContrastStep()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastStep:I

    .line 70
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setContrastFilterDegrees()V

    .line 71
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setContrastDegreeBar()V

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_exposure_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposurePref:Lcom/android/hwcamera/ListPreference;

    .line 80
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureLayout:Landroid/widget/LinearLayout;

    .line 81
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setExposureDegreeBar()V

    .line 83
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_saturation_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    .line 84
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationLayout:Landroid/widget/LinearLayout;

    .line 85
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setSaturationFilterDegrees()V

    .line 86
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setSaturationDegreeBar()V

    .line 88
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    const-string v1, "pref_camera_brightness_key"

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    .line 89
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessLayout:Landroid/widget/LinearLayout;

    .line 90
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setBrightnessFilterDegrees()V

    .line 91
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setBrightnessDegreeBar()V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/ImagejustmentView;->initImageValue(Lcom/android/hwcamera/ComboPreferences;)V

    .line 95
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setListeners()V

    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposurePref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMaxExposureCompensation()I

    move-result v0

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinSaturation()I

    move-result v0

    if-ne v6, v0, :cond_7

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    :goto_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinBrightness()I

    move-result v0

    if-ne v6, v0, :cond_8

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :goto_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastPref:Lcom/android/hwcamera/ListPreference;

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    .line 144
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getContrastMaxProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 146
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastContrastProgress:I

    .line 149
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrast:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageContrastListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 151
    :cond_4
    return-void

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mContrastLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    .line 104
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->setExposureProgress()V

    .line 105
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mExposureValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 108
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposureListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_1

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getSaturationProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSaturationValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 122
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastSaturationProgress:I

    .line 123
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturation:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageSaturationListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_2

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mSeekbarView:Landroid/view/View;

    const v1, 0x7f0c009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    .line 133
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->getBrightnessProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mBrightnessValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastBrightnessProgress:I

    .line 138
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageBrightnessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto/16 :goto_3
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 431
    return-void
.end method
