.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# static fields
.field private static final SUPPROT_SUBTITLE_CONFIG:Z


# instance fields
.field private islock:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDolbyEffect:Ljava/lang/Object;

.field private mFinishOnCompletion:Z

.field private mIsInterSDCard:Z

.field private mIsResumed:Z

.field private mKeyguardEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

.field private mProvider:Landroid/widget/ShareActionProvider;

.field private mRepeatCnt:I

.field private mTitles:[Ljava/lang/String;

.field private mTreatUpAsBack:Z

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mUri:Landroid/net/Uri;

.field private mUriArray:[Ljava/lang/String;

.field private shutDownReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "ro.config.hw_subtitle_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/MovieActivity;->SUPPROT_SUBTITLE_CONFIG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    .line 81
    iput v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mRepeatCnt:I

    .line 85
    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    .line 101
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->islock:Z

    .line 104
    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    .line 106
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDelayHandler:Landroid/os/Handler;

    .line 121
    iput-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardEnabled:Z

    .line 124
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$3;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$3;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->shutDownReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->resumePlayer()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->islock:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsInterSDCard:Z

    return v0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    .line 246
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 247
    .local v8, actionBar:Landroid/app/ActionBar;
    const-string v3, "logo-bitmap"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 248
    .local v9, logo:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    .line 249
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v3}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_0
    invoke-virtual {v8, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 254
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 256
    invoke-virtual {v8, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    :goto_0
    return-void

    .line 260
    :cond_1
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$6;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3, v8}, Lcom/android/gallery3d/app/MovieActivity$6;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/content/ContentResolver;Landroid/app/ActionBar;)V

    .line 279
    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInternalSDcard()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 493
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getInternalSdcard()Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, interSdcardPath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 495
    .local v7, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 496
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string v1, "file"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 519
    :cond_1
    :goto_0
    if-nez v7, :cond_5

    move v1, v10

    .line 522
    :goto_1
    return v1

    .line 498
    :cond_2
    const-string v1, "content"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 501
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 503
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v10

    .line 505
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 506
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 507
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 514
    :goto_2
    if-eqz v6, :cond_1

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 509
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 511
    :catch_0
    move-exception v1

    .line 514
    if-eqz v6, :cond_1

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 522
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method private resumePlayer()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 393
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardEnabled:Z

    .line 394
    const-string v2, "MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePlayer-mKeyguardEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardEnabled:Z

    if-eqz v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->islock:Z

    if-eqz v2, :cond_2

    .line 401
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 402
    .local v1, mg:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, mActivityname:Ljava/lang/String;
    const-string v2, ".app.MovieActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 405
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->islock:Z

    goto :goto_0

    .line 409
    .end local v0           #mActivityname:Ljava/lang/String;
    .end local v1           #mg:Landroid/app/ActivityManager;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 410
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->islock:Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setVolumeControlStream(I)V

    .line 159
    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 160
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 163
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v12, keyguardFilt:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v12}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    const-string v1, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 170
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v13, myFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->shutDownReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    const v1, 0x7f040017

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 176
    const v1, 0x7f0c0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 177
    .local v3, rootView:Landroid/view/View;
    const/16 v1, 0x700

    invoke-virtual {v3, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 181
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 182
    const-string v1, "android.intent.extra.finishOnCompletion"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 184
    const-string v1, "treat-up-as-back"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    .line 185
    const-string v1, "true"

    const-string v2, "omap.enhancement"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 187
    .local v10, extras:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 188
    const-string v1, "RepeatCnt"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mRepeatCnt:I

    .line 189
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mRepeatCnt:I

    if-lez v1, :cond_0

    .line 190
    const-string v1, "UriArray"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mUriArray:[Ljava/lang/String;

    .line 191
    const-string v1, "TitlesArray"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mTitles:[Ljava/lang/String;

    .line 195
    .end local v10           #extras:Landroid/os/Bundle;
    :cond_0
    const-string v1, "true"

    const-string v2, "omap.enhancement"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mRepeatCnt:I

    if-lez v1, :cond_3

    .line 196
    new-instance v1, Lcom/android/gallery3d/app/MovieActivity$4;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v2, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/gallery3d/app/MovieActivity;->mUriArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/gallery3d/app/MovieActivity;->mTitles:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/gallery3d/app/MovieActivity;->mRepeatCnt:I

    move-object/from16 v2, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/gallery3d/app/MovieActivity$4;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/os/Bundle;Z[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 217
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->isInternalSDcard()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mIsInterSDCard:Z

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    move-object/from16 v0, p0

    invoke-static {v1, v0, v2}, Lcom/huawei/gallery3d/dolby/DolbyWrapper;->initDolbyEffect(Ljava/lang/Object;Lcom/android/gallery3d/app/MovieActivity;Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->registedBroadcastReceiver()V

    .line 225
    const-string v1, "android.intent.extra.screenOrientation"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    const-string v1, "android.intent.extra.screenOrientation"

    const/4 v2, -0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 229
    .local v14, orientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v14, v1, :cond_1

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 233
    .end local v14           #orientation:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 234
    .local v15, win:Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 235
    .local v16, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 236
    move-object/from16 v0, v16

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    move-object/from16 v0, v16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 237
    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    return-void

    .line 196
    .end local v15           #win:Landroid/view/Window;
    .end local v16           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 206
    :cond_3
    new-instance v1, Lcom/android/gallery3d/app/MovieActivity$5;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v2, :cond_4

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/gallery3d/app/MovieActivity$5;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 312
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/util/GalleryUtils;->isDrmFileName(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f110006

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 315
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/huawei/gallery3d/dolby/DolbyWrapper;->onCreateDolbyOptionMenu(Ljava/lang/Object;Landroid/view/Menu;)V

    .line 318
    invoke-static {p1}, Lcom/android/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    .line 320
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_0

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v3, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 327
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const v3, 0x7f0c010d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 328
    .local v1, item:Landroid/view/MenuItem;
    if-nez v1, :cond_1

    .line 329
    const/4 v3, 0x0

    .line 345
    .end local v1           #item:Landroid/view/MenuItem;
    :goto_0
    return v3

    .line 331
    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_1
    const-string v3, "content"

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 333
    invoke-static {p1}, Lcom/android/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v2

    .line 337
    .local v2, provider:Landroid/widget/ShareActionProvider;
    if-eqz v2, :cond_2

    const-string v3, "content"

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    invoke-virtual {v2, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 345
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #provider:Landroid/widget/ShareActionProvider;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 466
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->shutDownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 472
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    invoke-static {v0}, Lcom/huawei/gallery3d/dolby/DolbyWrapper;->onDolbyDestroy(Ljava/lang/Object;)V

    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 478
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 351
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 357
    :goto_0
    const/4 v0, 0x1

    .line 364
    :goto_1
    return v0

    .line 354
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0

    .line 360
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c010c

    if-ne v0, v1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/huawei/gallery3d/dolby/DolbyWrapper;->onOptionsItemDolbySelected(Ljava/lang/Object;Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 364
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    .line 388
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()V

    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 390
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 418
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mDolbyEffect:Ljava/lang/Object;

    invoke-static {v3}, Lcom/huawei/gallery3d/dolby/DolbyWrapper;->onDolbyResume(Ljava/lang/Object;)V

    .line 422
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieActivity;->mIsResumed:Z

    .line 425
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    if-eqz v3, :cond_0

    .line 426
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v2, shareIntent:Landroid/content/Intent;
    const-string v3, "video/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 429
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v3, v2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 433
    .end local v2           #shareIntent:Landroid/content/Intent;
    :cond_0
    sget-boolean v3, Lcom/android/gallery3d/app/MovieActivity;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MoviePlayer;->isSubtitleFileExists()Z

    move-result v3

    if-ne v5, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 440
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 442
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mDelayHandler:Landroid/os/Handler;

    const/16 v4, 0x101

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 443
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mDelayHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.fmradioservicecommand"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "stop"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 460
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 370
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 374
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 378
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 381
    return-void
.end method

.method public registedBroadcastReceiver()V
    .locals 2

    .prologue
    .line 286
    new-instance v1, Lcom/android/gallery3d/app/MovieActivity$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MovieActivity$7;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    return-void
.end method
