.class public Lcom/android/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V
    .locals 2
    .parameter "activity"
    .parameter "selectionManager"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryActivity;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 95
    invoke-static {p2}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 96
    new-instance v0, Lcom/android/gallery3d/ui/MenuExecutor$1;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$1;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/MenuExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/ui/SelectionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/MenuExecutor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/MenuExecutor;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/MenuExecutor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/MenuExecutor;->execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    return-void
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "context"
    .parameter "titleId"
    .parameter "progressMax"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 76
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 79
    if-le p2, v2, :cond_0

    .line 80
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 82
    :cond_0
    return-object v0
.end method

.method private execute(Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/util/ThreadPool$JobContext;ILcom/android/gallery3d/data/Path;)Z
    .locals 13
    .parameter "manager"
    .parameter "jc"
    .parameter "cmd"
    .parameter "path"

    .prologue
    .line 370
    const/4 v5, 0x1

    .line 371
    .local v5, result:Z
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Execute cmd: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 374
    .local v6, startTime:J
    sparse-switch p3, :sswitch_data_0

    .line 416
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 376
    :sswitch_0
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->delete(Lcom/android/gallery3d/data/Path;)V

    .line 418
    :cond_0
    :goto_0
    const-string v8, "MenuExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "It takes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms to execute cmd for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v5

    .line 379
    :sswitch_1
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->hide(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 382
    :sswitch_2
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->show(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 385
    :sswitch_3
    const/16 v8, 0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 388
    :sswitch_4
    const/16 v8, -0x5a

    move-object/from16 v0, p4

    invoke-virtual {p1, v0, v8}, Lcom/android/gallery3d/data/DataManager;->rotate(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 391
    :sswitch_5
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 392
    .local v4, obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->getCacheFlag()I

    move-result v1

    .line 393
    .local v1, cacheFlag:I
    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 394
    const/4 v1, 0x1

    .line 398
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/gallery3d/data/MediaObject;->cache(I)V

    goto :goto_0

    .line 396
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 402
    .end local v1           #cacheFlag:I
    .end local v4           #obj:Lcom/android/gallery3d/data/MediaObject;
    :sswitch_6
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/MediaItem;

    .line 403
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v8, 0x2

    new-array v3, v8, [D

    .line 404
    .local v3, latlng:[D
    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/MediaItem;->getLatLong([D)V

    .line 405
    const/4 v8, 0x0

    aget-wide v8, v3, v8

    const/4 v10, 0x1

    aget-wide v10, v3, v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 406
    iget-object v8, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v8, Landroid/content/Context;

    const/4 v9, 0x0

    aget-wide v9, v3, v9

    const/4 v11, 0x1

    aget-wide v11, v3, v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/gallery3d/util/GalleryUtils;->showOnMap(Landroid/content/Context;DD)V

    goto/16 :goto_0

    .line 411
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v3           #latlng:[D
    :sswitch_7
    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v4

    .line 412
    .restart local v4       #obj:Lcom/android/gallery3d/data/MediaObject;
    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaObject;->Import()Z

    move-result v5

    .line 413
    goto/16 :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x7f0c0000 -> :sswitch_5
        0x7f0c010e -> :sswitch_7
        0x7f0c010f -> :sswitch_0
        0x7f0c0111 -> :sswitch_4
        0x7f0c0112 -> :sswitch_3
        0x7f0c0116 -> :sswitch_6
        0x7f0c0117 -> :sswitch_1
        0x7f0c0118 -> :sswitch_2
    .end sparse-switch
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "action"

    .prologue
    .line 211
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    .line 212
    .local v0, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 213
    .local v2, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v3

    invoke-static {v3}, Lcom/android/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, mimeType:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 359
    packed-switch p0, :pswitch_data_0

    .line 364
    :pswitch_0
    const-string v0, "*/*"

    :goto_0
    return-object v0

    .line 361
    :pswitch_1
    const-string v0, "image/*"

    goto :goto_0

    .line 363
    :pswitch_2
    const-string v0, "video/*"

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSingleSelectedPath()Lcom/android/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 205
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    .local v0, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 207
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/Path;

    return-object v1

    :cond_0
    move v1, v2

    .line 206
    goto :goto_0
.end method

.method private onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 2
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 219
    return-void
.end method

.method private onProgressComplete(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "result"
    .parameter "listener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method private onProgressUpdate(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "index"
    .parameter "listener"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void
.end method

.method private static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 151
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 152
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 153
    :cond_0
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 128
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 132
    iput-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 134
    :cond_1
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;I)V
    .locals 16
    .parameter "menu"
    .parameter "supported"

    .prologue
    .line 156
    and-int/lit8 v14, p1, 0x1

    if-eqz v14, :cond_1

    const/4 v4, 0x1

    .line 157
    .local v4, supportDelete:Z
    :goto_0
    and-int/lit8 v14, p1, 0x2

    if-eqz v14, :cond_2

    const/4 v9, 0x1

    .line 159
    .local v9, supportRotate:Z
    :goto_1
    sget-boolean v14, Lcom/android/gallery3d/data/LocalImage;->mIsdrmOrNormal:Z

    if-eqz v14, :cond_3

    and-int/lit8 v14, p1, 0x8

    if-eqz v14, :cond_3

    const/4 v3, 0x1

    .line 162
    .local v3, supportCrop:Z
    :goto_2
    sget-boolean v14, Lcom/android/gallery3d/data/LocalImage;->mIsdrmOrNormal:Z

    if-eqz v14, :cond_4

    and-int/lit8 v14, p1, 0x4

    if-eqz v14, :cond_4

    const/4 v11, 0x1

    .line 164
    .local v11, supportShare:Z
    :goto_3
    and-int/lit8 v14, p1, 0x20

    if-eqz v14, :cond_5

    const/4 v10, 0x1

    .line 165
    .local v10, supportSetAs:Z
    :goto_4
    invoke-static {}, Lcom/android/gallery3d/app/Gallery;->isHasGoogleMaps()Z

    move-result v14

    if-eqz v14, :cond_6

    and-int/lit8 v14, p1, 0x10

    if-eqz v14, :cond_6

    const/4 v13, 0x1

    .line 166
    .local v13, supportShowOnMap:Z
    :goto_5
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_7

    const/4 v2, 0x1

    .line 167
    .local v2, supportCache:Z
    :goto_6
    sget-boolean v14, Lcom/android/gallery3d/data/LocalImage;->mIsdrmOrNormal:Z

    if-eqz v14, :cond_8

    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_8

    const/4 v5, 0x1

    .line 168
    .local v5, supportEdit:Z
    :goto_7
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_9

    const/4 v8, 0x1

    .line 169
    .local v8, supportInfo:Z
    :goto_8
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_a

    const/4 v7, 0x1

    .line 170
    .local v7, supportImport:Z
    :goto_9
    const/high16 v14, 0x200

    and-int v14, v14, p1

    if-eqz v14, :cond_b

    const/4 v6, 0x1

    .line 171
    .local v6, supportHide:Z
    :goto_a
    const/high16 v14, 0x400

    and-int v14, v14, p1

    if-eqz v14, :cond_c

    const/4 v12, 0x1

    .line 173
    .local v12, supportShow:Z
    :goto_b
    const v14, 0x7f0c010f

    move-object/from16 v0, p0

    invoke-static {v0, v14, v4}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 174
    const v14, 0x7f0c0111

    move-object/from16 v0, p0

    invoke-static {v0, v14, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 175
    const v14, 0x7f0c0112

    move-object/from16 v0, p0

    invoke-static {v0, v14, v9}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 176
    const v14, 0x7f0c0113

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 177
    const v14, 0x7f0c010d

    move-object/from16 v0, p0

    invoke-static {v0, v14, v11}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 178
    const v14, 0x7f0c0114

    move-object/from16 v0, p0

    invoke-static {v0, v14, v10}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 179
    const v14, 0x7f0c0116

    move-object/from16 v0, p0

    invoke-static {v0, v14, v13}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 180
    const v14, 0x7f0c0110

    move-object/from16 v0, p0

    invoke-static {v0, v14, v5}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 181
    const v14, 0x7f0c0115

    move-object/from16 v0, p0

    invoke-static {v0, v14, v8}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 182
    const v14, 0x7f0c010e

    move-object/from16 v0, p0

    invoke-static {v0, v14, v7}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 183
    const v14, 0x7f0c0117

    move-object/from16 v0, p0

    invoke-static {v0, v14, v6}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 184
    const v14, 0x7f0c0118

    move-object/from16 v0, p0

    invoke-static {v0, v14, v12}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 187
    const v14, 0x7f0c0114

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 188
    .local v1, setAsItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 189
    sget-boolean v14, Lcom/android/gallery3d/data/LocalImage;->mIsdrmOrNormal:Z

    if-eqz v14, :cond_d

    .line 190
    const v14, 0x7f0c0114

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f0e004b

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 202
    :cond_0
    :goto_c
    return-void

    .line 156
    .end local v1           #setAsItem:Landroid/view/MenuItem;
    .end local v2           #supportCache:Z
    .end local v3           #supportCrop:Z
    .end local v4           #supportDelete:Z
    .end local v5           #supportEdit:Z
    .end local v6           #supportHide:Z
    .end local v7           #supportImport:Z
    .end local v8           #supportInfo:Z
    .end local v9           #supportRotate:Z
    .end local v10           #supportSetAs:Z
    .end local v11           #supportShare:Z
    .end local v12           #supportShow:Z
    .end local v13           #supportShowOnMap:Z
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 157
    .restart local v4       #supportDelete:Z
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 159
    .restart local v9       #supportRotate:Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 162
    .restart local v3       #supportCrop:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 164
    .restart local v11       #supportShare:Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 165
    .restart local v10       #supportSetAs:Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 166
    .restart local v13       #supportShowOnMap:Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 167
    .restart local v2       #supportCache:Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 168
    .restart local v5       #supportEdit:Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 169
    .restart local v8       #supportInfo:Z
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 170
    .restart local v7       #supportImport:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 171
    .restart local v6       #supportHide:Z
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 192
    .restart local v1       #setAsItem:Landroid/view/MenuItem;
    .restart local v12       #supportShow:Z
    :cond_d
    const v14, 0x7f0c0114

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f0e00cf

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_c
.end method


# virtual methods
.method public onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 12
    .parameter "action"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 224
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    :pswitch_0
    return-void

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 236
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_3
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 242
    .restart local v7       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v7, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v7           #intent:Landroid/content/Intent;
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    .line 247
    .local v9, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcom/android/gallery3d/data/Path;

    move-result-object v10

    .line 248
    .local v10, path:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getMediaType(Lcom/android/gallery3d/data/Path;)I

    move-result v11

    .line 250
    .local v11, type:I
    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/GalleryUtils;->isDrmFileName(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v8

    .line 251
    .local v8, isdrm:Z
    if-eqz v8, :cond_1

    .line 252
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.ATTACH"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v7       #intent:Landroid/content/Intent;
    :goto_1
    const-string v0, "mimeType"

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v6, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v6, Landroid/app/Activity;

    .line 259
    .local v6, activity:Landroid/app/Activity;
    const v0, 0x7f0e0078

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 254
    .end local v6           #activity:Landroid/app/Activity;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    const-string v0, "android.intent.action.ATTACH_DATA"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    .restart local v7       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 264
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #isdrm:Z
    .end local v9           #manager:Lcom/android/gallery3d/data/DataManager;
    .end local v10           #path:Lcom/android/gallery3d/data/Path;
    .end local v11           #type:I
    :pswitch_5
    const v2, 0x7f0e0054

    .local v2, title:I
    :goto_2
    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto/16 :goto_0

    .line 267
    .end local v2           #title:I
    :pswitch_6
    const v2, 0x7f0e0071

    .line 268
    .restart local v2       #title:I
    goto :goto_2

    .line 270
    .end local v2           #title:I
    :pswitch_7
    const v2, 0x7f0e0070

    .line 271
    .restart local v2       #title:I
    goto :goto_2

    .line 273
    .end local v2           #title:I
    :pswitch_8
    const v2, 0x7f0e006f

    .line 274
    .restart local v2       #title:I
    goto :goto_2

    .line 276
    .end local v2           #title:I
    :pswitch_9
    const v2, 0x7f0e00b4

    .line 277
    .restart local v2       #title:I
    goto :goto_2

    .line 279
    .end local v2           #title:I
    :pswitch_a
    const v2, 0x7f0e0060

    .line 280
    .restart local v2       #title:I
    goto :goto_2

    .line 282
    .end local v2           #title:I
    :pswitch_b
    const v2, 0x7f0e0061

    .line 283
    .restart local v2       #title:I
    goto :goto_2

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f0c010e
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 4
    .parameter "menuItem"
    .parameter "confirmMsg"
    .parameter "listener"

    .prologue
    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 325
    .local v0, action:I
    if-eqz p2, :cond_1

    .line 326
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogShown()V

    .line 327
    :cond_0
    new-instance v1, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 328
    .local v1, cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00ee

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0056

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 337
    .end local v1           #cdl:Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 138
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 6
    .parameter "action"
    .parameter "title"
    .parameter "listener"

    .prologue
    .line 340
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/MenuExecutor;->startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 341
    return-void
.end method

.method public startAction(IILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V
    .locals 5
    .parameter "action"
    .parameter "title"
    .parameter "listener"
    .parameter "waitOnStop"
    .parameter "showDialog"

    .prologue
    .line 345
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 346
    .local v1, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-direct {p0}, Lcom/android/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 348
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 349
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/android/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;II)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    .line 350
    if-eqz p5, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 353
    :cond_0
    new-instance v2, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcom/android/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 354
    .local v2, operation:Lcom/android/gallery3d/ui/MenuExecutor$MediaOperation;
    iget-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mTask:Lcom/android/gallery3d/util/Future;

    .line 355
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    .line 356
    return-void
.end method
