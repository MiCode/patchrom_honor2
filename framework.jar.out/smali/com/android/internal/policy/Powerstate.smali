.class public Lcom/android/internal/policy/Powerstate;
.super Ljava/lang/Object;
.source "Powerstate.java"


# static fields
.field private static final AIRPLANE_MODE:Ljava/lang/String; = "airplanemode"

.field private static final BLUETOOTH_STATE:Ljava/lang/String; = "btstate"

.field private static final CHARGER_SHOW_LOCK:Ljava/lang/Object; = null

.field private static DEBUG:Z = false

.field private static final DELAY_FM_TIME:I = 0x64

.field private static final DELEY_WAITTOSHOW_TIME:I = 0x64

.field private static final FAST_POWER_OFF:Ljava/lang/String; = "fastpoweroff"

.field private static final FAST_POWER_STATE_FILENAME:Ljava/lang/String; = "before_power_off.xml"

.field private static final GPS_STATE:Ljava/lang/String; = "gpsstate"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_STATE_READS:I = 0x10

.field static final MAX_RECENT_TASKS:I = 0x14

.field private static final MAX_SERVICES:I = 0x64

.field private static final MAX_TIMES_WAIT_ANIMATION:I = 0x28

.field private static final MAX_TIMES_WAIT_FM:I = 0x14

.field private static final MAX_WAIT_TIME_CLOSETETHER:I = 0x1b58

.field private static final MODEM_POWERON_SLEEP_MSEC:I = 0x14

.field public static final NEED_RESTORE:I = 0x1

.field public static final NOT_NEED_RESTORE:I = 0x0

.field public static final POWERUP_ANIMATION:I = 0x1

.field private static final RADIO_STATE:Ljava/lang/String; = "radiostate"

.field private static final RINGER_MODE:Ljava/lang/String; = "ringermode"

.field private static final SENSOR_STATE:Ljava/lang/String; = "sensorstate"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Powerstate"

.field private static final TIME_POWERON_ANIMATION:I = 0x1388

.field private static final TIME_SECOND_KILL_WAIT:I = 0x258

.field private static final WIFI_STATE:Ljava/lang/String; = "wifistate"

.field public static animChargeProcess:Ljava/lang/Process;

.field private static bGetWallPaperProc:Z

.field private static bootAnimateIsRun:Z

.field private static broadcastDone:Z

.field public static fProcess:Ljava/lang/Process;

.field private static isReadFromStateFile:Z

.field public static isSetInChargeEnable:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPowerDownCharge_path1:Ljava/lang/String;

.field private static mPowerDownCharge_path2:Ljava/lang/String;

.field private static mPowerManagerService:Landroid/os/IPowerManager;

.field public static mScreenOffNatually:Ljava/lang/Runnable;

.field public static sHandler:Landroid/os/Handler;

.field private static shutdownScreenState:I

.field private static wallPaperProcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .line 101
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    .line 107
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 109
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 110
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 122
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 123
    sput-object v1, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    .line 125
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->CHARGER_SHOW_LOCK:Ljava/lang/Object;

    .line 669
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 739
    sput-object v1, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 827
    const-string v0, "/system/media/chargeranimation.zip"

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path1:Ljava/lang/String;

    .line 828
    const-string v0, "/data/local/chargeranimation.zip"

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path2:Ljava/lang/String;

    .line 829
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->isSetInChargeEnable:Z

    .line 830
    sput-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 879
    sput v3, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    .line 914
    new-instance v0, Lcom/android/internal/policy/Powerstate$3;

    invoke-direct {v0}, Lcom/android/internal/policy/Powerstate$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mScreenOffNatually:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/IPowerManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    sput p0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    return p0
.end method

