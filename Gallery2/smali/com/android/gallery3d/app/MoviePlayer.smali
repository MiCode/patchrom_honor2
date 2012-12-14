.class public Lcom/android/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/android/gallery3d/app/ControllerOverlay$Listener;
.implements Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# static fields
.field private static final SUPPROT_SUBTITLE_CONFIG:Z


# instance fields
.field private UriArrayLength:I

.field private final mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

.field private mCurrentIteration:I

.field private mCurrentUriIx:I

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mIsHttpSdp:Z

.field private mIsPlaying:Z

.field private mIsSubtitleFileExists:Z

.field private mLastSystemUiVis:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private final mRemoveBackground:Ljava/lang/Runnable;

.field private mRepeatCnt:I

.field private mResumeableTime:J

.field private mRootView:Landroid/view/View;

.field private mShowing:Z

.field private mSubTitleView:Lcn/real/device/SubTitleView;

.field private mSubtitleService:Lcn/real/device/HelixSubtitleService;

.field private mTitles:[Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private mVideoUriStrings:[Ljava/lang/String;

.field private mVideoUris:[Landroid/net/Uri;

.field private final mVideoView:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "ro.config.hw_subtitle_support"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "videoUri"
    .parameter "savedInstance"
    .parameter "canReplay"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 101
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentIteration:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->UriArrayLength:I

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSubtitleFileExists:Z

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    .line 123
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 141
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    .line 148
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 158
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 159
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 160
    const v1, 0x7f0c0052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 161
    new-instance v1, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v1, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 162
    iput-object p3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 164
    new-instance v1, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object v1, p1

    .line 165
    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 167
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, p5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 172
    sget-boolean v1, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v1, :cond_1

    .line 174
    const v1, 0x7f0c0053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/real/device/SubTitleView;

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubTitleView:Lcn/real/device/SubTitleView;

    .line 176
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, filePath:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, mResolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 181
    .local v9, mCursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 183
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 184
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 192
    :goto_0
    if-eqz v9, :cond_0

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    .end local v0           #mResolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v9           #mCursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MoviePlayer;->initSubTitleView(Ljava/lang/String;)V

    .line 202
    .end local v7           #filePath:Ljava/lang/String;
    :cond_1
    sget-boolean v1, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v1, p0}, Lcom/huawei/android/widget/VideoViewEx;->setSTCallback(Landroid/widget/VideoView;Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;)V

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 207
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$4;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$4;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$5;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$5;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v3, Lcom/android/gallery3d/app/MoviePlayer$6;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/app/MoviePlayer$6;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 257
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 259
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 260
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 262
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v8, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v3, "pause"

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p2, v8}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    if-eqz p4, :cond_7

    .line 267
    const-string v1, "video-position"

    const/4 v3, 0x0

    invoke-virtual {p4, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 268
    const-string v1, "resumeable-timeout"

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p4, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 269
    const-string v1, "true"

    const-string v3, "omap.enhancement"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    const-string v1, "player-state"

    const/4 v3, 0x0

    invoke-virtual {p4, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    .line 271
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 273
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 281
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->suspend()V

    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 295
    :goto_3
    return-void

    .line 187
    .end local v8           #i:Landroid/content/Intent;
    .restart local v0       #mResolver:Landroid/content/ContentResolver;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    .restart local v9       #mCursor:Landroid/database/Cursor;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 192
    if-eqz v9, :cond_0

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 192
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_4

    .line 193
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 275
    .end local v0           #mResolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v9           #mCursor:Landroid/database/Cursor;
    .restart local v8       #i:Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    goto :goto_2

    .line 278
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_2

    .line 284
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v6

    .line 287
    .local v6, bookmark:Ljava/lang/Integer;
    if-eqz v6, :cond_8

    .line 290
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_3

    .line 292
    :cond_8
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    goto :goto_3
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Landroid/os/Bundle;Z[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 11
    .parameter "rootView"
    .parameter "movieActivity"
    .parameter "savedInstance"
    .parameter "canReplay"
    .parameter "videoUri"
    .parameter "titles"
    .parameter "repeatCnt"

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 97
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 101
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 103
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 108
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentIteration:I

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->UriArrayLength:I

    .line 110
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    .line 111
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSubtitleFileExists:Z

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    .line 123
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$1;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 141
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$2;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$2;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    .line 148
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$3;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$3;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 299
    const-string v2, "true"

    const-string v4, "omap.enhancement"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 300
    invoke-virtual {p2}, Lcom/android/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 301
    const v2, 0x7f0c0052

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 302
    new-instance v2, Lcom/android/gallery3d/app/Bookmarker;

    invoke-direct {v2, p2}, Lcom/android/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 304
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:[Ljava/lang/String;

    .line 305
    move-object/from16 v0, p5

    array-length v2, v0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->UriArrayLength:I

    .line 306
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->UriArrayLength:I

    new-array v2, v2, [Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:[Landroid/net/Uri;

    .line 307
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:[Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:[Ljava/lang/String;

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    aget-object v2, v2, v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 310
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:[Landroid/net/Uri;

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    aput-object v5, v2, v4

    .line 311
    move/from16 v0, p7

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    .line 313
    new-instance v2, Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object v2, p1

    .line 314
    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 315
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, p0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setListener(Lcom/android/gallery3d/app/ControllerOverlay$Listener;)V

    .line 316
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, p4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 318
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 319
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 322
    sget-boolean v2, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v2, :cond_1

    .line 324
    const v2, 0x7f0c0053

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/real/device/SubTitleView;

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubTitleView:Lcn/real/device/SubTitleView;

    .line 326
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, filePath:Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 329
    .local v1, mResolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 331
    .local v10, mCursor:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v2

    .line 333
    .local v3, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 334
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 342
    :goto_0
    if-eqz v10, :cond_0

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v1           #mResolver:Landroid/content/ContentResolver;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v10           #mCursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    invoke-direct {p0, v8}, Lcom/android/gallery3d/app/MoviePlayer;->initSubTitleView(Ljava/lang/String;)V

    .line 350
    .end local v8           #filePath:Ljava/lang/String;
    :cond_1
    sget-boolean v2, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v2, :cond_2

    .line 351
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-static {v2, p0}, Lcom/huawei/android/widget/VideoViewEx;->setSTCallback(Landroid/widget/VideoView;Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;)V

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$7;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$7;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v2, v4}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 365
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v4, Lcom/android/gallery3d/app/MoviePlayer$8;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/MoviePlayer$8;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v2, v4}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 374
    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 375
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 377
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v9, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v4, "pause"

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p2, v9}, Lcom/android/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    if-eqz p3, :cond_6

    .line 382
    const-string v2, "video-position"

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 383
    const-string v2, "resumeable-timeout"

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {p3, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 384
    const-string v2, "player-state"

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    .line 385
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 386
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 387
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 391
    :goto_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->suspend()V

    .line 392
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 410
    .end local v9           #i:Landroid/content/Intent;
    :goto_3
    return-void

    .line 337
    .restart local v1       #mResolver:Landroid/content/ContentResolver;
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v10       #mCursor:Landroid/database/Cursor;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 339
    :catch_0
    move-exception v2

    .line 342
    if-eqz v10, :cond_0

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 342
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 389
    .end local v1           #mResolver:Landroid/content/ContentResolver;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #filePath:Ljava/lang/String;
    .end local v10           #mCursor:Landroid/database/Cursor;
    .restart local v9       #i:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    goto :goto_2

    .line 394
    :cond_6
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v7

    .line 395
    .local v7, bookmark:Ljava/lang/Integer;
    if-eqz v7, :cond_7

    .line 396
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/android/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_3

    .line 398
    :cond_7
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    goto :goto_3

    .line 402
    .end local v7           #bookmark:Ljava/lang/Integer;
    .end local v9           #i:Landroid/content/Intent;
    :cond_8
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 403
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 404
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    .line 405
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 406
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 407
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MoviePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRemoveBackground:Ljava/lang/Runnable;

    return-object v0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 3
    .parameter "file"

    .prologue
    .line 504
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 505
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 507
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :cond_1
    :goto_1
    return-void

    .line 510
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 512
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 513
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MoviePlayer;->deleteFile(Ljava/io/File;)V

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 508
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 518
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private initSubTitleView(Ljava/lang/String;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 679
    if-nez p1, :cond_0

    .line 714
    :goto_0
    return-void

    .line 682
    :cond_0
    move-object v2, p1

    .line 683
    .local v2, mURL:Ljava/lang/String;
    const-string v1, ""

    .line 685
    .local v1, mSubTitleFilename:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 687
    .local v0, iPos:I
    if-lez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 689
    move-object v1, v2

    .line 690
    const-string v4, "file://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 691
    const/4 v4, 0x7

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/gallery3d/app/MoviePlayer;->getSubtitleFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 697
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 699
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSubtitleFileExists:Z

    .line 701
    new-instance v4, Lcn/real/device/HelixSubtitleService;

    invoke-direct {v4}, Lcn/real/device/HelixSubtitleService;-><init>()V

    iput-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    .line 702
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v4, v1}, Lcn/real/device/HelixSubtitleService;->SetMediaURL(Ljava/lang/String;)I

    move-result v3

    .line 704
    .local v3, result:I
    if-nez v3, :cond_3

    .line 705
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubTitleView:Lcn/real/device/SubTitleView;

    invoke-virtual {v4, v5}, Lcn/real/device/HelixSubtitleService;->SetView(Landroid/view/View;)I

    goto :goto_0

    .line 693
    .end local v3           #result:I
    :cond_2
    invoke-virtual {p0, v1, v7, v0}, Lcom/android/gallery3d/app/MoviePlayer;->getSubtitleFilePath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 707
    .restart local v3       #result:I
    :cond_3
    iput-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    .line 708
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 712
    .end local v3           #result:I
    :cond_4
    iput-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    goto :goto_0
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 843
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 613
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPaused()V

    .line 614
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 602
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 603
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 604
    return-void
.end method

.method private setProgress()I
    .locals 3

    .prologue
    .line 537
    iget-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    if-eqz v2, :cond_1

    .line 539
    const/4 v1, 0x0

    .line 553
    :cond_0
    :goto_0
    return v1

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 542
    .local v1, position:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 544
    .local v0, duration:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    :cond_2
    const/4 v1, 0x0

    .line 549
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimes(II)V

    goto :goto_0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "bookmark"

    .prologue
    .line 431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 432
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e0037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 433
    const v1, 0x7f0e0038

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/android/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 436
    new-instance v1, Lcom/android/gallery3d/app/MoviePlayer$9;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/MoviePlayer$9;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 442
    const v1, 0x7f0e0039

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$10;

    invoke-direct {v2, p0, p2}, Lcom/android/gallery3d/app/MoviePlayer$10;-><init>(Lcom/android/gallery3d/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 450
    const v1, 0x7f0e003d

    new-instance v2, Lcom/android/gallery3d/app/MoviePlayer$11;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/MoviePlayer$11;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 458
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 412
    const/16 v0, 0x700

    .line 415
    .local v0, flag:I
    if-nez p1, :cond_0

    .line 416
    or-int/lit8 v0, v0, 0x7

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    .line 420
    return-void
.end method

.method private startVideo()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, scheme:Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".sdp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 570
    .local v1, isLocalSDPFile:Z
    :goto_0
    const-string v5, "http"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".sdp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 571
    iget-boolean v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    if-eqz v5, :cond_1

    .line 572
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/data/com.android.gallery3d/temp"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 583
    :goto_3
    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 584
    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 586
    .end local v0           #dir:Ljava/io/File;
    :cond_1
    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "rtsp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_5

    .line 588
    :cond_2
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showLoading()V

    .line 589
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    :goto_4
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 597
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 598
    return-void

    .end local v1           #isLocalSDPFile:Z
    :cond_3
    move v1, v4

    .line 568
    goto :goto_0

    .restart local v1       #isLocalSDPFile:Z
    :cond_4
    move v5, v4

    .line 570
    goto :goto_1

    .line 592
    :cond_5
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 593
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V

    goto :goto_4

    .line 576
    .restart local v0       #dir:Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 581
    :catch_1
    move-exception v5

    goto :goto_3
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitleFilePath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "filePath"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    const/4 v7, 0x0

    .line 718
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, ".srt"

    aput-object v5, v0, v7

    const/4 v5, 0x1

    const-string v6, ".smi"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, ".sub"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, ".ssa"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, ".ass"

    aput-object v6, v0, v5

    .line 719
    .local v0, endings:[Ljava/lang/String;
    array-length v2, v0

    .line 721
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 723
    .local v4, tempSubTitleFilename:Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 724
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    .local v3, mFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 729
    .end local v3           #mFile:Ljava/io/File;
    .end local v4           #tempSubTitleFilename:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 721
    .restart local v3       #mFile:Ljava/io/File;
    .restart local v4       #tempSubTitleFilename:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    .end local v3           #mFile:Ljava/io/File;
    .end local v4           #tempSubTitleFilename:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isSubtitleFileExists()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsSubtitleFileExists:Z

    return v0
.end method

.method public onCompletion()V
    .locals 1

    .prologue
    .line 664
    sget-boolean v0, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnStop()V

    .line 666
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->Close()V

    .line 669
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    .line 639
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 640
    .local v0, duration:I
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2, v0, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimes(II)V

    .line 642
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 643
    const-string v2, "true"

    const-string v3, "omap.enhancement"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    if-lez v2, :cond_2

    .line 644
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 645
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->UriArrayLength:I

    if-lt v2, v3, :cond_0

    .line 646
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    .line 647
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentIteration:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentIteration:I

    .line 649
    :cond_0
    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentIteration:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mRepeatCnt:I

    if-lt v2, v3, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 652
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mTitles:[Ljava/lang/String;

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    aget-object v1, v2, v3

    .line 653
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:[Landroid/net/Uri;

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUriStrings:[Ljava/lang/String;

    iget v5, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    .line 654
    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoUris:[Landroid/net/Uri;

    iget v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mCurrentUriIx:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 655
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 660
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 658
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer;->onCompletion()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 525
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.gallery3d/temp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, file:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->deleteFile(Ljava/io/File;)V

    .line 528
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 529
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 530
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "player"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 620
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.android.gallery3d/temp/hw_sdp_temp.sdp"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, sdpTempFile:Ljava/io/File;
    iget-boolean v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    if-ne v3, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    const-string v3, "/data/data/com.android.gallery3d/temp/hw_sdp_temp.sdp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 623
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 624
    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 625
    iput-boolean v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsHttpSdp:Z

    .line 633
    :goto_0
    return v1

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 632
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    move v1, v2

    .line 633
    goto :goto_0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 793
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 794
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 795
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 806
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 807
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 835
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 810
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 835
    const/4 v0, 0x0

    goto :goto_0

    .line 813
    :sswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 816
    :cond_2
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 820
    :sswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 825
    :sswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 810
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 839
    invoke-static {p1}, Lcom/android/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 462
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 472
    :cond_1
    const-string v0, "true"

    const-string v1, "omap.enhancement"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/android/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v3, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 477
    sget-boolean v0, Lcom/android/gallery3d/app/MoviePlayer;->SUPPROT_SUBTITLE_CONFIG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPause()V

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 483
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->startVideo()V

    .line 800
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 488
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 492
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 500
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 423
    const-string v0, "video-position"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v0, "resumeable-timeout"

    iget-wide v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 425
    const-string v0, "true"

    const-string v1, "omap.enhancement"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "player-state"

    iget-boolean v1, p0, Lcom/android/gallery3d/app/MoviePlayer;->mIsPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public onSeekEnd(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 780
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 781
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 782
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 775
    return-void
.end method

.method public onSeekStart()V
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 770
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 786
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 787
    invoke-direct {p0}, Lcom/android/gallery3d/app/MoviePlayer;->setProgress()I

    .line 788
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 789
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPause()V

    .line 736
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcn/real/device/HelixSubtitleService;->OnTimeSync(J)V

    .line 748
    :cond_0
    return-void
.end method

.method public setPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "player"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0, p1}, Lcn/real/device/HelixSubtitleService;->SetPlayer(Landroid/media/MediaPlayer;)V

    .line 754
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer;->mSubtitleService:Lcn/real/device/HelixSubtitleService;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService;->OnPlay()V

    .line 742
    :cond_0
    return-void
.end method
