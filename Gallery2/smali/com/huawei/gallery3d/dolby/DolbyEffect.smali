.class public Lcom/huawei/gallery3d/dolby/DolbyEffect;
.super Ljava/lang/Object;
.source "DolbyEffect.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_GOLBALDOLBYEFFECT:Ljava/lang/String; = "com.huawei.android.globaldolbyeffect.DolbyEffectAlertDialog"

.field private static final DOLBY_CATEGORY:Ljava/lang/String; = "dolbycategory"

.field public static final HEADSET:I = 0x1

.field private static final PACKAGE_GOLBALDOLBYEFFECT:Ljava/lang/String; = "com.huawei.android.globaldolbyeffect.GlobalDolbyEffectActivity"

.field private static final TAG:Ljava/lang/String; = "DolbyEffect-Gallery2"

.field private static outputAudioDevice:I


# instance fields
.field private final isDolbySettingExist:Z

.field private mActivity:Lcom/android/gallery3d/app/MovieActivity;

.field mDolbyCallbacks:Landroid/media/dolby/DolbyMobileClientCallbacks;

.field private mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

.field private mDolbyItem:Landroid/view/MenuItem;

.field mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->outputAudioDevice:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 5
    .parameter "movieActivity"
    .parameter "moviePlayer"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v2, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect$1;-><init>(Lcom/huawei/gallery3d/dolby/DolbyEffect;)V

    iput-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyCallbacks:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 72
    new-instance v2, Lcom/huawei/gallery3d/dolby/DolbyEffect$2;

    invoke-direct {v2, p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect$2;-><init>(Lcom/huawei/gallery3d/dolby/DolbyEffect;)V

    iput-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    .line 88
    iput-object p2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.huawei.android.globaldolbyeffect.DolbyEffectAlertDialog"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.android.globaldolbyeffect.GlobalDolbyEffectActivity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/gallery3d/app/MovieActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/app/MovieActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    iput-boolean v3, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isDolbySettingExist:Z

    .line 103
    :goto_0
    new-instance v2, Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;-><init>()V

    iput-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    .line 104
    invoke-direct {p0, p1}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->initDolbyMobileAudioEffectClient(Lcom/android/gallery3d/app/MovieActivity;)V

    .line 105
    iget-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const-string v2, "DolbyEffect-Gallery2"

    const-string v3, "DolbyEffect init done!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 99
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isDolbySettingExist:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/huawei/gallery3d/dolby/DolbyEffect;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->outputAudioDevice:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->outputAudioDevice:I

    return p0
.end method

.method private initDolbyMobileAudioEffectClient(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 2
    .parameter "mActivity"

    .prologue
    .line 200
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-direct {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;-><init>()V

    iput-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    .line 201
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0, p1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->bindToRemoteRunningService(Landroid/app/Activity;)V

    .line 202
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    iget-object v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyCallbacks:Landroid/media/dolby/DolbyMobileClientCallbacks;

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V

    .line 203
    return-void
.end method


# virtual methods
.method public changeVideoDolbyEffect()V
    .locals 3

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isGolbalEffectOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectOn(Z)V

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isVideoDolbyEffectOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    const v1, 0x7f0e0113

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isVideoDolbyEffectOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalVideoSpeakerByPass(Z)V

    .line 182
    return-void
.end method

.method public isGolbalEffectOn()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getDolbyEffectOn()Z

    move-result v0

    return v0
.end method

.method public isVideoDolbyEffectOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 163
    sget v2, Lcom/huawei/gallery3d/dolby/DolbyEffect;->outputAudioDevice:I

    if-ne v2, v0, :cond_2

    .line 164
    iget-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoHeadsetByPass()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyEffectClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;

    invoke-virtual {v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getGlobalVideoSpeakerByPass()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onCreateDolbyOptionMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 110
    const v0, 0x7f0c010c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    .line 112
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isDolbySettingExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->updateDolbyStatus(Landroid/view/MenuItem;)V

    .line 116
    return-void
.end method

.method public onDolbyDestroy()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    iget-object v1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    return-void
.end method

.method public onDolbyResume()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    invoke-virtual {p0, v0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->updateDolbyStatus(Landroid/view/MenuItem;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onOptionsItemDolbySelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mItem"

    .prologue
    const/4 v2, 0x1

    .line 119
    iput-object p1, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    .line 120
    iget-object v3, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    if-nez v3, :cond_0

    .line 121
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    .line 124
    :cond_0
    sget v3, Lcom/huawei/gallery3d/dolby/DolbyEffect;->outputAudioDevice:I

    if-ne v3, v2, :cond_1

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.huawei.android.globaldolbyeffect.DolbyEffectAlertDialog"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, callDolbySettingIntent:Landroid/content/Intent;
    const-string v3, "dolbycategory"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mActivity:Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0           #callDolbySettingIntent:Landroid/content/Intent;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->changeVideoDolbyEffect()V

    .line 138
    iget-object v3, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 139
    iget-object v3, p0, Lcom/huawei/gallery3d/dolby/DolbyEffect;->mDolbyItem:Landroid/view/MenuItem;

    invoke-virtual {p0, v3}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->updateDolbyStatus(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public updateDolbyStatus(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "mItem"

    .prologue
    const v1, 0x7f02012d

    .line 187
    invoke-virtual {p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isGolbalEffectOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/huawei/gallery3d/dolby/DolbyEffect;->isVideoDolbyEffectOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const v0, 0x7f02012e

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
