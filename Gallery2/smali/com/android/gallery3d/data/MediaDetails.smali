.class public Lcom/android/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    .line 91
    return-void
.end method

.method public static extractDrmInfo(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 11
    .parameter "application"
    .parameter "details"
    .parameter "filePath"

    .prologue
    const/16 v10, 0x70

    const/16 v9, 0x6f

    const/16 v8, 0x6d

    .line 190
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->hasHuaweiDrm()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/gallery3d/util/GalleryUtils;->isDrmFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/drm/DrmManagerClient;

    invoke-direct {v2, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 194
    .local v2, drmClient:Landroid/drm/DrmManagerClient;
    const-string v5, "MediaDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractDrmInfo() filePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v5, "application/vnd.oma.drm.content"

    invoke-virtual {v2, p2, v5}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {v2, p2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, originMimeType:Ljava/lang/String;
    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    const/4 v1, 0x1

    .line 211
    .local v1, drmActionType:I
    :goto_0
    const-string v5, "MediaDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractDrmInfo() checkRightsStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 214
    .local v3, drmFileType:I
    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 215
    const v5, 0x7f0e00d5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v8, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 220
    :goto_1
    const/16 v5, 0x6e

    const-string v6, "1"

    invoke-virtual {p1, v5, v6}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 222
    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 223
    const v5, 0x7f0e00dd

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v10, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 228
    :goto_2
    invoke-virtual {v2, p2, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 230
    const v5, 0x7f0e00d9

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v9, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 238
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #drmActionType:I
    .end local v2           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v3           #drmFileType:I
    .end local v4           #originMimeType:Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 204
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v4       #originMimeType:Ljava/lang/String;
    :cond_1
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    const/4 v1, 0x7

    .restart local v1       #drmActionType:I
    goto :goto_0

    .line 217
    .restart local v3       #drmFileType:I
    :cond_2
    const v5, 0x7f0e00d6

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v8, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1

    .line 225
    :cond_3
    const v5, 0x7f0e00dc

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v10, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_2

    .line 232
    :cond_4
    const v5, 0x7f0e00da

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v9, v5}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method public static extractExifInfo(Lcom/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 11
    .parameter "details"
    .parameter "filePath"

    .prologue
    const-wide/16 v9, 0x0

    .line 152
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v6, "Flash"

    const/16 v7, 0x66

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 157
    const-string v6, "Make"

    const/16 v7, 0x64

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 158
    const-string v6, "Model"

    const/16 v7, 0x65

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 159
    const-string v6, "FNumber"

    const/16 v7, 0x69

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 160
    const-string v6, "ISOSpeedRatings"

    const/16 v7, 0x6c

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 161
    const-string v6, "WhiteBalance"

    const/16 v7, 0x68

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 163
    const-string v6, "ExposureTime"

    const/16 v7, 0x6b

    invoke-static {p0, v3, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V

    .line 166
    const-string v6, "FocalLength"

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 167
    .local v0, data:D
    cmpl-double v6, v0, v9

    if-eqz v6, :cond_2

    .line 170
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, focalString:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, localeLanguage:Ljava/lang/String;
    const-string v6, "in"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "el"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    :cond_0
    if-eqz v4, :cond_1

    .line 175
    const/16 v6, 0x2e

    const/16 v7, 0x2c

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 178
    :cond_1
    const/16 v6, 0x67

    invoke-virtual {p0, v6, v4}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 180
    const/16 v6, 0x67

    const v7, 0x7f0e00a6

    invoke-virtual {p0, v6, v7}, Lcom/android/gallery3d/data/MediaDetails;->setUnit(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v0           #data:D
    .end local v3           #exif:Landroid/media/ExifInterface;
    .end local v4           #focalString:Ljava/lang/String;
    .end local v5           #localeLanguage:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v2

    .line 184
    .local v2, ex:Ljava/io/IOException;
    const-string v6, "MediaDetails"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Lcom/android/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setExifData(Lcom/android/gallery3d/data/MediaDetails;Landroid/media/ExifInterface;Ljava/lang/String;I)V
    .locals 3
    .parameter "details"
    .parameter "exif"
    .parameter "tag"
    .parameter "key"

    .prologue
    .line 138
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 140
    const/16 v2, 0x66

    if-ne p3, v2, :cond_1

    .line 141
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails$FlashState;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    .line 143
    .local v0, state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    invoke-virtual {p0, p3, v0}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 148
    .end local v0           #state:Lcom/android/gallery3d/data/MediaDetails$FlashState;
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p0, p3, v1}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnit(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnit(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 3
    .parameter "index"
    .parameter "unit"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
