.class public Lcom/android/gallery3d/widgetunit/GalleryUnitService;
.super Landroid/app/Service;
.source "GalleryUnitService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/widgetunit/GalleryUnitService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->updateView(I)V

    return-void
.end method

.method private prepareAndSendUpdateMessage(I)V
    .locals 2
    .parameter "meWidgetId"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandler:Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

    invoke-virtual {v1}, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 100
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandler:Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method private updateView(I)V
    .locals 9
    .parameter "meWidgetId"

    .prologue
    const v8, 0x7f040044

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0c00e4

    .line 126
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/gallery3d/widgetunit/GalleryUnitUtils;->getSharedPrefer(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, bucketId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 139
    const-string v2, "widgetunit GalleryUnitService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView setViewChooseAblum bucketId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " meWidgetId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 141
    .local v1, views:Landroid/widget/RemoteViews;
    const-string v2, "setViewChooseAblum"

    invoke-virtual {v1, v5, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 143
    const v2, 0x7f0c00e5

    const v3, 0x7f020185

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 145
    invoke-static {}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->getInstance()Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    move-result-object v2

    new-array v3, v7, [I

    aput p1, v3, v6

    invoke-virtual {v2, p0, v3, v1}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->updateAppWidget(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 153
    :goto_0
    return-void

    .line 147
    .end local v1           #views:Landroid/widget/RemoteViews;
    :cond_0
    const-string v2, "widgetunit GalleryUnitService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView setViewBucketId bucketId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " meWidgetId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 149
    .restart local v1       #views:Landroid/widget/RemoteViews;
    const-string v2, "setViewMeWidgetId"

    invoke-virtual {v1, v5, v2, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 150
    const-string v2, "setViewBucketId"

    invoke-virtual {v1, v5, v2, v0}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->getInstance()Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    move-result-object v2

    new-array v3, v7, [I

    aput p1, v3, v6

    invoke-virtual {v2, p0, v3, v1}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->updateAppWidget(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 33
    const-string v0, "widgetunit GalleryUnitService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BG handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;-><init>(Lcom/android/gallery3d/widgetunit/GalleryUnitService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandler:Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandler:Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->mHandler:Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/widgetunit/GalleryUnitService$UnitHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 55
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v7, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return v7

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    const-string v8, "meWidgetIds"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 66
    .local v6, widgetUnits:[I
    const-string v8, "widgetunit GalleryUnitService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStartCommand widgetUnits.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v8, "com.android.action.MEWIDGET_UPDATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_4

    .line 70
    aget v3, v6, v2

    .line 71
    .local v3, meWidgetId:I
    const-string v7, "widgetunit GalleryUnitService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_MEWIDGET_UPDATE meWidgetId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0, v3}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->prepareAndSendUpdateMessage(I)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    .end local v2           #i:I
    .end local v3           #meWidgetId:I
    :cond_1
    const-string v8, "com.android.action.MEWIDGET_DELETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 75
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_3

    .line 76
    aget v3, v6, v2

    .line 77
    .restart local v3       #meWidgetId:I
    const-string v8, "widgetunit GalleryUnitService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_MEWIDGET_DELETED meWidgetId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f040044

    invoke-direct {v5, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 79
    .local v5, views:Landroid/widget/RemoteViews;
    const v8, 0x7f0c00e4

    const-string v9, "setViewDelete"

    invoke-virtual {v5, v8, v9, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 80
    invoke-static {}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->getInstance()Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [I

    aput v3, v9, v7

    invoke-virtual {v8, p0, v9, v5}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->updateAppWidget(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 83
    const-string v8, "widgetunit gallery_unit"

    const/4 v9, 0x6

    invoke-virtual {p0, v8, v9}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 84
    .local v4, sharedPreferences:Landroid/content/SharedPreferences;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget_unitId_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 85
    const-string v8, "widgetunit GalleryUnitService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "remove sharedPreferences meWidgetId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 87
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widget_unitId_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 91
    .end local v3           #meWidgetId:I
    .end local v4           #sharedPreferences:Landroid/content/SharedPreferences;
    .end local v5           #views:Landroid/widget/RemoteViews;
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/widgetunit/GalleryUnitService;->stopSelf()V

    .line 93
    .end local v2           #i:I
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v7

    goto/16 :goto_0
.end method
