.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ALARM_RING_TIME:Ljava/lang/String; = "alarm_ring_time"

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final LOCAL_LOGV:Z = false

.field private static final POWER_OFF_ALARM_MAX_INTERVAL:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mDrmDialogService:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServerThread;->mDrmDialogService:Lcom/android/server/HWDrmDialogsService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/ServerThread;->setAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method private isWakeUpByPowerOffAlarm(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 1068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1069
    .local v2, currentTime:J
    const-wide/16 v0, -0x1

    .line 1072
    .local v0, alarmRingTime:J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_ring_time"

    invoke-static {v4, v5}, Landroid/provider/SettingsEx$Systemex;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1077
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 1079
    const/4 v4, 0x1

    .line 1081
    :goto_1
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1074
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "on"

    .prologue
    .line 1011
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1013
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1015
    return-void
.end method

.method private setAirplaneMode(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 1020
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1026
    .local v1, lastAirplaneMode:I
    const-string v5, "RTC"

    const-string v6, "persist.sys.powerup_reason"

    const-string v7, "NORMAL"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/ServerThread;->isWakeUpByPowerOffAlarm(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1033
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1035
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_set_airplane"

    invoke-static {v3, v4, v1}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1037
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/ServerThread;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V

    .line 1055
    .end local v1           #lastAirplaneMode:I
    :cond_0
    :goto_0
    return-void

    .line 1040
    .restart local v1       #lastAirplaneMode:I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_set_airplane"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1045
    .local v2, userChangeAirplane:I
    if-eq v8, v2, :cond_0

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1049
    if-ne v2, v3, :cond_2

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/ServerThread;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1052
    .end local v1           #lastAirplaneMode:I
    .end local v2           #userChangeAirplane:I
    :catch_0
    move-exception v0

    .line 1053
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "power off alarm occure error:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #lastAirplaneMode:I
    .restart local v2       #userChangeAirplane:I
    :cond_2
    move v3, v4

    .line 1049
    goto :goto_1
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1060
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1062
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1064
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 102
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return-void
.end method

.method public run()V
    .locals 120

    .prologue
    .line 108
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 111
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 113
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 116
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 117
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 121
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v98

    .line 123
    .local v98, shutdownAction:Ljava/lang/String;
    if-eqz v98, :cond_0

    invoke-virtual/range {v98 .. v98}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 124
    const/4 v3, 0x0

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_12

    const/16 v92, 0x1

    .line 127
    .local v92, reboot:Z
    :goto_0
    invoke-virtual/range {v98 .. v98}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_13

    .line 128
    const/4 v3, 0x1

    invoke-virtual/range {v98 .. v98}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v98

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v91

    .line 133
    .local v91, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v92

    move-object/from16 v1, v91

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 137
    .end local v91           #reason:Ljava/lang/String;
    .end local v92           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 138
    .local v68, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v67, 0x0

    .line 140
    .local v67, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 142
    .local v16, headless:Z
    const/16 v41, 0x0

    .line 143
    .local v41, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v56, 0x0

    .line 144
    .local v56, contentService:Landroid/content/ContentService;
    const/16 v73, 0x0

    .line 145
    .local v73, lights:Lcom/android/server/LightsService;
    const/16 v90, 0x0

    .line 146
    .local v90, power:Lcom/android/server/PowerManagerService;
    const/16 v46, 0x0

    .line 147
    .local v46, battery:Lcom/android/server/BatteryService;
    const/16 v110, 0x0

    .line 148
    .local v110, vibrator:Lcom/android/server/VibratorService;
    const/16 v43, 0x0

    .line 149
    .local v43, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 150
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 151
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v82, 0x0

    .line 152
    .local v82, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v54, 0x0

    .line 153
    .local v54, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v117, 0x0

    .line 154
    .local v117, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v115, 0x0

    .line 155
    .local v115, wifi:Lcom/android/server/WifiService;
    const/16 v97, 0x0

    .line 156
    .local v97, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v89, 0x0

    .line 157
    .local v89, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 158
    .local v4, context:Landroid/content/Context;
    const/16 v119, 0x0

    .line 159
    .local v119, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 160
    .local v47, bluetooth:Landroid/server/BluetoothService;
    const/16 v49, 0x0

    .line 161
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v62, 0x0

    .line 162
    .local v62, dock:Lcom/android/server/DockObserver;
    const/16 v108, 0x0

    .line 163
    .local v108, usb:Lcom/android/server/usb/UsbService;
    const/16 v95, 0x0

    .line 164
    .local v95, serial:Lcom/android/server/SerialService;
    const/16 v106, 0x0

    .line 165
    .local v106, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v93, 0x0

    .line 166
    .local v93, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v102, 0x0

    .line 167
    .local v102, throttle:Lcom/android/server/ThrottleService;
    const/16 v84, 0x0

    .line 168
    .local v84, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v51, 0x0

    .line 169
    .local v51, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 174
    .local v72, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_0
    const-string v3, "true"

    const-string v9, "ro.config.hw_quickpoweron"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    const-string v3, "persist.sys.quickpoweron"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 176
    .local v99, siBefor:Ljava/lang/String;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "before ACTION_BOOT_COMPLETED  persist.sys.quickpoweron is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v99

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v3, "persist.sys.quickpoweron"

    const-string v9, "normal"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v99           #siBefor:Ljava/lang/String;
    :cond_1
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 183
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4d

    .line 185
    .end local v90           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 187
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static/range {v67 .. v67}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 190
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 191
    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 199
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 203
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 205
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 208
    .local v59, cryptState:Ljava/lang/String;
    const/16 v88, 0x0

    .line 209
    .local v88, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 210
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v88, 0x1

    .line 217
    :cond_2
    :goto_4
    if-eqz v67, :cond_17

    const/4 v3, 0x1

    :goto_5
    move/from16 v0, v88

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v89

    .line 220
    const/16 v69, 0x0

    .line 222
    .local v69, firstBoot:Z
    :try_start_2
    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v69

    .line 226
    :goto_6
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 228
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 232
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v42, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 234
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .local v42, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4e

    move-object/from16 v41, v42

    .line 239
    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_7
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v3, 0x1

    move/from16 v0, v67

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v56

    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v74, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 249
    .end local v73           #lights:Lcom/android/server/LightsService;
    .local v74, lights:Lcom/android/server/LightsService;
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v74

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4f

    .line 251
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_8
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 253
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v111, Lcom/android/server/VibratorService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_50

    .line 255
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .local v111, vibrator:Lcom/android/server/VibratorService;
    :try_start_9
    const-string v3, "vibrator"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 259
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v74

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 261
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_51

    .line 263
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_a
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 266
    const-string v3, "true"

    const-string v9, "ro.huawei.cust.oma_drm"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    new-instance v3, Lcom/android/server/HWDrmDialogsService;

    invoke-direct {v3, v4}, Lcom/android/server/HWDrmDialogsService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mDrmDialogService:Lcom/android/server/HWDrmDialogsService;

    .line 270
    :cond_3
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 274
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_19

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v69, :cond_1a

    const/4 v3, 0x1

    :goto_a
    move/from16 v0, v88

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v119

    .line 278
    const-string v3, "window"

    move-object/from16 v0, v119

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v72

    .line 280
    const-string v3, "input"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v119

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 286
    move/from16 v0, v67

    invoke-static {v4, v0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 301
    const/4 v3, 0x1

    move/from16 v0, v67

    if-ne v0, v3, :cond_1b

    .line 302
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_52

    :goto_b
    move-object/from16 v110, v111

    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .line 336
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v88           #onlyCore:Z
    .restart local v73       #lights:Lcom/android/server/LightsService;
    :goto_c
    const-string v3, "RTC"

    const-string v9, "persist.sys.powerup_reason"

    const-string v10, "NORMAL"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/ServerThread;->isWakeUpByPowerOffAlarm(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 338
    const-string v3, "persist.sys.powerup_reason"

    const-string v9, "NORMAL"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "SystemServer"

    const-string v9, "Clear RTC flag as moblie is not powered up by power off alarm!"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_4
    const/16 v60, 0x0

    .line 344
    .local v60, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v100, 0x0

    .line 345
    .local v100, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v70, 0x0

    .line 346
    .local v70, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v44, 0x0

    .line 347
    .local v44, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v86, 0x0

    .line 348
    .local v86, notification:Lcom/android/server/NotificationManagerService;
    const/16 v113, 0x0

    .line 349
    .local v113, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v75, 0x0

    .line 350
    .local v75, location:Lcom/android/server/LocationManagerService;
    const/16 v57, 0x0

    .line 351
    .local v57, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v104, 0x0

    .line 352
    .local v104, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v77, 0x0

    .line 353
    .local v77, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v64, 0x0

    .line 356
    .local v64, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_5

    .line 358
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v71, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v119

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 360
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .local v71, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v71

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4c

    move-object/from16 v70, v71

    .line 366
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    .line 375
    :cond_5
    :goto_e
    :try_start_e
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 381
    :goto_f
    :try_start_f
    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 387
    :goto_10
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403e5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4b

    .line 394
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_1d

    .line 395
    const/16 v80, 0x0

    .line 396
    .local v80, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 402
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v81, Lcom/android/server/MountService;

    move-object/from16 v0, v81

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    .line 404
    .end local v80           #mountService:Lcom/android/server/MountService;
    .local v81, mountService:Lcom/android/server/MountService;
    :try_start_12
    const-string v3, "mount"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4a

    move-object/from16 v80, v81

    .line 411
    .end local v81           #mountService:Lcom/android/server/MountService;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    :cond_6
    :goto_12
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v78, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 413
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v78, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_14
    const-string v3, "lock_settings"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_49

    move-object/from16 v77, v78

    .line 419
    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_13
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v61, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 421
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v61, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_16
    const-string v3, "device_policy"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_48

    move-object/from16 v60, v61

    .line 427
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_14
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v101, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v101

    move-object/from16 v1, v119

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 429
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v101, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_18
    const-string v3, "statusbar"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_47

    move-object/from16 v100, v101

    .line 435
    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_15
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    .line 443
    :goto_16
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 445
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b

    .line 451
    :goto_17
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v105, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 453
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v105, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1c
    const-string v3, "textservices"

    move-object/from16 v0, v105

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_46

    move-object/from16 v104, v105

    .line 459
    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v104       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v83, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d

    .line 461
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v83, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v3, "netstats"

    move-object/from16 v0, v83

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_45

    move-object/from16 v12, v83

    .line 467
    .end local v83           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    .line 471
    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_44

    .line 477
    :goto_1a
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v118, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f

    .line 479
    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v118, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_22
    const-string v3, "wifip2p"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_43

    move-object/from16 v117, v118

    .line 485
    .end local v118           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v117       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v116, Lcom/android/server/WifiService;

    move-object/from16 v0, v116

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 487
    .end local v115           #wifi:Lcom/android/server/WifiService;
    .local v116, wifi:Lcom/android/server/WifiService;
    :try_start_24
    const-string v3, "wifi"

    move-object/from16 v0, v116

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_42

    move-object/from16 v115, v116

    .line 493
    .end local v116           #wifi:Lcom/android/server/WifiService;
    .restart local v115       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v55, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    .line 496
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .local v55, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_26
    const-string v3, "connectivity"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 497
    move-object/from16 v0, v55

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 498
    move-object/from16 v0, v55

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 499
    invoke-virtual/range {v115 .. v115}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 500
    invoke-virtual/range {v117 .. v117}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_41

    move-object/from16 v54, v55

    .line 506
    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v97

    .line 508
    const-string v3, "servicediscovery"

    move-object/from16 v0, v97

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_12

    .line 515
    :goto_1e
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v103, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 517
    .end local v102           #throttle:Lcom/android/server/ThrottleService;
    .local v103, throttle:Lcom/android/server/ThrottleService;
    :try_start_29
    const-string v3, "throttle"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_40

    move-object/from16 v102, v103

    .line 524
    .end local v103           #throttle:Lcom/android/server/ThrottleService;
    .restart local v102       #throttle:Lcom/android/server/ThrottleService;
    :goto_1f
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_14

    .line 536
    :goto_20
    if-eqz v80, :cond_7

    .line 537
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 541
    :cond_7
    if-eqz v41, :cond_8

    .line 542
    :try_start_2b
    invoke-virtual/range {v41 .. v41}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_15

    .line 548
    :cond_8
    :goto_21
    if-eqz v56, :cond_9

    .line 549
    :try_start_2c
    invoke-virtual/range {v56 .. v56}, Landroid/content/ContentService;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 555
    :cond_9
    :goto_22
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v87, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v100

    move-object/from16 v2, v73

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 557
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .local v87, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2e
    const-string v3, "notification"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 558
    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_3f

    move-object/from16 v86, v87

    .line 564
    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    :goto_23
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "HDMI Connect Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v3, "hdmi"

    new-instance v9, Lcom/android/server/HDMIConnectService;

    invoke-direct {v9, v4}, Lcom/android/server/HDMIConnectService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 570
    :goto_24
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 578
    :goto_25
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 580
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .local v76, location:Lcom/android/server/LocationManagerService;
    :try_start_32
    const-string v3, "location"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_3e

    move-object/from16 v75, v76

    .line 586
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    :goto_26
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v58, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v58

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 588
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v58, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_34
    const-string v3, "country_detector"

    move-object/from16 v0, v58

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_3d

    move-object/from16 v57, v58

    .line 594
    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_27
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 602
    :goto_28
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 609
    :goto_29
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110024

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 612
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-nez v16, :cond_a

    .line 614
    new-instance v114, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v114

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .line 615
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v114, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_38
    const-string v3, "wallpaper"

    move-object/from16 v0, v114

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_3c

    move-object/from16 v113, v114

    .line 622
    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_2a
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 624
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1f

    .line 632
    :cond_b
    :goto_2b
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v63, Lcom/android/server/DockObserver;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_20

    .end local v62           #dock:Lcom/android/server/DockObserver;
    .local v63, dock:Lcom/android/server/DockObserver;
    move-object/from16 v62, v63

    .line 640
    .end local v63           #dock:Lcom/android/server/DockObserver;
    .restart local v62       #dock:Lcom/android/server/DockObserver;
    :goto_2c
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_21

    .line 648
    :goto_2d
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v109, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v109

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 651
    .end local v108           #usb:Lcom/android/server/usb/UsbService;
    .local v109, usb:Lcom/android/server/usb/UsbService;
    :try_start_3d
    const-string v3, "usb"

    move-object/from16 v0, v109

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_3b

    move-object/from16 v108, v109

    .line 657
    .end local v109           #usb:Lcom/android/server/usb/UsbService;
    .restart local v108       #usb:Lcom/android/server/usb/UsbService;
    :goto_2e
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v96, Lcom/android/server/SerialService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_23

    .line 660
    .end local v95           #serial:Lcom/android/server/SerialService;
    .local v96, serial:Lcom/android/server/SerialService;
    :try_start_3f
    const-string v3, "serial"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_3a

    move-object/from16 v95, v96

    .line 666
    .end local v96           #serial:Lcom/android/server/SerialService;
    .restart local v95       #serial:Lcom/android/server/SerialService;
    :goto_2f
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v107, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .end local v106           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v107, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v106, v107

    .line 674
    .end local v107           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v106       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_30
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_25

    .line 682
    :goto_31
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v45, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_26

    .line 684
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .local v45, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_43
    const-string v3, "appwidget"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_39

    move-object/from16 v44, v45

    .line 690
    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_32
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v94, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_27

    .end local v93           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v94, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v93, v94

    .line 696
    .end local v94           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v93       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_33
    const-string v3, "true"

    const-string v9, "ro.config.hw_eapsim"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 698
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Smartcard System Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v3, "smartcardservice"

    new-instance v9, Lcom/android/server/SmartcardSystemService;

    invoke-direct {v9, v4}, Lcom/android/server/SmartcardSystemService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_28

    .line 706
    :cond_c
    :goto_34
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_29

    .line 717
    :goto_35
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2a

    .line 725
    :goto_36
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v85, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2b

    .end local v84           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v85, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v84, v85

    .line 732
    .end local v85           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v84       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_37
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v52, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2c

    .line 734
    .end local v51           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v52, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_4a
    const-string v3, "commontime_management"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_38

    move-object/from16 v51, v52

    .line 740
    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v51       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_38
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2d

    .line 746
    :goto_39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110038

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 749
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v65, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2e

    .line 752
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v65, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_4d
    const-string v3, "dreams"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_37

    move-object/from16 v64, v65

    .line 760
    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_d
    :goto_3a
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v3, "fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v4}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2f

    .line 770
    .end local v80           #mountService:Lcom/android/server/MountService;
    :goto_3b
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 771
    .local v28, safeMode:Z
    if-eqz v28, :cond_1c

    .line 772
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 774
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 776
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 790
    :goto_3c
    if-eqz v60, :cond_e

    .line 792
    :try_start_4f
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_30

    .line 799
    :cond_e
    :goto_3d
    :try_start_50
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_31

    .line 805
    :goto_3e
    if-eqz v86, :cond_f

    .line 807
    :try_start_51
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_32

    .line 814
    :cond_f
    :goto_3f
    :try_start_52
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_33

    .line 819
    :goto_40
    if-eqz v28, :cond_10

    .line 820
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 826
    :cond_10
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v53

    .line 827
    .local v53, config:Landroid/content/res/Configuration;
    new-instance v79, Landroid/util/DisplayMetrics;

    invoke-direct/range {v79 .. v79}, Landroid/util/DisplayMetrics;-><init>()V

    .line 828
    .local v79, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/view/WindowManager;

    .line 829
    .local v112, w:Landroid/view/WindowManager;
    invoke-interface/range {v112 .. v112}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 830
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v53

    move-object/from16 v1, v79

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 832
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 834
    :try_start_53
    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_34

    .line 839
    :goto_41
    :try_start_54
    invoke-virtual/range {v77 .. v77}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_35

    .line 845
    :goto_42
    move-object/from16 v17, v4

    .line 846
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 847
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 848
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 849
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 850
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v54

    .line 851
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v62

    .line 852
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v108

    .line 853
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v102

    .line 854
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v106

    .line 855
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v44

    .line 856
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v113

    .line 857
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v70

    .line 858
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v93

    .line 859
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v75

    .line 860
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v57

    .line 861
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v84

    .line 862
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v51

    .line 863
    .local v36, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v37, v104

    .line 864
    .local v37, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v100

    .line 865
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v38, v64

    .line 866
    .local v38, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v39, v72

    .line 867
    .local v39, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v47

    .line 874
    .local v40, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v40}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 994
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 995
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_11
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 999
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 124
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v37           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v39           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v40           #bluetoothF:Landroid/server/BluetoothService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v51           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v56           #contentService:Landroid/content/ContentService;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #dock:Lcom/android/server/DockObserver;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v67           #factoryTest:I
    .end local v68           #factoryTestStr:Ljava/lang/String;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v72           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v84           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v89           #pm:Landroid/content/pm/IPackageManager;
    .end local v93           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v95           #serial:Lcom/android/server/SerialService;
    .end local v97           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v102           #throttle:Lcom/android/server/ThrottleService;
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v106           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v108           #usb:Lcom/android/server/usb/UsbService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .end local v112           #w:Landroid/view/WindowManager;
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v115           #wifi:Lcom/android/server/WifiService;
    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v119           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_12
    const/16 v92, 0x0

    goto/16 :goto_0

    .line 130
    .restart local v92       #reboot:Z
    :cond_13
    const/16 v91, 0x0

    .restart local v91       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 138
    .end local v91           #reason:Ljava/lang/String;
    .end local v92           #reboot:Z
    .restart local v68       #factoryTestStr:Ljava/lang/String;
    :cond_14
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    goto/16 :goto_2

    .line 195
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v51       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v56       #contentService:Landroid/content/ContentService;
    .restart local v62       #dock:Lcom/android/server/DockObserver;
    .restart local v67       #factoryTest:I
    .restart local v72       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v84       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v89       #pm:Landroid/content/pm/IPackageManager;
    .restart local v93       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v95       #serial:Lcom/android/server/SerialService;
    .restart local v97       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v102       #throttle:Lcom/android/server/ThrottleService;
    .restart local v106       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v108       #usb:Lcom/android/server/usb/UsbService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    .restart local v115       #wifi:Lcom/android/server/WifiService;
    .restart local v117       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v119       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_15
    :try_start_55
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_0

    goto/16 :goto_3

    .line 329
    :catch_0
    move-exception v66

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .line 330
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v66, e:Ljava/lang/RuntimeException;
    :goto_43
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 212
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #e:Ljava/lang/RuntimeException;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v88       #onlyCore:Z
    :cond_16
    :try_start_56
    const-string v3, "1"

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v88, 0x1

    goto/16 :goto_4

    .line 217
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 235
    .restart local v69       #firstBoot:Z
    :catch_1
    move-exception v66

    .line 236
    .local v66, e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_0

    goto/16 :goto_7

    .line 240
    .end local v66           #e:Ljava/lang/Throwable;
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 275
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :cond_19
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 304
    :cond_1b
    :try_start_57
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v48, Landroid/server/BluetoothService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_52

    .line 306
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .local v48, bluetooth:Landroid/server/BluetoothService;
    :try_start_58
    const-string v3, "bluetooth"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 307
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 309
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 310
    new-instance v50, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_53

    .line 311
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_59
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_54

    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 361
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v88           #onlyCore:Z
    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2
    move-exception v66

    .line 362
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 369
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v66

    .line 370
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 376
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v66

    .line 377
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 382
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v66

    .line 383
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 405
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    :catch_6
    move-exception v66

    .line 406
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 414
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v66

    .line 415
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 422
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v66

    .line 423
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 430
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v66

    .line 431
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 438
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v66

    .line 439
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 446
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v66

    .line 447
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 454
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v66

    .line 455
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 462
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v66

    .line 463
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 472
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v66

    move-object/from16 v8, v82

    .line 473
    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 480
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v66

    .line 481
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 488
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v66

    .line 489
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 501
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v66

    .line 502
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 510
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v66

    .line 511
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 519
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v66

    .line 520
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 527
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v66

    .line 528
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 543
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v66

    .line 544
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 550
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v66

    .line 551
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 559
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v66

    .line 560
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 566
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v66

    .line 567
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 573
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v66

    .line 574
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 581
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v66

    .line 582
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 589
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v66

    .line 590
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 597
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v66

    .line 598
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 605
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v66

    .line 606
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 617
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v66

    .line 618
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 626
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v66

    .line 627
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 635
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v66

    .line 636
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 643
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v66

    .line 644
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 652
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v66

    .line 653
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 661
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v66

    .line 662
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    .line 669
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v66

    .line 670
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 677
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v66

    .line 678
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 685
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v66

    .line 686
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 692
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v66

    .line 693
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 700
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v66

    .line 701
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Smartcard System Service"

    move-object/from16 v0, v66

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 708
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v66

    .line 709
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 720
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v66

    .line 721
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 727
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v66

    .line 728
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 735
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v66

    .line 736
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 742
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v66

    .line 743
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 753
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v66

    .line 754
    .restart local v66       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 762
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v66

    .line 763
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 779
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v80           #mountService:Lcom/android/server/MountService;
    .restart local v28       #safeMode:Z
    :cond_1c
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3c

    .line 793
    :catch_30
    move-exception v66

    .line 794
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 800
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v66

    .line 801
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 808
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v66

    .line 809
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 815
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v66

    .line 816
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 835
    .end local v66           #e:Ljava/lang/Throwable;
    .restart local v53       #config:Landroid/content/res/Configuration;
    .restart local v79       #metrics:Landroid/util/DisplayMetrics;
    .restart local v112       #w:Landroid/view/WindowManager;
    :catch_34
    move-exception v66

    .line 836
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 840
    .end local v66           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v66

    .line 841
    .restart local v66       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 223
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v53           #config:Landroid/content/res/Configuration;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v66           #e:Ljava/lang/Throwable;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v79           #metrics:Landroid/util/DisplayMetrics;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v112           #w:Landroid/view/WindowManager;
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #onlyCore:Z
    :catch_36
    move-exception v3

    goto/16 :goto_6

    .line 753
    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v88           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_37
    move-exception v66

    move-object/from16 v64, v65

    .end local v65           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_59

    .line 735
    .end local v51           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v52       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_38
    move-exception v66

    move-object/from16 v51, v52

    .end local v52           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v51       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_58

    .line 685
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v45       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_39
    move-exception v66

    move-object/from16 v44, v45

    .end local v45           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_57

    .line 661
    .end local v95           #serial:Lcom/android/server/SerialService;
    .restart local v96       #serial:Lcom/android/server/SerialService;
    :catch_3a
    move-exception v66

    move-object/from16 v95, v96

    .end local v96           #serial:Lcom/android/server/SerialService;
    .restart local v95       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_56

    .line 652
    .end local v108           #usb:Lcom/android/server/usb/UsbService;
    .restart local v109       #usb:Lcom/android/server/usb/UsbService;
    :catch_3b
    move-exception v66

    move-object/from16 v108, v109

    .end local v109           #usb:Lcom/android/server/usb/UsbService;
    .restart local v108       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_55

    .line 617
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v114       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3c
    move-exception v66

    move-object/from16 v113, v114

    .end local v114           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_54

    .line 589
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v58       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_3d
    move-exception v66

    move-object/from16 v57, v58

    .end local v58           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_53

    .line 581
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    :catch_3e
    move-exception v66

    move-object/from16 v75, v76

    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_52

    .line 559
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v87       #notification:Lcom/android/server/NotificationManagerService;
    :catch_3f
    move-exception v66

    move-object/from16 v86, v87

    .end local v87           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_51

    .line 519
    .end local v102           #throttle:Lcom/android/server/ThrottleService;
    .restart local v103       #throttle:Lcom/android/server/ThrottleService;
    :catch_40
    move-exception v66

    move-object/from16 v102, v103

    .end local v103           #throttle:Lcom/android/server/ThrottleService;
    .restart local v102       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_50

    .line 501
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v55       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_41
    move-exception v66

    move-object/from16 v54, v55

    .end local v55           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4f

    .line 488
    .end local v115           #wifi:Lcom/android/server/WifiService;
    .restart local v116       #wifi:Lcom/android/server/WifiService;
    :catch_42
    move-exception v66

    move-object/from16 v115, v116

    .end local v116           #wifi:Lcom/android/server/WifiService;
    .restart local v115       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_4e

    .line 480
    .end local v117           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v118       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_43
    move-exception v66

    move-object/from16 v117, v118

    .end local v118           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v117       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_4d

    .line 472
    :catch_44
    move-exception v66

    goto/16 :goto_4c

    .line 462
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_45
    move-exception v66

    move-object/from16 v12, v83

    .end local v83           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4b

    .line 454
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v105       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_46
    move-exception v66

    move-object/from16 v104, v105

    .end local v105           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v104       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4a

    .line 430
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v101       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_47
    move-exception v66

    move-object/from16 v100, v101

    .end local v101           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_49

    .line 422
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_48
    move-exception v66

    move-object/from16 v60, v61

    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_48

    .line 414
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v78       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_49
    move-exception v66

    move-object/from16 v77, v78

    .end local v78           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_47

    .line 405
    .end local v80           #mountService:Lcom/android/server/MountService;
    .restart local v81       #mountService:Lcom/android/server/MountService;
    :catch_4a
    move-exception v66

    move-object/from16 v80, v81

    .end local v81           #mountService:Lcom/android/server/MountService;
    .restart local v80       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_46

    .line 391
    .end local v80           #mountService:Lcom/android/server/MountService;
    :catch_4b
    move-exception v3

    goto/16 :goto_11

    .line 361
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_4c
    move-exception v66

    move-object/from16 v70, v71

    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_45

    .line 329
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v90       #power:Lcom/android/server/PowerManagerService;
    :catch_4d
    move-exception v66

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v90

    .end local v90           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_43

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v88       #onlyCore:Z
    :catch_4e
    move-exception v66

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_43

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_4f
    move-exception v66

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v46

    .end local v46           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_50
    move-exception v66

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :catch_51
    move-exception v66

    move-object/from16 v7, v43

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v110, v111

    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :catch_52
    move-exception v66

    move-object/from16 v110, v111

    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :catch_53
    move-exception v66

    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v110, v111

    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :catch_54
    move-exception v66

    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v110, v111

    .end local v111           #vibrator:Lcom/android/server/VibratorService;
    .restart local v110       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v73, v74

    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v73       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_43

    .line 235
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v41           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v42       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v43       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v46       #battery:Lcom/android/server/BatteryService;
    :catch_55
    move-exception v66

    move-object/from16 v41, v42

    .end local v42           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v41       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_44

    .end local v43           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v46           #battery:Lcom/android/server/BatteryService;
    .end local v59           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v88           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v44       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v70       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v75       #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v86       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v100       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v113       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1d
    move-object/from16 v8, v82

    .end local v82           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3b

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v44           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v70           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v73           #lights:Lcom/android/server/LightsService;
    .end local v75           #location:Lcom/android/server/LocationManagerService;
    .end local v77           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v86           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v104           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v110           #vibrator:Lcom/android/server/VibratorService;
    .end local v113           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v59       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v82       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88       #onlyCore:Z
    .restart local v111       #vibrator:Lcom/android/server/VibratorService;
    :cond_1e
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b
.end method
