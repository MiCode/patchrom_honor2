.class public Lcom/android/hwcamera/ListPreference;
.super Lcom/android/hwcamera/CameraPreference;
.source "ListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultValue:Ljava/lang/String;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private final mKey:Ljava/lang/String;

.field private mLoaded:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/hwcamera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v2, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    .line 54
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    .line 56
    sget-object v1, Lcom/android/hwcamera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/hwcamera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/hwcamera/ListPreference;->mDefaultValue:Ljava/lang/String;

    .line 63
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 64
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;I)V
    .locals 11
    .parameter
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v10, 0x7f0d000b

    const v9, 0x7f0d000a

    const/4 v8, 0x1

    .line 139
    const-string v6, "pref_camera_picturesize_key"

    iget-object v7, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    invoke-static {p1, p2}, Lcom/android/hwcamera/CameraSettings;->getMaxWideScreenPictureSize(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, wideScreenPictureSize:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 142
    if-ne v8, p2, :cond_2

    .line 143
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 145
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 169
    .end local v5           #wideScreenPictureSize:Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v6

    .local v3, len:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 172
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 173
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v0           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1           #entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v2           #i:I
    .end local v3           #len:I
    .restart local v5       #wideScreenPictureSize:Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_0

    .line 148
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_3
    if-ne v8, p2, :cond_4

    .line 155
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 157
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_4
    if-nez p2, :cond_0

    .line 160
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 162
    iget-object v6, p0, Lcom/android/hwcamera/ListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 177
    .end local v5           #wideScreenPictureSize:Ljava/lang/String;
    .restart local v0       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v1       #entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v2       #i:I
    .restart local v3       #len:I
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 178
    .local v4, size:I
    new-array v6, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 179
    new-array v6, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 180
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/hwcamera/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    .end local v0           #i:I
    :goto_1
    return v0

    .line 111
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/hwcamera/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/ListPreference;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/hwcamera/ListPreference;->mDefaultValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/ListPreference;->mValue:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public reloadValue()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/hwcamera/ListPreference;->mLoaded:Z

    .line 130
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 86
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 87
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/android/hwcamera/ListPreference;->mValue:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/hwcamera/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/hwcamera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    return-void
.end method