.method public static checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 13
    .parameter "rapi"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 494
    move-object v4, p0

    .line 496
    .local v4, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    if-nez v10, :cond_5

    .line 497
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string v11, "begin parser"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 501
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 502
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 505
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 506
    .local v7, type:I
    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    .line 507
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 508
    .local v6, tag:Ljava/lang/String;
    const-string/jumbo v10, "wp"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 509
    const/4 v10, 0x0

    const-string v11, "component"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, comp:Ljava/lang/String;
    const/4 v10, 0x0

    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
    .end local v0           #comp:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_2
    if-ne v7, v9, :cond_1

    .line 515
    if-eqz v5, :cond_3

    .line 516
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :cond_3
    :goto_0
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "Powerstate"

    const-string v11, "end parser"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_4
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 529
    :cond_5
    const-string v10, "com.android.settings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 540
    :cond_6
    :goto_1
    return v8

    .line 518
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v7       #type:I
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Ljava/io/IOException;
    const/4 v10, 0x1

    :try_start_2
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 521
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :catch_1
    move-exception v1

    .line 522
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    goto :goto_0

    .line 533
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v11, 0x3e8

    if-eq v10, v11, :cond_8

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v11, 0x3e9

    if-eq v10, v11, :cond_8

    const-string v10, "android.process.acore"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "com.android.systemui"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "android.process.media"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_8
    move v8, v9

    .line 538
    goto :goto_1
.end method

