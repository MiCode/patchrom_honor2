.class public Landroid/media/dolby/DolbyMobileAudioEffectClient;
.super Ljava/lang/Object;
.source "DolbyMobileAudioEffectClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyMobileAudioEffectClient"


# instance fields
.field private mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

.field private mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    .line 44
    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 157
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$1;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    .line 202
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$2;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    .line 229
    new-instance v0, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;

    invoke-direct {v0, p0}, Landroid/media/dolby/DolbyMobileAudioEffectClient$3;-><init>(Landroid/media/dolby/DolbyMobileAudioEffectClient;)V

    iput-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/dolby/DolbyMobileAudioEffectClient;Landroid/media/dolby/IDolbyMobileSystemInterface;)Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/IDolbyMobileServiceCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mCallback:Landroid/media/dolby/IDolbyMobileServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/media/dolby/DolbyMobileClientCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/dolby/DolbyMobileAudioEffectClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bindToRemoteRunningService(Landroid/app/Activity;)V
    .locals 10
    .parameter "activity"

    .prologue
    .line 70
    const-string v7, "DolbyMobileAudioEffectClient"

    const-string v8, "activity bindToRemoteRunningService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, audioSessionId:I
    new-instance v2, Landroid/content/Intent;

    const-class v7, Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, bindIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 77
    .local v3, callerIntent:Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 79
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 80
    .local v5, intentExtras:Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 82
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v6

    .line 83
    .local v6, numExtras:I
    const-string v7, "DolbyMobileAudioEffectClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callerIntent.getExtras() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v7, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    const-string v7, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    const-string v7, "DolbyMobileAudioEffectClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioEffect.EXTRA_AUDIO_SESSION = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const-string v7, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v7, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    const-string v7, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, audioSessionPkgName:Ljava/lang/String;
    const-string v7, "DolbyMobileAudioEffectClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioEffect.EXTRA_PACKAGE_NAME = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v7, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .end local v1           #audioSessionPkgName:Ljava/lang/String;
    :cond_1
    const-string v7, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 103
    const-string v7, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 104
    .local v4, catInt:I
    const-string v7, "DMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.media.extra.CONTENT_TYPE = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v7, "android.media.extra.CONTENT_TYPE"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    .end local v4           #catInt:I
    .end local v5           #intentExtras:Landroid/os/Bundle;
    .end local v6           #numExtras:I
    :cond_2
    iget-object v7, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {p1, v2, v7, v8}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 115
    return-void
.end method

