.class public Lcom/android/hwcamera/hwui/ListSubSettingView;
.super Ljava/lang/Object;
.source "ListSubSettingView.java"


# instance fields
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

.field private m1080P_Height:I

.field private mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

.field private mContext:Landroid/content/Context;

.field private mHasDataState:Z

.field private mKey:Ljava/lang/String;

.field private mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

.field private mListpre:Lcom/android/hwcamera/ListPreference;

.field private mModeadpter:Landroid/widget/SimpleAdapter;

.field private mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

.field private mQHD_Height:I

.field private mRadioDrawable:[I

.field private mSetValue:Ljava/lang/String;

.field private modeList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "list"
    .parameter "key"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 36
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->m1080P_Height:I

    .line 38
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mQHD_Height:I

    .line 43
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    .line 45
    iput-object p3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    .line 46
    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x5ft 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/ListSubSettingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/ListSubSettingView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    return-object v0
.end method

.method private initSubMenudata()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->listItem:Ljava/util/ArrayList;

    .line 101
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    .line 102
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    if-nez v3, :cond_1

    .line 103
    iput-boolean v6, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 143
    :cond_0
    return-void

    .line 106
    :cond_1
    iput-boolean v7, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 107
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    .line 108
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    invoke-virtual {v3}, Lcom/android/hwcamera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, defaultValue:Ljava/lang/String;
    const-string v3, "pref_video_quality_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v3}, Lcom/android/hwcamera/CameraSettings;->getDefaultVideoQuality(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/android/hwcamera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mSetValue:Ljava/lang/String;

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 115
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pref_video_quality_key"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0144

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->m1080P_Height:I

    const/16 v4, 0x440

    if-ne v3, v4, :cond_3

    .line 121
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e014a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_1
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListpre:Lcom/android/hwcamera/ListPreference;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mSetValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_6

    .line 136
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_2
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0146

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mQHD_Height:I

    const/16 v4, 0x220

    if-ne v3, v4, :cond_4

    .line 125
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e014d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_4
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 133
    :cond_5
    const-string v3, "ItemTitle"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->keyvalues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_6
    const-string v3, "Radioimage"

    iget-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public ChangeRadioImg(IZ)V
    .locals 7
    .parameter "selectedItem"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mModeadpter:Landroid/widget/SimpleAdapter;

    .line 148
    .local v0, currentShootAdapter:Landroid/widget/SimpleAdapter;
    const/4 v4, -0x1

    if-ne v4, p1, :cond_1

    .line 149
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v3

    .line 150
    .local v3, itemNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 153
    .local v1, currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "Radioimage"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1           #currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 168
    .end local v2           #i:I
    .end local v3           #itemNum:I
    :goto_1
    return-void

    .line 160
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 161
    .restart local v1       #currentmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_2

    .line 162
    const-string v4, "Radioimage"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v4, "ItemTitle"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mSetValue:Ljava/lang/String;

    .line 167
    :goto_2
    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 165
    :cond_2
    const-string v4, "Radioimage"

    iget-object v5, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mRadioDrawable:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public initModeView()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 57
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/ListSubSettingView;->initSubMenudata()V

    .line 59
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    if-nez v0, :cond_0

    .line 60
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    .line 97
    :goto_0
    return v0

    .line 63
    :cond_0
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->listItem:Ljava/util/ArrayList;

    const v3, 0x7f04003e

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ItemTitle"

    aput-object v6, v4, v5

    const-string v5, "Radioimage"

    aput-object v5, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mModeadpter:Landroid/widget/SimpleAdapter;

    .line 66
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mModeadpter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 71
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->modeList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/hwcamera/hwui/ListSubSettingView$1;

    invoke-direct {v1, p0}, Lcom/android/hwcamera/hwui/ListSubSettingView$1;-><init>(Lcom/android/hwcamera/hwui/ListSubSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mHasDataState:Z

    goto :goto_0

    .line 63
    nop

    :array_0
    .array-data 0x4
        0xc3t 0x0t 0xct 0x7ft
        0xc4t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public registerListeners(Lcom/android/hwcamera/hwui/SuperPanel$Listeners;)V
    .locals 0
    .parameter "listeners"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    .line 55
    return-void
.end method

.method public setComboPreference(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 0
    .parameter "combopreference"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mComboPreferences:Lcom/android/hwcamera/ComboPreferences;

    .line 52
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mKey:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setPreferenceGroup(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mPreferenceGroup:Lcom/android/hwcamera/PreferenceGroup;

    .line 49
    return-void
.end method

.method public set_videoSize_height(II)V
    .locals 0
    .parameter "height"
    .parameter "qHDHeight"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->m1080P_Height:I

    .line 176
    iput p2, p0, Lcom/android/hwcamera/hwui/ListSubSettingView;->mQHD_Height:I

    .line 178
    return-void
.end method