.method public static destroyPowerOffCharge()V
    .locals 2

    .prologue
    .line 867
    sget-object v1, Lcom/android/internal/policy/Powerstate;->CHARGER_SHOW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 870
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 871
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 872
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 874
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getAirplaneModeOn(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getBluetoothState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 138
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 140
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    const/16 v2, 0xa

    .line 142
    .local v2, state:I
    if-nez v0, :cond_0

    .line 143
    const/16 v3, 0xa

    .line 151
    :goto_0
    return v3

    .line 147
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 151
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getSensorState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getWifiState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 163
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static isAllowToShow(I)Z
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1059
    if-ne v1, p0, :cond_0

    .line 1061
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-ne v2, v1, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1061
    goto :goto_0
.end method

.method public static killRunningProcess(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 451
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 453
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x64

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 455
    .local v5, runServiceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 457
    .local v6, sumRS:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 458
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 459
    .local v3, rs:Landroid/app/ActivityManager$RunningServiceInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RunningServiceInfo  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  service name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  process :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    const-string v8, "android.process.acore"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x3e9

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const/16 v8, 0x3e8

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const-string v8, "android.process.media"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.android.systemui"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 457
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 469
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stop RunningServiceInfo name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 472
    .end local v3           #rs:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 474
    .local v4, runAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 475
    .local v7, sumRunProcesses:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_7

    .line 476
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 477
    .local v2, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "runAppInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   packagename:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_4
    invoke-static {v2}, Lcom/android/internal/policy/Powerstate;->checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 475
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 481
    :cond_5
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "killRunningProcess runAppInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   packagename:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_6
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3

    .line 485
    .end local v2           #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 486
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearRecentTasks()V

    .line 487
    return-void
.end method

.method public static powerOnforAlarm(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 1074
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    const-string/jumbo v10, "persist.sys.quickpoweron"

    const-string/jumbo v12, "startpoweron"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v10, "Powerstate"

    const-string v12, " before powerOnforAlarm setModemPower(true)"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1079
    .local v6, modePhone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v6, :cond_2

    .line 1080
    const-wide/16 v12, 0x14

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    .line 1081
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "Powerstate"

    const-string/jumbo v12, "toggleAirPlane wait phone ready"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_1
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    goto :goto_0

    .line 1085
    :cond_2
    const/4 v10, 0x1

    :try_start_0
    invoke-interface {v6, v10}, Lcom/android/internal/telephony/ITelephony;->setModemPower(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_1
    const-string v10, "Powerstate"

    const-string v12, " after powerOnforAlarm setModemPower(true)"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    sget-object v10, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v10, :cond_3

    .line 1092
    sget-object v10, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V

    .line 1093
    sput-object v14, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 1096
    :cond_3
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1097
    .local v5, mHomeIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const/high16 v10, 0x1020

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1099
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1101
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v7

    .line 1102
    .local v7, result:Z
    if-nez v7, :cond_4

    .line 1104
    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :goto_2
    return-void

    .line 1086
    .end local v5           #mHomeIntent:Landroid/content/Intent;
    .end local v7           #result:Z
    :catch_0
    move-exception v3

    .line 1087
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1107
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v5       #mHomeIntent:Landroid/content/Intent;
    .restart local v7       #result:Z
    :cond_4
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "wifistate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1109
    .local v9, wifiState:Ljava/lang/Integer;
    if-nez v9, :cond_5

    .line 1111
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1114
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 1116
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v12, "btstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1117
    .local v2, bluethState:Ljava/lang/Integer;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState bluethState ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_6
    if-nez v2, :cond_7

    .line 1120
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1123
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 1125
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v12, "gpsstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1126
    .local v4, gpsState:Ljava/lang/Integer;
    if-nez v4, :cond_8

    .line 1128
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1131
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v1, :cond_f

    .line 1132
    .local v1, bgpsState:Z
    :goto_3
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_9

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState gpsState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bgpsState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_9
    invoke-static {p0, v1}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 1135
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "ringermode"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1136
    .local v8, ringtoneMode:Ljava/lang/Integer;
    if-nez v8, :cond_a

    .line 1138
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1141
    :cond_a
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_b

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState ringtonemode ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 1145
    const-string/jumbo v10, "true"

    const-string/jumbo v12, "ro.poweroff_alarm"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "user_set_airplane"

    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v14, "airplanemode"

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v12, v13, v10}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1148
    :cond_c
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 1150
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "sensorstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1151
    .local v0, SensorState:Ljava/lang/Integer;
    if-nez v0, :cond_d

    .line 1153
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState Sensor get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1156
    :cond_d
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_e

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restorePhoneState Sensor State ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    goto/16 :goto_2

    .end local v0           #SensorState:Ljava/lang/Integer;
    .end local v1           #bgpsState:Z
    .end local v8           #ringtoneMode:Ljava/lang/Integer;
    :cond_f
    move v1, v11

    .line 1131
    goto/16 :goto_3
.end method

.method private static readStateFromFile()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 996
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "readStateFromFile begin"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    if-eqz v12, :cond_2

    .line 998
    const-string v12, "Powerstate"

    const-string/jumbo v13, "readStateFromFile has been called!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 1050
    .local v1, file:Ljava/io/File;
    :cond_1
    :goto_0
    return v7

    .line 1002
    .end local v1           #file:Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1003
    .restart local v1       #file:Ljava/io/File;
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1004
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1005
    const/4 v7, 0x0

    goto :goto_0

    .line 1008
    :cond_3
    const/4 v5, 0x0

    .line 1009
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1011
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1012
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1013
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1016
    const/4 v2, 0x0

    .line 1018
    .local v2, itemIndex:I
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1019
    .local v9, type:I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_5

    .line 1020
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1021
    .local v8, tag:Ljava/lang/String;
    const-string v12, "item"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1022
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1023
    .local v3, k:Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1024
    .local v10, v:Ljava/lang/Integer;
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1027
    .end local v3           #k:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    .end local v10           #v:Ljava/lang/Integer;
    :cond_5
    if-ne v9, v11, :cond_4

    .line 1028
    const/4 v7, 0x1

    move-object v5, v6

    .line 1042
    .end local v2           #itemIndex:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_6

    .line 1043
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1048
    :cond_6
    :goto_2
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 1049
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "Powerstate"

    const-string/jumbo v12, "readStateFromFile end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1031
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1032
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1033
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 1034
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1035
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 1036
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1037
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1038
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1045
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v12

    goto/16 :goto_2

    .line 1037
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 1035
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 1033
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1031
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1029
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static restoreAirMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 599
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreAirMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v1

    .line 601
    .local v1, result:Z
    if-nez v1, :cond_2

    .line 603
    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAirMode readStateFromFile result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 611
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 613
    const-string v2, "Powerstate"

    const-string/jumbo v3, "restorePhoneState airplaneMode get failed use the default value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 616
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorePhoneState airplaneMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static restorePhoneState(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 548
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 551
    .local v3, result:Z
    if-nez v3, :cond_1

    .line 553
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_0
    return-void

    .line 556
    :cond_1
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "wifistate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 558
    .local v5, wifiState:Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 560
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 563
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 565
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "btstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 566
    .local v1, bluethState:Ljava/lang/Integer;
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState bluethState ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_3
    if-nez v1, :cond_4

    .line 569
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 572
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 574
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "gpsstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 575
    .local v2, gpsState:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 577
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 580
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v0, :cond_9

    .line 581
    .local v0, bgpsState:Z
    :goto_1
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState gpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bgpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 584
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v7, "ringermode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 585
    .local v4, ringtoneMode:Ljava/lang/Integer;
    if-nez v4, :cond_7

    .line 587
    const-string v6, "Powerstate"

    const-string/jumbo v7, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 590
    :cond_7
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState ringtonemode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v0           #bgpsState:Z
    .end local v4           #ringtoneMode:Ljava/lang/Integer;
    :cond_9
    move v0, v6

    .line 580
    goto :goto_1
.end method

.method public static restoreSensorState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 627
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreSensorState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v1

    .line 630
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 632
    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSensorState readStateFromFile result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 636
    :cond_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "sensorstate"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 637
    .local v0, SensorState:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 639
    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreSensorState Sensor get failed use the default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 642
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSensorState Sensor State ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "need_restore_phone_state"

    invoke-static {v2, v3, v5}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static savePhoneState(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 407
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 408
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 411
    :cond_0
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 412
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v5, "fastpoweroff"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v5, "wifistate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getWifiState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v5, "btstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v6, "gpsstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getGpsState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "sensorstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getSensorState(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ro.poweroff_alarm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_set_airplane"

    invoke-static {v2, v3, v7}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 423
    .local v1, userSetAirplane:I
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power off Alarm userSetAirplane : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    if-ne v7, v1, :cond_5

    .line 426
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v1           #userSetAirplane:I
    :goto_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    .line 436
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 438
    :cond_2
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "ringermode"

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v0

    .line 441
    .local v0, bResult:Z
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savePhoneSatesaveStateToFile bResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_3
    return-void

    .end local v0           #bResult:Z
    :cond_4
    move v2, v4

    .line 415
    goto/16 :goto_0

    .line 428
    .restart local v1       #userSetAirplane:I
    :cond_5
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 431
    .end local v1           #userSetAirplane:I
    :cond_6
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static saveStateToFile()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 935
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "saveStateToFile"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 941
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 946
    :cond_1
    :goto_0
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 948
    const/4 v7, 0x0

    .line 950
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    invoke-direct {v8, v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 951
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 952
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "utf-8"

    invoke-interface {v6, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 953
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 954
    const/4 v12, 0x0

    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 955
    const/4 v4, 0x0

    .line 957
    .local v4, itemIndex:I
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v4

    .line 958
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 959
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 960
    .local v5, k:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 961
    .local v9, v:Ljava/lang/Object;
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 962
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v6, v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 963
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 975
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v5           #k:Ljava/lang/String;
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #v:Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 977
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v7, :cond_2

    .line 978
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 983
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 984
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move v10, v11

    .line 986
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    return v10

    .line 967
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #itemIndex:I
    .restart local v6       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v12, 0x0

    :try_start_4
    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 968
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 970
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 971
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 973
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v8

    .line 974
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 942
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 980
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 975
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static sendStopBC(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 679
    :try_start_0
    const-string v18, "com.huawei.android.FMRadio"

    .line 681
    .local v18, fmPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    .line 682
    .local v17, fmContext:Landroid/content/Context;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 685
    .local v19, fmSp:Landroid/content/SharedPreferences;
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    const/16 v2, 0x14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 690
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 692
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 702
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :cond_0
    :goto_1
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v11, closeDialogs:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 707
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 708
    .local v10, broadcastDoneSync:Ljava/lang/Object;
    new-instance v5, Lcom/android/internal/policy/Powerstate$2;

    invoke-direct {v5, v10}, Lcom/android/internal/policy/Powerstate$2;-><init>(Ljava/lang/Object;)V

    .line 717
    .local v5, br:Landroid/content/BroadcastReceiver;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 718
    const-string v2, "Powerstate"

    const-string v3, "begin Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v6, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v15, v2, v6

    .line 721
    .local v15, endTime:J
    monitor-enter v10

    .line 722
    :goto_2
    :try_start_1
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    if-nez v2, :cond_1

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v15, v2

    .line 724
    .local v12, delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_3

    .line 725
    const-string v2, "Powerstate"

    const-string/jumbo v3, "shutdown broadcast timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v12           #delay:J
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    const-string v2, "Powerstate"

    const-string v3, "end Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 689
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #broadcastDoneSync:Ljava/lang/Object;
    .end local v11           #closeDialogs:Landroid/content/Intent;
    .end local v15           #endTime:J
    .restart local v17       #fmContext:Landroid/content/Context;
    .restart local v18       #fmPackageName:Ljava/lang/String;
    .restart local v19       #fmSp:Landroid/content/SharedPreferences;
    .restart local v20       #i:I
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 697
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :catch_0
    move-exception v14

    .line 698
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 729
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v10       #broadcastDoneSync:Ljava/lang/Object;
    .restart local v11       #closeDialogs:Landroid/content/Intent;
    .restart local v12       #delay:J
    .restart local v15       #endTime:J
    :cond_3
    :try_start_2
    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 730
    :catch_1
    move-exception v2

    goto :goto_2

    .line 733
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public static setInChargeScreenState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 881
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->isSetInChargeEnable:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 882
    const-string v0, "InputMonitor OoO"

    const-string v1, "i am going to handle the screen problem."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    sget v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    if-nez v0, :cond_0

    .line 885
    sput v2, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    .line 887
    :cond_0
    sget v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_0
    :pswitch_0
    sget v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    return v0

    .line 889
    :pswitch_1
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->SetScreenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 894
    :goto_1
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    goto :goto_0

    .line 898
    :pswitch_2
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :try_start_1
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->SetScreenState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 903
    :goto_2
    sput v2, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    goto :goto_0

    .line 909
    :cond_1
    sput v1, Lcom/android/internal/policy/Powerstate;->shutdownScreenState:I

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    goto :goto_2

    .line 892
    :catch_1
    move-exception v0

    goto :goto_1

    .line 887
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setPoweroffState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 656
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Powerstate"

    const-string/jumbo v1, "setPoweroffState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_restore_phone_state"

    invoke-static {v0, v1, v3}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 662
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 663
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 664
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 665
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 666
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    .line 667
    return-void
.end method

.method public static showAnimationAgain(Landroid/content/Context;)V
    .locals 9
    .parameter "mContext"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 746
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-eqz v5, :cond_1

    .line 748
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Powerstate"

    const-string v6, "Power on animation is running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    sput-boolean v6, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 756
    :try_start_0
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :cond_2
    :goto_1
    const-string/jumbo v5, "vibrator"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 763
    .local v3, vibrator:Landroid/os/Vibrator;
    if-eqz v3, :cond_3

    .line 764
    const/4 v5, 0x2

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 769
    :cond_3
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "Powerstate"

    const-string/jumbo v6, "start to show power on AnimationAgain"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "/system/bin/bootanimationex"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 774
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v5, 0x28

    if-ge v1, v5, :cond_5

    .line 775
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "persist.sys.animationstart"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-eqz v5, :cond_9

    .line 783
    :cond_5
    :try_start_2
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->SetScreenState(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 789
    :cond_6
    :goto_3
    :try_start_3
    const-string/jumbo v5, "ro.config.hw_poanimation"

    const/16 v6, 0x1388

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 790
    .local v2, timeLong:I
    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 801
    .end local v2           #timeLong:I
    :goto_4
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 803
    .local v4, windowManager:Landroid/view/IWindowManager;
    :try_start_4
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->SetScreenState(Z)V

    .line 804
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V

    .line 805
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->resetHdmiState(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    .line 810
    :goto_5
    :try_start_5
    sget-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-eqz v5, :cond_7

    .line 811
    sget-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 812
    sget-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 813
    const/4 v5, 0x0

    sput-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6

    .line 818
    :cond_7
    :goto_6
    const-string/jumbo v5, "persist.sys.animationstart"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string/jumbo v5, "persist.sys.quickpoweron"

    const-string/jumbo v6, "normal"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "Powerstate"

    const-string/jumbo v6, "showAnimation finished"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    .end local v1           #i:I
    :cond_8
    :goto_7
    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    goto/16 :goto_0

    .line 757
    .end local v3           #vibrator:Landroid/os/Vibrator;
    .end local v4           #windowManager:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPowerManagerService.allowShowScreenWithDelay false failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 778
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v3       #vibrator:Landroid/os/Vibrator;
    :cond_9
    :try_start_6
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "Powerstate"

    const-string/jumbo v6, "wait to show animation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_a
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 784
    :catch_1
    move-exception v0

    .line 785
    .restart local v0       #e:Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPowerManagerService.SetScreenState true failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 795
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    :catch_2
    move-exception v0

    .line 796
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Runtime.getRuntime().exec failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 801
    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 803
    .restart local v4       #windowManager:Landroid/view/IWindowManager;
    :try_start_8
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->SetScreenState(Z)V

    .line 804
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V

    .line 805
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->resetHdmiState(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 810
    :goto_8
    :try_start_9
    sget-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-eqz v5, :cond_c

    .line 811
    sget-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 812
    sget-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 813
    const/4 v5, 0x0

    sput-object v5, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    .line 818
    .end local v0           #e:Ljava/io/IOException;
    :cond_c
    :goto_9
    const-string/jumbo v5, "persist.sys.animationstart"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string/jumbo v5, "persist.sys.quickpoweron"

    const-string/jumbo v6, "normal"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "Powerstate"

    const-string/jumbo v6, "showAnimation finished"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 791
    .end local v4           #windowManager:Landroid/view/IWindowManager;
    .restart local v1       #i:I
    :catch_3
    move-exception v0

    .line 792
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 800
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    .line 801
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 803
    .restart local v4       #windowManager:Landroid/view/IWindowManager;
    :try_start_b
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->SetScreenState(Z)V

    .line 804
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V

    .line 805
    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/view/IWindowManager;->resetHdmiState(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    .line 810
    :goto_a
    :try_start_c
    sget-object v6, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-eqz v6, :cond_d

    .line 811
    sget-object v6, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 812
    sget-object v6, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 813
    const/4 v6, 0x0

    sput-object v6, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4

    .line 818
    :cond_d
    :goto_b
    const-string/jumbo v6, "persist.sys.animationstart"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string/jumbo v6, "persist.sys.quickpoweron"

    const-string/jumbo v7, "normal"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "Powerstate"

    const-string/jumbo v7, "showAnimation finished"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_e
    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 800
    throw v5

    .line 815
    :catch_4
    move-exception v0

    .line 816
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    .line 815
    .local v0, e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 816
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 815
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #i:I
    :catch_6
    move-exception v0

    .line 816
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 806
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v5

    goto/16 :goto_5

    .end local v1           #i:I
    .local v0, e:Ljava/io/IOException;
    :catch_8
    move-exception v5

    goto/16 :goto_8

    .end local v0           #e:Ljava/io/IOException;
    :catch_9
    move-exception v6

    goto :goto_a

    .line 764
    nop

    :array_0
    .array-data 0x8
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static showPowerOffCharge()V
    .locals 6

    .prologue
    .line 834
    sget-object v3, Lcom/android/internal/policy/Powerstate;->CHARGER_SHOW_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 835
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v2, :cond_0

    .line 836
    monitor-exit v3

    .line 863
    .local v1, i:I
    :goto_0
    return-void

    .line 837
    .end local v1           #i:I
    :cond_0
    const-string v2, "Powerstate"

    const-string/jumbo v4, "showPowerOffCharge E"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path1:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path2:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 841
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/os/IPowerManager;->SetScreenState(Z)V

    .line 842
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "/system/bin/chargershow"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 848
    .local v0, e:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    :goto_2
    const/16 v2, 0x28

    if-ge v1, v2, :cond_2

    .line 849
    :try_start_2
    const-string/jumbo v2, "true"

    const-string/jumbo v4, "persist.sys.animationstart"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 856
    :cond_2
    :try_start_3
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/os/IPowerManager;->SetScreenState(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 859
    :goto_3
    :try_start_4
    const-string/jumbo v2, "persist.sys.animationstart"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_3
    const-string v2, "Powerstate"

    const-string/jumbo v4, "showPowerOffCharge X"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    monitor-exit v3

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    const-string v2, "Powerstate"

    const-string/jumbo v4, "run powerdown charge animation failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 852
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Powerstate"

    const-string/jumbo v4, "wait to show power off animation"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_5
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 857
    :catch_1
    move-exception v2

    goto :goto_3

    .line 846
    .end local v1           #i:I
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static synAirplaneMode(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1164
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Powerstate"

    const-string/jumbo v7, "synairplanemode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    move-object v2, p0

    .line 1166
    .local v2, modeContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 1167
    .local v3, resultReadStateFromFile:Z
    if-nez v3, :cond_2

    .line 1168
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "synAirplaneMode readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :cond_1
    :goto_0
    return-void

    .line 1172
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_set_airplane"

    invoke-static {v6, v7, v8}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1173
    .local v5, userChangeAirplane:I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1175
    .local v4, stateAirPlane:I
    if-ne v8, v5, :cond_3

    .line 1177
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v1

    .line 1179
    .local v1, bResultSaveStateToFile:Z
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user have change airplane and saveStateToFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1182
    .end local v1           #bResultSaveStateToFile:Z
    :cond_3
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1183
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 1184
    const-string v6, "Powerstate"

    const-string/jumbo v7, "user not change airplane, synAirplaneMode airplaneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1187
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleAirPlane(Landroid/content/Context;I)V
    .locals 14
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 306
    .local v7, stateAirPlane:I
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggle AirPlane now stateAirPlane is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    if-ne p1, v7, :cond_2

    .line 309
    sget-boolean v9, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "Powerstate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "toggle AirPlane now is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  then return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggleAirPlane switch air mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    if-nez p1, :cond_4

    .line 315
    move-object v4, p0

    .line 316
    .local v4, modeContext:Landroid/content/Context;
    move v8, p1

    .line 317
    .local v8, stateIson:I
    new-instance v0, Lcom/android/internal/policy/Powerstate$1;

    invoke-direct {v0, v4, v8}, Lcom/android/internal/policy/Powerstate$1;-><init>(Landroid/content/Context;I)V

    .line 336
    .local v0, aThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 337
    .end local v0           #aThread:Ljava/lang/Thread;
    .end local v4           #modeContext:Landroid/content/Context;
    .end local v8           #stateIson:I
    :cond_4
    if-ne v9, p1, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v11, "state"

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 345
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v5, :cond_6

    move v6, v9

    .line 347
    .local v6, radioOff:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v11, 0x10

    if-ge v2, v11, :cond_1

    .line 348
    if-nez v6, :cond_5

    .line 350
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_7

    move v6, v9

    .line 356
    :cond_5
    :goto_3
    if-eqz v6, :cond_8

    .line 357
    const-string v9, "Powerstate"

    const-string v10, "Radio shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #i:I
    .end local v6           #radioOff:Z
    :cond_6
    move v6, v10

    .line 345
    goto :goto_1

    .restart local v2       #i:I
    .restart local v6       #radioOff:Z
    :cond_7
    move v6, v10

    .line 350
    goto :goto_3

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, ex:Landroid/os/RemoteException;
    const-string v11, "Powerstate"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    const/4 v6, 0x1

    goto :goto_3

    .line 360
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static toggleBluetooth(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    const/16 v8, 0xa

    const/4 v5, 0x0

    .line 208
    const-string v6, "bluetooth"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 211
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 216
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toggleBluetooth now is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,then  return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_2
    if-ne v8, p1, :cond_5

    .line 222
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "Powerstate"

    const-string v7, "Disabling Bluetooth..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, bluetoothOff:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v6, 0x10

    if-ge v4, v6, :cond_5

    .line 228
    if-nez v1, :cond_4

    .line 230
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-ne v6, v8, :cond_7

    const/4 v1, 0x1

    .line 236
    :cond_4
    :goto_2
    if-eqz v1, :cond_8

    .line 237
    :try_start_2
    const-string v5, "Powerstate"

    const-string v6, "Bluetooth shutdown complete."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :cond_5
    :goto_3
    const/16 v5, 0xc

    if-ne v5, p1, :cond_0

    .line 249
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "Powerstate"

    const-string v6, "enable Bluetooth..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_6
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #bluetoothOff:Z
    .restart local v4       #i:I
    :cond_7
    move v1, v5

    .line 230
    goto :goto_2

    .line 231
    :catch_1
    move-exception v3

    .line 232
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "Powerstate"

    const-string v7, "RemoteException during bluetooth shutdown"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    const/4 v1, 0x1

    goto :goto_2

    .line 240
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 243
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :catch_2
    move-exception v2

    .line 244
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method private static toggleGps(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 291
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 294
    return-void
.end method

.method private static toggleRingToneMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "mode"

    .prologue
    .line 394
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 395
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 397
    :cond_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 398
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleRingToneMode mAudioManager mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    return-void
.end method

.method private static toggleSensorState(Landroid/content/Context;I)V
    .locals 4
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 375
    .local v0, SensorState:I
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState now SensorState is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    if-ne p1, v0, :cond_2

    .line 378
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState now is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  then return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState switch air mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleWifi(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 264
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 266
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 271
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiState now is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , nothing then  return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 276
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 277
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is enable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_3
    if-ne p1, v2, :cond_0

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 280
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is disable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
