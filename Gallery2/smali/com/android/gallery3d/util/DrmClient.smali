.class public Lcom/android/gallery3d/util/DrmClient;
.super Ljava/lang/Object;
.source "DrmClient.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mdrmManageClient:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/gallery3d/util/DrmClient;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/util/DrmClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/android/gallery3d/util/DrmClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    goto :goto_0
.end method


# virtual methods
.method public getDrmIsAutoUse(Ljava/lang/String;I)Z
    .locals 4
    .parameter "dcfFilePathName"
    .parameter "drmAction"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->hasHuaweiDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, p1, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1

    .line 146
    .local v1, drmConstraints:Landroid/content/ContentValues;
    const-string v3, "is_auto_use"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, drmConstraintValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 150
    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    .end local v0           #drmConstraintValue:Ljava/lang/String;
    .end local v1           #drmConstraints:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 156
    .restart local v0       #drmConstraintValue:Ljava/lang/String;
    .restart local v1       #drmConstraints:Landroid/content/ContentValues;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getDrmRight(Ljava/lang/String;IZ)I
    .locals 4
    .parameter "dcfFilePathName"
    .parameter "drmAction"
    .parameter "onlyGetRight"

    .prologue
    const/4 v1, -0x1

    .line 177
    const/4 v0, -0x1

    .line 178
    .local v0, drmRight:I
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->hasHuaweiDrm()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 183
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dcf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    iget-object v2, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    const-string v3, "application/vnd.oma.drm.content"

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    if-nez p3, :cond_2

    .line 191
    or-int/lit16 p2, p2, 0x100

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1, p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 194
    const-string v1, "DrmClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileRights == RightsStatus.RIGHTS_VALID() ---drmRight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 195
    goto :goto_0

    :cond_3
    move v1, v0

    .line 203
    goto :goto_0
.end method

.method public getDrmType(Landroid/net/Uri;)I
    .locals 2
    .parameter "dcfUri"

    .prologue
    .line 122
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->hasHuaweiDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/util/DrmClient;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/gallery3d/util/GalleryUtils;->parseUriToPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, dcfFilePathName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/util/DrmClient;->getDrmType(Ljava/lang/String;)I

    move-result v1

    .line 127
    .end local v0           #dcfFilePathName:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getDrmType(Ljava/lang/String;)I
    .locals 2
    .parameter "filepathname"

    .prologue
    .line 106
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->hasHuaweiDrm()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/util/DrmClient;->mdrmManageClient:Landroid/drm/DrmManagerClient;

    const-string v1, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
