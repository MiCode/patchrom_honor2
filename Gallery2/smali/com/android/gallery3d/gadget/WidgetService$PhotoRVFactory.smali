.class Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;
.super Ljava/lang/Object;
.source "WidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/gadget/WidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoRVFactory"
.end annotation


# instance fields
.field private final mAlbumPath:Ljava/lang/String;

.field private final mApp:Lcom/android/gallery3d/app/GalleryApp;

.field private final mAppWidgetId:I

.field private mSource:Lcom/android/gallery3d/gadget/WidgetSource;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;IILjava/lang/String;)V
    .locals 0
    .parameter "app"
    .parameter "id"
    .parameter "type"
    .parameter "albumPath"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    .line 92
    iput p2, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    .line 93
    iput p3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    .line 94
    iput-object p4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040002

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v0, rv:Landroid/widget/RemoteViews;
    const v1, 0x7f0c0007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 147
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "position"

    .prologue
    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    if-nez v4, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    return-object v2

    .line 156
    :cond_0
    const/4 v2, 0x0

    .line 158
    .local v2, views:Landroid/widget/RemoteViews;
    :try_start_1
    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v4, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->getLoadingView()Landroid/widget/RemoteViews;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .end local v2           #views:Landroid/widget/RemoteViews;
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 173
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 160
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #views:Landroid/widget/RemoteViews;
    :cond_1
    :try_start_3
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f040004

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    .end local v2           #views:Landroid/widget/RemoteViews;
    .local v3, views:Landroid/widget/RemoteViews;
    const v4, 0x7f0c0009

    :try_start_4
    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 164
    const v4, 0x7f0c0009

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v6, p1}, Lcom/android/gallery3d/gadget/WidgetSource;->getContentUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 171
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #views:Landroid/widget/RemoteViews;
    .restart local v2       #views:Landroid/widget/RemoteViews;
    :goto_1
    :try_start_5
    monitor-exit p0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const-string v4, "GalleryAppWidgetService"

    const-string v5, "Exception in WidgetService.getLoadingView()"

    invoke-static {v4, v5, v1}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 167
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #views:Landroid/widget/RemoteViews;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #views:Landroid/widget/RemoteViews;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #views:Landroid/widget/RemoteViews;
    .restart local v2       #views:Landroid/widget/RemoteViews;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v2, 0x7f0c000a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 187
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 99
    iget v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 100
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAlbumPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 101
    .local v2, path:Lcom/android/gallery3d/data/Path;
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 102
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaSet;

    .line 103
    .local v1, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    if-nez v1, :cond_0

    new-instance v3, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/gallery3d/gadget/WidgetService$EmptySource;-><init>(Lcom/android/gallery3d/gadget/WidgetService$1;)V

    :goto_0
    iput-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 109
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v3, p0}, Lcom/android/gallery3d/gadget/WidgetSource;->setContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 110
    iget-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mAppWidgetId:I

    const v5, 0x7f0c000a

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 113
    return-void

    .line 103
    .restart local v0       #manager:Lcom/android/gallery3d/data/DataManager;
    .restart local v1       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .restart local v2       #path:Lcom/android/gallery3d/data/Path;
    :cond_0
    new-instance v3, Lcom/android/gallery3d/gadget/MediaSetSource;

    invoke-direct {v3, v1}, Lcom/android/gallery3d/gadget/MediaSetSource;-><init>(Lcom/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    .line 107
    .end local v0           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v1           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :cond_1
    new-instance v3, Lcom/android/gallery3d/gadget/LocalPhotoSource;

    iget-object v4, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mApp:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/gallery3d/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    goto :goto_1
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->reload()V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    invoke-interface {v0}, Lcom/android/gallery3d/gadget/WidgetSource;->close()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/WidgetService$PhotoRVFactory;->mSource:Lcom/android/gallery3d/gadget/WidgetSource;

    .line 122
    monitor-exit p0

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
