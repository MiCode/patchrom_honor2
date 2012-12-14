.class public Lcom/android/gallery3d/widgetunit/PickAlbum;
.super Landroid/app/Activity;
.source "PickAlbum.java"


# instance fields
.field private mAlbumPath:Ljava/lang/String;

.field private mMeWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, -0x1

    .line 48
    if-eq p2, v8, :cond_0

    .line 49
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, p2, v4}, Lcom/android/gallery3d/widgetunit/PickAlbum;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->finish()V

    .line 81
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 56
    const-string v4, "album-path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mAlbumPath:Ljava/lang/String;

    .line 57
    const-string v4, "widgetunit PickAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PickAlbum onActivityResult mAlbumPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v4, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mAlbumPath:Ljava/lang/String;

    const-string v5, "/local/image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mAlbumPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, array:[Ljava/lang/String;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v0, v4

    .line 61
    .local v3, mBucket_id:Ljava/lang/String;
    const-string v4, "widgetunit PickAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PickAlbum mBucket_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    invoke-static {v4, v5, v3}, Lcom/android/gallery3d/widgetunit/GalleryUnitUtils;->setSharedPrefer(Landroid/content/Context;ILjava/lang/String;)V

    .line 64
    const-string v4, "widgetunit PickAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PickAlbum setSharedPrefer mBucket_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Lcom/android/gallery3d/widgetunit/GalleryProvider;

    invoke-direct {v1}, Lcom/android/gallery3d/widgetunit/GalleryProvider;-><init>()V

    .line 67
    .local v1, galleryProvider:Lcom/android/gallery3d/widgetunit/GalleryProvider;
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    aput v7, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/android/gallery3d/widgetunit/GalleryProvider;->onUpdate(Landroid/content/Context;[I)V

    .line 70
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mAlbumPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    const-string v4, "meWidgetId"

    iget v5, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v4, "widgetunit PickAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send widgtunit id to MeWidget config:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0, v8, v2}, Lcom/android/gallery3d/widgetunit/PickAlbum;->setResult(ILandroid/content/Intent;)V

    .line 77
    .end local v0           #array:[Ljava/lang/String;
    .end local v1           #galleryProvider:Lcom/android/gallery3d/widgetunit/GalleryProvider;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mBucket_id:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->finish()V

    goto/16 :goto_0

    .line 79
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string v1, "meWidgetId"

    iget v2, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v3, v0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->setResult(ILandroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "meWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    .line 37
    const-string v0, "widgetunit PickAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PickAlbum oncreate  mMeWidgetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/widgetunit/PickAlbum;->mMeWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/AlbumPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/widgetunit/PickAlbum;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/PickAlbum;->finish()V

    goto :goto_0
.end method
