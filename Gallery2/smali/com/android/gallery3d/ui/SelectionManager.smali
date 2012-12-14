.class public Lcom/android/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# instance fields
.field private mAutoLeave:Z

.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mInSelectionMode:Z

.field private mIndexRecorder:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialHiddenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mInverseSelection:Z

.field private mIsAlbumSet:Z

.field private mIsAllSelected:Z

.field private mItemsNum:I

.field private mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

.field private mSelectedOperation:I

.field private mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mSupportOperation:I

.field private mTotal:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;Z)V
    .locals 2
    .parameter "galleryContext"
    .parameter "isAlbumSet"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAllSelected:Z

    .line 56
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mItemsNum:I

    .line 60
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    .line 69
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    .line 74
    iput-boolean p2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialHiddenSet:Ljava/util/Set;

    .line 77
    return-void
.end method

.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 10
    .parameter
    .parameter "set"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Lcom/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    .line 242
    .local v7, subCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 243
    invoke-virtual {p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    .line 246
    .local v8, total:I
    const/16 v0, 0x32

    .line 247
    .local v0, batch:I
    const/4 v4, 0x0

    .line 249
    .local v4, index:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 250
    add-int v9, v4, v0

    if-ge v9, v8, :cond_1

    move v1, v0

    .line 253
    .local v1, count:I
    :goto_2
    invoke-virtual {p1, v4, v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 254
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 255
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 250
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_1
    sub-int v1, v8, v4

    goto :goto_2

    .line 257
    .restart local v1       #count:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_2
    add-int/2addr v4, v0

    .line 258
    goto :goto_1

    .line 259
    .end local v1           #count:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_3
    return-void
.end method

.method private getTotalCount()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 165
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 165
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public clearIndexRecord()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 188
    return-void
.end method

.method public deSelectAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 108
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 109
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 111
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mItemsNum:I

    .line 113
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public getIndexRecord()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    return-object v0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 12
    .parameter "expandSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v7, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v10, :cond_4

    .line 264
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v10, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 266
    .local v9, total:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v9, :cond_8

    .line 267
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v1}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v8

    .line 268
    .local v8, set:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 269
    .local v3, id:Lcom/android/gallery3d/data/Path;
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 270
    if-eqz p1, :cond_1

    .line 271
    invoke-static {v7, v8}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 278
    .end local v1           #i:I
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v8           #set:Lcom/android/gallery3d/data/MediaSet;
    .end local v9           #total:I
    :cond_2
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 279
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    if-eqz p1, :cond_3

    .line 280
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v10, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_2

    .line 282
    :cond_3
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 287
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    :cond_4
    iget-boolean v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v10, :cond_7

    .line 288
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v9

    .line 289
    .restart local v9       #total:I
    const/4 v4, 0x0

    .line 290
    .local v4, index:I
    :goto_3
    if-ge v4, v9, :cond_8

    .line 291
    sub-int v10, v9, v4

    const/16 v11, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 292
    .local v0, count:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v4, v0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 293
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/MediaItem;

    .line 294
    .local v5, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    .line 295
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 297
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    .end local v5           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_6
    add-int/2addr v4, v0

    .line 298
    goto :goto_3

    .line 300
    .end local v0           #count:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #index:I
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v9           #total:I
    :cond_7
    iget-object v10, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 301
    .restart local v3       #id:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 305
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Lcom/android/gallery3d/data/Path;
    :cond_8
    return-object v7
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 170
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    .line 173
    :cond_0
    return v0
.end method

.method public getSelectedOperation()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSelectedOperation:I

    return v0
.end method

.method public getSelectedOpration()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-nez v5, :cond_0

    .line 326
    :goto_0
    return v4

    .line 318
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 319
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/Path;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/data/Path;

    .line 320
    .local v3, path:Lcom/android/gallery3d/data/Path;
    iget-object v4, p0, Lcom/android/gallery3d/ui/SelectionManager;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v2

    .line 321
    .local v2, media:Lcom/android/gallery3d/data/MediaSet;
    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    iget v4, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    const v5, -0x4000001

    and-int/2addr v4, v5

    goto :goto_0

    .line 326
    .end local v2           #media:Lcom/android/gallery3d/data/MediaSet;
    .end local v3           #path:Lcom/android/gallery3d/data/Path;
    :cond_2
    iget v4, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    const v5, -0x2000001

    and-int/2addr v4, v5

    goto :goto_0
.end method

.method public inSelectAllMode()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public initSupportOperation(I)V
    .locals 0
    .parameter "supportOperation"

    .prologue
    .line 314
    iput p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSupportOperation:I

    .line 315
    return-void
.end method

.method public isAllSelected()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAllSelected:Z

    return v0
.end method

.method public isItemSelected(Lcom/android/gallery3d/data/Path;)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public leaveSelectionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAllSelected:Z

    .line 143
    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mItemsNum:I

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInitialHiddenSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    goto :goto_0
.end method

.method public recordIndex(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "SelectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in recordIndex() will remove slotIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "SelectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in recordIndex() will add slotIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIndexRecorder:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public selectAll()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 91
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 92
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 93
    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    .line 95
    :cond_0
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAllSelected:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mItemsNum:I

    .line 99
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->clearIndexRecord()V

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mItemsNum:I

    if-ge v0, v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SelectionManager;->recordIndex(I)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    .line 83
    return-void
.end method

.method public setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    .line 87
    return-void
.end method

.method public setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SelectionManager;->mTotal:I

    .line 311
    return-void
.end method

.method public toggle(Lcom/android/gallery3d/data/Path;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 195
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 202
    :goto_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v2, :cond_6

    .line 203
    iget v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mItemsNum:I

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 204
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAllSelected:Z

    .line 221
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 222
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mListener:Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V

    .line 227
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz v2, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    .line 230
    :cond_3
    return-void

    .line 198
    .end local v0           #count:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 199
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAllSelected:Z

    goto :goto_1

    .line 210
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    .line 211
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mIsAlbumSet:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 214
    .local v1, total:I
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 215
    .restart local v0       #count:I
    if-ne v1, v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_1

    .line 211
    .end local v0           #count:I
    .end local v1           #total:I
    :cond_7
    iget-object v2, p0, Lcom/android/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    goto :goto_2
.end method