.method public bindToRemoteRunningService(Landroid/app/Service;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 135
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "service bindToRemoteRunningService()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, bindIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    return-void
.end method

.method public getCurrentPreset()I
    .locals 5

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, currentPreset:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 329
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getCurrentPreset() FAILED: mDolbyMobileSystem = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 337
    .end local v0           #currentPreset:I
    .local v1, currentPreset:I
    :goto_0
    return v1

    .line 333
    .end local v1           #currentPreset:I
    .restart local v0       #currentPreset:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->currentPreset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 337
    .end local v0           #currentPreset:I
    .restart local v1       #currentPreset:I
    goto :goto_0

    .line 334
    .end local v1           #currentPreset:I
    .restart local v0       #currentPreset:I
    :catch_0
    move-exception v2

    .line 335
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getCurrentPreset() FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDMSystemInterface()Landroid/media/dolby/IDolbyMobileSystemInterface;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    return-object v0
.end method

.method public getDolbyEffectOn()Z
    .locals 5

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, currentEffectOn:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 268
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getDolbyEffectOn() FAILED: mDolbyMobileSystem = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 276
    .end local v0           #currentEffectOn:Z
    .local v1, currentEffectOn:I
    :goto_0
    return v1

    .line 272
    .end local v1           #currentEffectOn:I
    .restart local v0       #currentEffectOn:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getEffectOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 276
    .restart local v1       #currentEffectOn:I
    goto :goto_0

    .line 273
    .end local v1           #currentEffectOn:I
    :catch_0
    move-exception v2

    .line 274
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getDolbyEffectOn() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalAudioHeadsetByPass()Z
    .locals 5

    .prologue
    .line 447
    const/4 v1, 0x0

    .line 448
    .local v1, globalAudioHeadsetByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 449
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 457
    .end local v1           #globalAudioHeadsetByPass:Z
    .local v2, globalAudioHeadsetByPass:I
    :goto_0
    return v2

    .line 453
    .end local v2           #globalAudioHeadsetByPass:I
    .restart local v1       #globalAudioHeadsetByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioHeadsetByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 457
    .restart local v2       #globalAudioHeadsetByPass:I
    goto :goto_0

    .line 454
    .end local v2           #globalAudioHeadsetByPass:I
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioHeadsetByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalAudioPreset()I
    .locals 5

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, globalAudioPreset:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 419
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 427
    .end local v1           #globalAudioPreset:I
    .local v2, globalAudioPreset:I
    :goto_0
    return v2

    .line 423
    .end local v2           #globalAudioPreset:I
    .restart local v1       #globalAudioPreset:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioPreset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 427
    .end local v1           #globalAudioPreset:I
    .restart local v2       #globalAudioPreset:I
    goto :goto_0

    .line 424
    .end local v2           #globalAudioPreset:I
    .restart local v1       #globalAudioPreset:I
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioPreset() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalAudioSpeakerByPass()Z
    .locals 5

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, globalAudioSpeakerByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 479
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 488
    .end local v1           #globalAudioSpeakerByPass:Z
    .local v2, globalAudioSpeakerByPass:I
    :goto_0
    return v2

    .line 484
    .end local v2           #globalAudioSpeakerByPass:I
    .restart local v1       #globalAudioSpeakerByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioSpeakerByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 488
    .restart local v2       #globalAudioSpeakerByPass:I
    goto :goto_0

    .line 485
    .end local v2           #globalAudioSpeakerByPass:I
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalAudioSpeakerByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalEffectOn()Z
    .locals 5

    .prologue
    .line 387
    const/4 v1, 0x1

    .line 388
    .local v1, globalEffectOn:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 389
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalEffectOn() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 397
    .end local v1           #globalEffectOn:Z
    .local v2, globalEffectOn:I
    :goto_0
    return v2

    .line 393
    .end local v2           #globalEffectOn:I
    .restart local v1       #globalEffectOn:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalEffectOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 397
    .restart local v2       #globalEffectOn:I
    goto :goto_0

    .line 394
    .end local v2           #globalEffectOn:I
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalEffectOn() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalVideoHeadsetByPass()Z
    .locals 5

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, globalVideoHeadsetByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 541
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 549
    .end local v1           #globalVideoHeadsetByPass:Z
    .local v2, globalVideoHeadsetByPass:I
    :goto_0
    return v2

    .line 545
    .end local v2           #globalVideoHeadsetByPass:I
    .restart local v1       #globalVideoHeadsetByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoHeadsetByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 549
    .restart local v2       #globalVideoHeadsetByPass:I
    goto :goto_0

    .line 546
    .end local v2           #globalVideoHeadsetByPass:I
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoHeadsetByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalVideoPreset()I
    .locals 5

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, globalVideoPreset:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 510
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 519
    .end local v1           #globalVideoPreset:I
    .local v2, globalVideoPreset:I
    :goto_0
    return v2

    .line 515
    .end local v2           #globalVideoPreset:I
    .restart local v1       #globalVideoPreset:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoPreset()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 519
    .end local v1           #globalVideoPreset:I
    .restart local v2       #globalVideoPreset:I
    goto :goto_0

    .line 516
    .end local v2           #globalVideoPreset:I
    .restart local v1       #globalVideoPreset:I
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoPreset() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getGlobalVideoSpeakerByPass()Z
    .locals 5

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, globalVideoSpeakerByPass:Z
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 571
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 580
    .end local v1           #globalVideoSpeakerByPass:Z
    .local v2, globalVideoSpeakerByPass:I
    :goto_0
    return v2

    .line 576
    .end local v2           #globalVideoSpeakerByPass:I
    .restart local v1       #globalVideoSpeakerByPass:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoSpeakerByPass()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 580
    .restart local v2       #globalVideoSpeakerByPass:I
    goto :goto_0

    .line 577
    .end local v2           #globalVideoSpeakerByPass:I
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getGlobalVideoSpeakerByPass() FAILED."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPresetCategory()I
    .locals 5

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, currentCategory:I
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v3, :cond_0

    .line 299
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getPresetCategory() FAILED: mDolbyMobileSystem = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 307
    .end local v0           #currentCategory:I
    .local v1, currentCategory:I
    :goto_0
    return v1

    .line 303
    .end local v1           #currentCategory:I
    .restart local v0       #currentCategory:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v3}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getPresetCategory()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 307
    .end local v0           #currentCategory:I
    .restart local v1       #currentCategory:I
    goto :goto_0

    .line 304
    .end local v1           #currentCategory:I
    .restart local v0       #currentCategory:I
    :catch_0
    move-exception v2

    .line 305
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "DolbyMobileAudioEffectClient"

    const-string v4, "getPresetCategory() FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerCallback(Landroid/media/dolby/DolbyMobileClientCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 53
    iput-object p1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mActivityCallback:Landroid/media/dolby/DolbyMobileClientCallbacks;

    .line 55
    :cond_0
    return-void
.end method

.method public selectPreset(I)V
    .locals 4
    .parameter "presetIndex"

    .prologue
    .line 341
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 342
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "selectPreset() FAILED: mDolbyMobileSystem = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    .line 347
    .local v0, currentPreset:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->currentPreset()I

    move-result v0

    .line 348
    if-eq p1, v0, :cond_0

    .line 349
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->selectPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "selectPreset() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDolbyEffect(II)V
    .locals 3
    .parameter "category"
    .parameter "preset"

    .prologue
    .line 357
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v1, :cond_0

    .line 358
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffect() FAILED: mDolbyMobileSystem = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return-void

    .line 366
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setPresetCategory(I)V

    .line 367
    invoke-virtual {p0, p2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->selectPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffect() FAILED."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDolbyEffectByPass(Z)V
    .locals 3
    .parameter "byPass"

    .prologue
    .line 375
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v1, :cond_0

    .line 376
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffectByPass() FAILED: mDolbyMobileSystem = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v1, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setEffectByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DolbyMobileAudioEffectClient"

    const-string v2, "setDolbyEffectByPass() FAILED: mDolbyMobileSystem = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDolbyEffectOn(Z)V
    .locals 4
    .parameter "effectOn"

    .prologue
    .line 280
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 281
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setDolbyEffectOn() FAILED: mDolbyMobileSystem = null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x0

    .line 287
    .local v0, currentEffectOn:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getEffectOn()Z

    move-result v0

    .line 288
    if-eq p1, v0, :cond_0

    .line 289
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setEffectOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setDolbyEffectOn() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalAudioHeadsetByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 461
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 462
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const/4 v1, 0x0

    .line 467
    .local v1, globalAudioHeadsetByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioHeadsetByPass()Z

    move-result v1

    .line 468
    if-eq p1, v1, :cond_0

    .line 469
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalAudioHeadsetByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioHeadsetByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalAudioPreset(I)V
    .locals 4
    .parameter "preset"

    .prologue
    .line 431
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 432
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const/4 v1, 0x0

    .line 437
    .local v1, globalAudioPreset:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioPreset()I

    move-result v1

    .line 438
    if-eq p1, v1, :cond_0

    .line 439
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalAudioPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioPreset() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalAudioSpeakerByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 492
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 493
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v1, 0x0

    .line 498
    .local v1, globalAudioSpeakerByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalAudioSpeakerByPass()Z

    move-result v1

    .line 499
    if-eq p1, v1, :cond_0

    .line 500
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalAudioSpeakerByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalAudioSpeakerByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalEffectOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 401
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 402
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalEffectOn() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x1

    .line 407
    .local v1, globalEffectOn:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalEffectOn()Z

    move-result v1

    .line 408
    if-eq p1, v1, :cond_0

    .line 409
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalEffectOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalEffectOn() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalVideoHeadsetByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 553
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 554
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoHeadsetByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    const/4 v1, 0x0

    .line 559
    .local v1, globalVideoHeadsetByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoHeadsetByPass()Z

    move-result v1

    .line 560
    if-eq p1, v1, :cond_0

    .line 561
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalVideoHeadsetByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoHeadsetByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalVideoPreset(I)V
    .locals 4
    .parameter "preset"

    .prologue
    .line 523
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 524
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoPreset() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const/4 v1, 0x0

    .line 529
    .local v1, globalVideoPreset:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoPreset()I

    move-result v1

    .line 530
    if-eq p1, v1, :cond_0

    .line 531
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalVideoPreset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalEffectOn() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGlobalVideoSpeakerByPass(Z)V
    .locals 4
    .parameter "byPass"

    .prologue
    .line 584
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 585
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoSpeakerByPass() FAILED: mDolbyMobileSystem == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const/4 v1, 0x0

    .line 590
    .local v1, globalVideoSpeakerByPass:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getGlobalVideoSpeakerByPass()Z

    move-result v1

    .line 591
    if-eq p1, v1, :cond_0

    .line 592
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setGlobalVideoSpeakerByPass(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setGlobalVideoSpeakerByPass() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPresetCategory(I)V
    .locals 4
    .parameter "category"

    .prologue
    .line 311
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-nez v2, :cond_1

    .line 312
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setPresetCategory() FAILED: mDolbyMobileSystem = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    .line 317
    .local v0, currentCategory:I
    :try_start_0
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2}, Landroid/media/dolby/IDolbyMobileSystemInterface;->getPresetCategory()I

    move-result v0

    .line 318
    if-eq p1, v0, :cond_0

    .line 319
    iget-object v2, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    invoke-interface {v2, p1}, Landroid/media/dolby/IDolbyMobileSystemInterface;->setPresetCategory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DolbyMobileAudioEffectClient"

    const-string v3, "setPresetCategory() FAILED."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unBindFromRemoteRunningService(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 122
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "activity DMGlobalAudioEffectControlPanel.unBindFromRemoteRunningService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 129
    :cond_0
    return-void
.end method

.method public unBindFromRemoteRunningService(Landroid/app/Service;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 149
    const-string v0, "DolbyMobileAudioEffectClient"

    const-string v1, "service DMGlobalAudioEffectControlPanel.unBindFromRemoteRunningService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mDolbyMobileSystem:Landroid/media/dolby/IDolbyMobileSystemInterface;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/media/dolby/DolbyMobileAudioEffectClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Service;->unbindService(Landroid/content/ServiceConnection;)V

    .line 156
    :cond_0
    return-void
.end method
