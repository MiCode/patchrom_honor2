.class public Lcom/huawei/android/mewidget/lib/WidgetUnitManager;
.super Ljava/lang/Object;
.source "WidgetUnitManager.java"


# static fields
.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/huawei/android/mewidget/lib/WidgetUnitManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sMeWidgetManager:Lcom/huawei/android/mewidget/lib/WidgetUnitManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/android/mewidget/lib/WidgetUnitManager;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->sMeWidgetManager:Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    invoke-direct {v0}, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;-><init>()V

    sput-object v0, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->sMeWidgetManager:Lcom/huawei/android/mewidget/lib/WidgetUnitManager;

    .line 62
    :cond_0
    sget-object v0, Lcom/huawei/android/mewidget/lib/WidgetUnitManager;->sMeWidgetManager:Lcom/huawei/android/mewidget/lib/WidgetUnitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public updateAppWidget(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.action.MEWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "meWidgetIds"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 73
    const-string v2, "WIDGET_UNIT_REMOTEVIEWS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    const-string v2, "MeWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppWidget views="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "com.huawei.android.mewidget"

    const-string v3, "com.huawei.android.mewidget.MeWidgetService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
