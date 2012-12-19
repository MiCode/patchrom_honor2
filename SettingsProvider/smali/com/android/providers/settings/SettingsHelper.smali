.class public Lcom/android/providers/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentService:Landroid/content/IContentService;

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mContentService:Landroid/content/IContentService;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mPowerManager:Landroid/os/IPowerManager;

    return-void
.end method

.method private setAutoRestore(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    :try_start_0
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .local v0, bm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #bm:Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setGpsLocation(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    const-string v0, "gps"

    .local v0, GPS:Ljava/lang/String;
    const-string v2, "gps"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gps,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",gps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ",gps,"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .local v1, enabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    .end local v1           #enabled:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSoundEffects(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method


# virtual methods
.method applyAudioSettings()V
    .locals 2

    .prologue
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    return-void
.end method

.method getLocaleData()[B
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, conf:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v2, loc:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .local v3, localeString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .local v1, country:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method public restoreValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "screen_brightness"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setBrightness(I)V

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    const-string v2, "sound_effects_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setSoundEffects(Z)V

    goto :goto_0

    :cond_3
    const-string v2, "location_providers_allowed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setGpsLocation(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "backup_auto_restore"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setAutoRestore(Z)V

    goto :goto_0
.end method

.method setLocaleData([BI)V
    .locals 12
    .parameter "data"
    .parameter "size"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .local v2, conf:Landroid/content/res/Configuration;
    iget-object v7, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v7, loc:Ljava/util/Locale;
    iget-boolean v9, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .local v1, availableLocales:[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1, v10, p2}, Ljava/lang/String;-><init>([BII)V

    .local v8, localeCode:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .local v6, language:Ljava/lang/String;
    const/4 v9, 0x4

    if-le p2, v9, :cond_3

    new-instance v4, Ljava/lang/String;

    const/4 v9, 0x3

    invoke-direct {v4, p1, v9, v11}, Ljava/lang/String;-><init>([BII)V

    .local v4, country:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v9, v1

    if-ge v5, v9, :cond_2

    aget-object v9, v1, v5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v7, Ljava/util/Locale;

    .end local v7           #loc:Ljava/util/Locale;
    invoke-direct {v7, v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7       #loc:Ljava/util/Locale;
    :cond_2
    if-eqz v7, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .local v3, config:Landroid/content/res/Configuration;
    iput-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v3           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v9

    goto :goto_0

    .end local v4           #country:Ljava/lang/String;
    .end local v5           #i:I
    :cond_3
    const-string v4, ""

    goto :goto_1

    .restart local v4       #country:Ljava/lang/String;
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method
