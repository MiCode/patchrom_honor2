.class Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardViewMediatorEx"
.end annotation


# static fields
.field private static final DEBUG_THEME_SOUND:Z = true

.field private static final LOCK_SOUND_HWT:Ljava/lang/String; = "lock_sound_hwt"

.field private static final TAG_THEME_SOUND:Ljava/lang/String; = "KeyguardViewMediatorEx"

.field private static final UNLOCK_SOUND_HWT:Ljava/lang/String; = "unlock_sound_hwt"


# instance fields
.field private final mHwThemeReceiver:Landroid/content/BroadcastReceiver;

.field private mLockEffectFile:Ljava/lang/String;

.field private mUnlockEffectFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 3
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1489
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mHwThemeReceiver:Landroid/content/BroadcastReceiver;

    .line 1483
    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_sound_hwt"

    invoke-static {v1, v2}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;

    .line 1484
    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unlock_sound_hwt"

    invoke-static {v1, v2}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;

    .line 1485
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RINGTONE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1486
    .local v0, hwThemeFilter:Landroid/content/IntentFilter;
    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mHwThemeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1487
    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;

    return-object p1
.end method

.method private isFileReady(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 1508
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    .line 1512
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public loadLockSounds()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1521
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1522
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1523
    monitor-exit v6

    .line 1565
    :goto_0
    return-void

    .line 1525
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1526
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    new-instance v8, Landroid/media/SoundPool;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Landroid/media/SoundPool;-><init>(III)V

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2902(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1527
    const-string v7, "lock_sound"

    invoke-static {v0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, soundPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;

    .line 1529
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_b

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->isFileReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v2, v4

    .line 1530
    .local v2, isFileValid:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 1531
    move-object v3, v1

    .line 1534
    :cond_1
    if-nez v1, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v7

    if-nez v7, :cond_4

    .line 1535
    :cond_2
    if-eqz v3, :cond_3

    .line 1536
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3002(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)I

    .line 1538
    :cond_3
    if-eqz v2, :cond_4

    .line 1539
    const-string v7, "lock_sound_hwt"

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mLockEffectFile:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1542
    :cond_4
    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v7

    if-nez v7, :cond_5

    .line 1545
    :cond_5
    const-string v7, "unlock_sound"

    invoke-static {v0, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1546
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;

    .line 1547
    if-eqz v1, :cond_c

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->isFileReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v2, v4

    .line 1548
    :goto_2
    if-eqz v2, :cond_6

    .line 1549
    move-object v3, v1

    .line 1552
    :cond_6
    if-nez v1, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v4

    if-nez v4, :cond_9

    .line 1553
    :cond_7
    if-eqz v3, :cond_8

    .line 1554
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3102(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)I

    .line 1556
    :cond_8
    if-eqz v2, :cond_9

    .line 1557
    const-string v4, "unlock_sound_hwt"

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->mUnlockEffectFile:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1561
    :cond_9
    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v4

    if-nez v4, :cond_a

    .line 1564
    :cond_a
    monitor-exit v6

    goto/16 :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #isFileValid:Z
    .end local v3           #soundPath:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #filePath:Ljava/lang/String;
    .restart local v3       #soundPath:Ljava/lang/String;
    :cond_b
    move v2, v5

    .line 1529
    goto :goto_1

    .restart local v2       #isFileValid:Z
    :cond_c
    move v2, v5

    .line 1547
    goto :goto_2
.end method

.method public unloadLockSounds()V
    .locals 3

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1574
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1575
    monitor-exit v1

    .line 1583
    :goto_0
    return-void

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 1579
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 1580
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1581
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$KeyguardViewMediatorEx;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$2902(Lcom/android/internal/policy/impl/KeyguardViewMediator;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 1582
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
