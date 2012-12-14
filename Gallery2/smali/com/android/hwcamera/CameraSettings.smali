.class public Lcom/android/hwcamera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field private static mIsSupportFullHDVideoQuality:Z


# instance fields
.field private final mCameraId:I

.field private final mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private final mContext:Landroid/content/Context;

.field private final mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/hwcamera/CameraSettings;->mIsSupportFullHDVideoQuality:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "activity"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 165
    iput p3, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    .line 166
    iput-object p4, p0, Lcom/android/hwcamera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 167
    return-void
.end method

.method private buildCameraId(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/IconListPreference;)V
    .locals 10
    .parameter "group"
    .parameter "cameraId"

    .prologue
    const v9, 0x7f0200db

    const v8, 0x7f0200da

    .line 628
    iget-object v6, p0, Lcom/android/hwcamera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v5, v6

    .line 629
    .local v5, numOfCameras:I
    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 630
    invoke-virtual {p2}, Lcom/android/hwcamera/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    .line 656
    :goto_0
    return-void

    .line 634
    :cond_0
    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 635
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v5, [Ljava/lang/CharSequence;

    .line 636
    .local v1, entryValues:[Ljava/lang/CharSequence;
    new-array v3, v5, [I

    .line 637
    .local v3, iconIds:[I
    new-array v4, v5, [I

    .line 638
    .local v4, largeIconIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 639
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 640
    iget-object v6, p0, Lcom/android/hwcamera/CameraSettings;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 641
    iget-object v6, p0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0e0140

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 643
    aput v9, v3, v2

    .line 644
    aput v9, v4, v2

    .line 638
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 646
    :cond_1
    iget-object v6, p0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f0e013f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 648
    aput v8, v3, v2

    .line 649
    aput v8, v4, v2

    goto :goto_2

    .line 652
    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/hwcamera/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 653
    invoke-virtual {p2, v1}, Lcom/android/hwcamera/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual {p2, v3}, Lcom/android/hwcamera/IconListPreference;->setIconIds([I)V

    .line 655
    invoke-virtual {p2, v4}, Lcom/android/hwcamera/IconListPreference;->setLargeIconIds([I)V

    goto :goto_0
.end method

.method private buildExposureCompensation(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;)V
    .locals 11
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 603
    iget-object v9, p0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v4

    .line 604
    .local v4, max:I
    iget-object v9, p0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    .line 605
    .local v6, min:I
    if-nez v4, :cond_0

    if-nez v6, :cond_0

    .line 606
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    .line 624
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v9, p0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v8

    .line 612
    .local v8, step:F
    int-to-float v9, v4

    mul-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 613
    .local v5, maxValue:I
    int-to-float v9, v6

    mul-float/2addr v9, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 614
    .local v7, minValue:I
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    .line 615
    .local v1, entries:[Ljava/lang/CharSequence;
    sub-int v9, v5, v7

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 616
    .local v2, entryValues:[Ljava/lang/CharSequence;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_2

    .line 617
    sub-int v9, v5, v3

    int-to-float v10, v3

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v3, :cond_1

    const/16 v9, 0x2b

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    :cond_1
    sub-int v9, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 616
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 622
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p2, v1}, Lcom/android/hwcamera/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {p2, v2}, Lcom/android/hwcamera/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V
    .locals 4
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/hwcamera/PreferenceGroup;",
            "Lcom/android/hwcamera/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 682
    .local v0, allEntries:[Ljava/lang/CharSequence;
    if-nez p3, :cond_1

    .line 683
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget v2, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    invoke-virtual {p2, p3, v2}, Lcom/android/hwcamera/ListPreference;->filterUnsupported(Ljava/util/List;I)V

    .line 690
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 691
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 696
    :cond_2
    invoke-virtual {p2}, Lcom/android/hwcamera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/android/hwcamera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 698
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/android/hwcamera/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method public static getDefaultVideoQuality(I)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 186
    const/4 v0, 0x5

    .line 188
    .local v0, quality:I
    if-nez p0, :cond_1

    sget-boolean v1, Lcom/android/hwcamera/CameraSettings;->mIsSupportFullHDVideoQuality:Z

    if-eqz v1, :cond_1

    .line 189
    const/4 v0, 0x6

    .line 210
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :cond_1
    const/4 v1, 0x5

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const/4 v0, 0x5

    goto :goto_0

    .line 195
    :cond_2
    const/16 v1, 0x9

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    const/16 v0, 0x9

    goto :goto_0

    .line 198
    :cond_3
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    const/4 v0, 0x4

    goto :goto_0

    .line 200
    :cond_4
    const/4 v1, 0x7

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    const/4 v0, 0x7

    goto :goto_0

    .line 202
    :cond_5
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    const/4 v0, 0x2

    goto :goto_0

    .line 204
    :cond_6
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    const/16 v0, 0x8

    goto :goto_0

    .line 206
    :cond_7
    const/16 v1, 0x64

    invoke-static {p0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public static getFirstTime(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 806
    const-string v0, "pref_camera_first_time"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMaxWideScreenPictureSize(Ljava/util/List;I)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 291
    new-instance v0, Lcom/android/hwcamera/PictureSizeComparator;

    invoke-direct {v0}, Lcom/android/hwcamera/PictureSizeComparator;-><init>()V

    .line 292
    .local v0, comp:Lcom/android/hwcamera/PictureSizeComparator;
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 295
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x78

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 296
    .local v3, index:I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v5, v6

    .line 297
    .local v5, width:F
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v1, v6

    .line 298
    .local v1, height:F
    div-float v4, v1, v5

    .line 299
    .local v4, ratio:F
    const/high16 v6, 0x3f10

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v8, 0x3d4ccccd

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_2

    .line 300
    const v6, 0x44e58000

    cmpl-float v6, v1, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 301
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 307
    .end local v1           #height:F
    .end local v3           #index:I
    .end local v4           #ratio:F
    .end local v5           #width:F
    :goto_1
    return-object v6

    .restart local v1       #height:F
    .restart local v3       #index:I
    .restart local v4       #ratio:F
    .restart local v5       #width:F
    :cond_1
    move-object v6, v7

    .line 303
    goto :goto_1

    .line 294
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #height:F
    .end local v3           #index:I
    .end local v4           #ratio:F
    .end local v5           #width:F
    :cond_3
    move-object v6, v7

    .line 307
    goto :goto_1
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

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v0, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    invoke-static {v1, v5}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_0
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    invoke-static {v1, v3}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    :cond_1
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 929
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    :cond_2
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    invoke-static {v1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 932
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_3
    iget-object v1, p0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hw_MMS_unsupported"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 938
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    invoke-static {v1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 939
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_4
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 944
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_5
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 947
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_6
    iget v1, p0, Lcom/android/hwcamera/CameraSettings;->mCameraId:I

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 951
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_7
    return-object v0
.end method

.method public static getVidoeDurationInMillis(I)I
    .locals 3
    .parameter "quality"

    .prologue
    const/4 v2, 0x2

    .line 960
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v0, v1, Landroid/media/CamcorderProfile;->duration:I

    .line 961
    .local v0, MMS_VIDEO_DURATION:I
    if-ne v2, p0, :cond_0

    .line 962
    mul-int/lit16 v1, v0, 0x3e8

    .line 964
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initPreference(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 47
    .parameter "group"

    .prologue
    .line 353
    const-string v44, "pref_camera_videosize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v33

    .line 354
    .local v33, videoSize:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_time_lapse_frame_interval_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v29

    .line 355
    .local v29, timeLapseInterval:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_picturesize_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v22

    .line 356
    .local v22, pictureSize:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v43

    check-cast v43, Lcom/android/hwcamera/IconListPreference;

    .line 357
    .local v43, whiteBalance:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_camera_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v11

    check-cast v11, Lcom/android/hwcamera/IconListPreference;

    .line 358
    .local v11, colorEffect:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_video_coloreffect_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v37

    check-cast v37, Lcom/android/hwcamera/IconListPreference;

    .line 359
    .local v37, videocolorEffect:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v25

    .line 360
    .local v25, sceneMode:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v17

    .line 361
    .local v17, flashMode:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_exposure_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v15

    .line 362
    .local v15, exposure:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_id_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v8

    check-cast v8, Lcom/android/hwcamera/IconListPreference;

    .line 364
    .local v8, cameraId:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v30

    .line 366
    .local v30, videoFlashMode:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_iso_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v20

    .line 367
    .local v20, mIso:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_continuousaf_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v12

    .line 368
    .local v12, continuousAf:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_facedetection_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v16

    .line 370
    .local v16, faceDetection:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_targettrackingmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v10

    .line 371
    .local v10, cameraTargetTracking:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_targettrackingmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v35

    .line 379
    .local v35, videoTargetTracking:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_shootmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v26

    check-cast v26, Lcom/android/hwcamera/IconListPreference;

    .line 380
    .local v26, shootmode:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_camera_redeyedetection_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v23

    .line 381
    .local v23, redeyereduction:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_steady_video_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v28

    .line 382
    .local v28, steadyVideo:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_hdr_save_mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v18

    .line 383
    .local v18, hdrSaveMode:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_distortion_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v14

    check-cast v14, Lcom/android/hwcamera/IconListPreference;

    .line 384
    .local v14, distortion:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_video_whitebalance_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v41

    check-cast v41, Lcom/android/hwcamera/IconListPreference;

    .line 385
    .local v41, videowhitebalance:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_video_gps_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v39

    .line 386
    .local v39, videogps:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_contrast_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v13

    .line 387
    .local v13, contrast:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_brightness_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v7

    .line 388
    .local v7, brightness:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_saturation_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v24

    .line 389
    .local v24, saturation:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_auto_focusmode_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v5

    .line 390
    .local v5, autofocus:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_distortion_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v38

    check-cast v38, Lcom/android/hwcamera/IconListPreference;

    .line 391
    .local v38, videodistortion:Lcom/android/hwcamera/IconListPreference;
    const-string v44, "pref_video_quality_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v31

    .line 392
    .local v31, videoQuality:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_quality_level_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v32

    .line 394
    .local v32, videoQualityLevel:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_shutter_sound_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v27

    .line 395
    .local v27, shutterSound:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_shutter_sound_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v40

    .line 398
    .local v40, videoshutterSound:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_sound_state_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v9

    .line 399
    .local v9, cameraSoundState:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_sound_state_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v34

    .line 402
    .local v34, videoSoundState:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_camera_antibanding_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v4

    .line 403
    .local v4, antibanding:Lcom/android/hwcamera/ListPreference;
    const-string v44, "pref_video_antibanding_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v36

    .line 406
    .local v36, videoantibanding:Lcom/android/hwcamera/ListPreference;
    if-eqz v31, :cond_0

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/hwcamera/CameraSettings;->getSupportedVideoQuality()Ljava/util/ArrayList;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 409
    :cond_0
    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v44

    if-eqz v44, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/hwcamera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 413
    :cond_1
    if-eqz v22, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/android/hwcamera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 417
    .local v21, picture:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v44, "ro.camera.show.eula"

    const-string v45, "0"

    invoke-static/range {v44 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v45, "0"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_2

    .line 418
    const-string v44, "320x240"

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_2

    .line 419
    const-string v44, "320x240"

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 422
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 424
    .end local v21           #picture:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v43, :cond_4

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 428
    :cond_4
    if-eqz v41, :cond_5

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 432
    :cond_5
    if-eqz v11, :cond_6

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v11, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 436
    :cond_6
    if-eqz v37, :cond_7

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v37

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 440
    :cond_7
    if-eqz v25, :cond_8

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 445
    :cond_8
    if-eqz v17, :cond_9

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 451
    :cond_9
    if-eqz v10, :cond_a

    .line 452
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedTargetTrackingState()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v10, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 455
    :cond_a
    if-eqz v35, :cond_b

    .line 456
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedTargetTrackingState()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 461
    :cond_b
    if-eqz v30, :cond_c

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 465
    :cond_c
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/hwcamera/CameraSettings;->buildExposureCompensation(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;)V

    .line 466
    :cond_d
    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/android/hwcamera/CameraSettings;->buildCameraId(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/IconListPreference;)V

    .line 468
    :cond_e
    if-eqz v20, :cond_f

    .line 469
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 472
    :cond_f
    if-eqz v12, :cond_11

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v44

    if-eqz v44, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v44

    const-string v45, "continuous-video"

    invoke-interface/range {v44 .. v45}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v44

    if-gez v44, :cond_11

    .line 476
    :cond_10
    invoke-virtual {v12}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    .line 479
    :cond_11
    if-eqz v16, :cond_12

    .line 480
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedFaceDetectionModes()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 492
    :cond_12
    if-eqz v26, :cond_13

    .line 493
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 495
    :cond_13
    if-eqz v23, :cond_14

    .line 496
    invoke-static {}, Lcom/android/hwcamera/Util;->getRedEyeReductionSupported()Z

    move-result v44

    if-nez v44, :cond_14

    .line 497
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 500
    :cond_14
    if-eqz v28, :cond_15

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    const-string v45, "video-stabilization-supported"

    invoke-virtual/range {v44 .. v45}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 502
    .local v42, vstabSupported:Ljava/lang/String;
    const-string v44, "true"

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_15

    .line 503
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 506
    .end local v42           #vstabSupported:Ljava/lang/String;
    :cond_15
    if-eqz v14, :cond_16

    .line 507
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v14, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 509
    :cond_16
    if-eqz v38, :cond_17

    .line 510
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedDistortionValues()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 514
    :cond_17
    if-eqz v18, :cond_18

    .line 515
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedHdrMode()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 517
    :cond_18
    if-eqz v39, :cond_19

    .line 518
    invoke-static {}, Lcom/android/hwcamera/Util;->isSupportedLocation()Z

    move-result v44

    if-nez v44, :cond_19

    .line 519
    const-string v44, "gpsstate"

    const-string v45, "filterUnsupportedOptions gps"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v39

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 523
    :cond_19
    if-eqz v13, :cond_1a

    .line 524
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedContrastDegrees()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v13, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 526
    :cond_1a
    if-eqz v24, :cond_1b

    .line 527
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedSaturationDegrees()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 529
    :cond_1b
    if-eqz v7, :cond_1c

    .line 530
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedBrightnessDegrees()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v7, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 533
    :cond_1c
    if-eqz v27, :cond_1d

    .line 534
    const-string v44, "ro.camera.shuttersound"

    const-string v45, "0"

    invoke-static/range {v44 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v45, "0"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1d

    .line 535
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 538
    :cond_1d
    if-eqz v40, :cond_1e

    .line 539
    const-string v44, "ro.camera.shuttersound"

    const-string v45, "0"

    invoke-static/range {v44 .. v45}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v45, "0"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1e

    .line 540
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v40

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 546
    :cond_1e
    if-eqz v9, :cond_1f

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "hw_camera_mute_able"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Lcom/android/hwcamera/Util;->getHWConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_1f

    .line 548
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v9, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 551
    :cond_1f
    if-eqz v34, :cond_20

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "hw_camera_mute_able"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Lcom/android/hwcamera/Util;->getHWConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_20

    .line 553
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 559
    :cond_20
    if-eqz v5, :cond_21

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v19

    .line 561
    .local v19, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v19, :cond_25

    const/4 v6, 0x0

    .line 562
    .local v6, autofocusSupported:Z
    :goto_0
    if-nez v6, :cond_21

    .line 563
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v5, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 567
    .end local v6           #autofocusSupported:Z
    .end local v19           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    if-eqz v32, :cond_22

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "hw_video_qulity_level"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v44

    if-nez v44, :cond_22

    .line 569
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 574
    :cond_22
    if-eqz v4, :cond_23

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "hw_camera_antibanding"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v44

    if-eqz v44, :cond_27

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v4, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 583
    :cond_23
    :goto_1
    if-eqz v36, :cond_24

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v44

    const-string v45, "hw_video_antibanding"

    const/16 v46, 0x0

    invoke-static/range {v44 .. v46}, Lcom/android/hwcamera/Util;->getConfigValue(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v44

    if-eqz v44, :cond_28

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/hwcamera/CameraSettings;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 590
    :cond_24
    :goto_2
    return-void

    .line 561
    .restart local v19       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_25
    const-string v44, "auto"

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v44

    if-ltz v44, :cond_26

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_26
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 578
    .end local v19           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_27
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v4, v2}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    goto :goto_1

    .line 587
    :cond_28
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;I)V
    .locals 14
    .parameter "context"
    .parameter "parameters"
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    .line 220
    .local v9, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v9, :cond_0

    .line 250
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {v9}, Lcom/android/hwcamera/CameraSettings;->sizeListToStringList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 227
    .local v10, supportedStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/hwcamera/CameraSettings;->getMaxWideScreenPictureSize(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, wideScreenPictureSize:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 229
    const/16 v12, 0x78

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 230
    .local v5, index:I
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 231
    .local v7, picturWidth:I
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 232
    .local v8, pictureHeight:I
    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 233
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 234
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "pref_camera_picturesize_key"

    invoke-interface {v3, v12, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 240
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #index:I
    .end local v7           #picturWidth:I
    .end local v8           #pictureHeight:I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d000c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v2, v1, v4

    .line 242
    .local v2, candidate:Ljava/lang/String;
    invoke-static {v2, v9, p1}, Lcom/android/hwcamera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 243
    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 244
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "pref_camera_picturesize_key"

    invoke-interface {v3, v12, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 240
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 249
    .end local v2           #candidate:Ljava/lang/String;
    :cond_3
    const-string v12, "CameraSettings"

    const-string v13, "No supported picture size found"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportWideScreen(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)Z
    .locals 13
    .parameter "context"
    .parameter "parameters"

    .prologue
    const/4 v10, 0x0

    .line 312
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    .line 313
    .local v8, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v8, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v10

    .line 314
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v1, v0, v4

    .line 316
    .local v1, candidate:Ljava/lang/String;
    const/16 v11, 0x78

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 317
    .local v5, index:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 318
    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 319
    .local v9, width:I
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 320
    .local v2, height:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 321
    .local v7, size:Landroid/hardware/Camera$Size;
    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    if-ne v11, v9, :cond_2

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    if-ne v11, v2, :cond_2

    .line 322
    const/4 v10, 0x1

    goto :goto_0

    .line 314
    .end local v7           #size:Landroid/hardware/Camera$Size;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1
.end method

.method public static isWideScreenSize(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "pictureSizeValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    if-nez p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v4

    .line 274
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 276
    .local v1, candidate:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 277
    goto :goto_0

    .line 274
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v1           #candidate:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 282
    .restart local v1       #candidate:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    .line 283
    goto :goto_0

    .line 280
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 769
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readPreferredNeedHelpCenter(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 773
    const-string v0, "config_need_to_helpcenter"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 659
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/hwcamera/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 660
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PreferenceGroup;->get(I)Lcom/android/hwcamera/CameraPreference;

    move-result-object v0

    .line 661
    .local v0, child:Lcom/android/hwcamera/CameraPreference;
    instance-of v3, v0, Lcom/android/hwcamera/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 662
    check-cast v3, Lcom/android/hwcamera/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 672
    .end local v0           #child:Lcom/android/hwcamera/CameraPreference;
    :goto_1
    return v3

    .line 666
    .restart local v0       #child:Lcom/android/hwcamera/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/hwcamera/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/hwcamera/ListPreference;

    .end local v0           #child:Lcom/android/hwcamera/CameraPreference;
    invoke-virtual {v0}, Lcom/android/hwcamera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 668
    invoke-virtual {p0, v1}, Lcom/android/hwcamera/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 669
    goto :goto_1

    .line 659
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static removePreferenceFromScreen(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "group"
    .parameter "key"

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/android/hwcamera/CameraSettings;->removePreference(Lcom/android/hwcamera/PreferenceGroup;Ljava/lang/String;)Z

    .line 332
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/hwcamera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"

    .prologue
    const/4 v6, -0x1

    .line 869
    invoke-static {p1}, Lcom/android/hwcamera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 871
    .local v1, currentCameraId:I
    invoke-static {p1}, Lcom/android/hwcamera/CameraSettings;->readPreferredNeedHelpCenter(Landroid/content/SharedPreferences;)Z

    move-result v4

    .line 874
    .local v4, needHelpCenter:Z
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 875
    .local v0, backCameraId:I
    if-eq v0, v6, :cond_0

    .line 876
    invoke-virtual {p1, p0, v0}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 877
    invoke-virtual {p1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 878
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 879
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 881
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/hwcamera/CameraHolder;->instance()Lcom/android/hwcamera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/hwcamera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 882
    .local v3, frontCameraId:I
    if-eq v3, v6, :cond_1

    .line 883
    invoke-virtual {p1, p0, v3}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 884
    invoke-virtual {p1}, Lcom/android/hwcamera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 885
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 886
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 891
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p1, p0, v1}, Lcom/android/hwcamera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 892
    invoke-static {p1}, Lcom/android/hwcamera/CameraSettings;->upgradeAllPreferences(Lcom/android/hwcamera/ComboPreferences;)V

    .line 909
    invoke-static {p0, p2, p1, v1}, Lcom/android/hwcamera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/content/SharedPreferences;I)V

    .line 912
    invoke-static {p1, v1}, Lcom/android/hwcamera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 914
    invoke-static {p1, v4}, Lcom/android/hwcamera/CameraSettings;->writePreferredNeedHelpCenter(Landroid/content/SharedPreferences;Z)V

    .line 916
    return-void
.end method

.method public static setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .parameter "candidate"
    .parameter
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Parameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 336
    if-nez p1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v5

    .line 339
    :cond_1
    const/16 v6, 0x78

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 340
    .local v2, index:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 341
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 342
    .local v4, width:I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 343
    .local v0, height:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 344
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v6, v4, :cond_2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v6, v0, :cond_2

    .line 345
    invoke-virtual {p2, v4, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 346
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setIsSupportFullHDVideoQuality(Z)V
    .locals 0
    .parameter "isSupport"

    .prologue
    .line 179
    sput-boolean p0, Lcom/android/hwcamera/CameraSettings;->mIsSupportFullHDVideoQuality:Z

    .line 180
    return-void
.end method

.method private static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 705
    .local v2, size:Landroid/hardware/Camera$Size;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static upgradeAllPreferences(Lcom/android/hwcamera/ComboPreferences;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/android/hwcamera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 765
    invoke-virtual {p0}, Lcom/android/hwcamera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/hwcamera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 766
    return-void
.end method

.method public static upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "pref"

    .prologue
    const/4 v6, 0x4

    .line 726
    :try_start_0
    const-string v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 730
    .local v3, version:I
    :goto_0
    if-ne v3, v6, :cond_0

    .line 761
    :goto_1
    return-void

    .line 727
    .end local v3           #version:I
    :catch_0
    move-exception v1

    .line 728
    .local v1, ex:Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3       #version:I
    goto :goto_0

    .line 732
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 733
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez v3, :cond_1

    .line 736
    const/4 v3, 0x1

    .line 738
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 740
    const-string v4, "pref_camera_jpegquality_key"

    const-string v5, "85"

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 741
    .local v2, quality:Ljava/lang/String;
    const-string v4, "65"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 742
    const-string v2, "normal"

    .line 748
    :goto_2
    const-string v4, "pref_camera_jpegquality_key"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 749
    const/4 v3, 0x2

    .line 751
    .end local v2           #quality:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 752
    const/4 v3, 0x3

    .line 754
    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 757
    const-string v4, "pref_camera_videoquality_key"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 759
    :cond_4
    const-string v4, "pref_version_key"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 760
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 743
    .restart local v2       #quality:Ljava/lang/String;
    :cond_5
    const-string v4, "75"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 744
    const-string v2, "fine"

    goto :goto_2

    .line 746
    :cond_6
    const-string v2, "superfine"

    goto :goto_2
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v5, 0x1

    .line 713
    :try_start_0
    const-string v3, "pref_local_version_key"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 717
    .local v2, version:I
    :goto_0
    if-ne v2, v5, :cond_0

    .line 721
    :goto_1
    return-void

    .line 714
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 715
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .restart local v2       #version:I
    goto :goto_0

    .line 718
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 719
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_local_version_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 720
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method public static writPreferredSaveLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 793
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 794
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_save_location_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 796
    return-void
.end method

.method public static writeFirstTime(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 800
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 801
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_first_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 802
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 803
    return-void
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 787
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 788
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 790
    return-void
.end method

.method public static writePreferredNeedHelpCenter(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .parameter "pref"
    .parameter "needHelpCenter"

    .prologue
    .line 779
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 780
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "config_need_to_helpcenter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 782
    return-void
.end method


# virtual methods
.method public filterShootModePanoramaOptions(Lcom/android/hwcamera/PreferenceGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 593
    const-string v2, "pref_camera_shootmode_key"

    invoke-virtual {p1, v2}, Lcom/android/hwcamera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/hwcamera/ListPreference;

    move-result-object v0

    .line 594
    .local v0, shootmodeList:Lcom/android/hwcamera/ListPreference;
    invoke-static {}, Lcom/android/hwcamera/Util;->getSupportedShootModeValues()Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, supportedShootmode:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "panorama"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const-string v2, "panorama"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 598
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/hwcamera/CameraSettings;->filterUnsupportedOptions(Lcom/android/hwcamera/PreferenceGroup;Lcom/android/hwcamera/ListPreference;Ljava/util/List;)V

    .line 599
    return-void
.end method

.method public getPreferenceGroup(I)Lcom/android/hwcamera/PreferenceGroup;
    .locals 3
    .parameter "preferenceRes"

    .prologue
    .line 170
    new-instance v1, Lcom/android/hwcamera/PreferenceInflater;

    iget-object v2, p0, Lcom/android/hwcamera/CameraSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/hwcamera/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, inflater:Lcom/android/hwcamera/PreferenceInflater;
    invoke-virtual {v1, p1}, Lcom/android/hwcamera/PreferenceInflater;->inflate(I)Lcom/android/hwcamera/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/hwcamera/PreferenceGroup;

    .line 173
    .local v0, group:Lcom/android/hwcamera/PreferenceGroup;
    invoke-direct {p0, v0}, Lcom/android/hwcamera/CameraSettings;->initPreference(Lcom/android/hwcamera/PreferenceGroup;)V

    .line 174
    return-object v0
.end method
