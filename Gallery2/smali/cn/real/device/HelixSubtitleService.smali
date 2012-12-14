.class public Lcn/real/device/HelixSubtitleService;
.super Ljava/lang/Object;
.source "HelixSubtitleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/real/device/HelixSubtitleService$ClearThread;,
        Lcn/real/device/HelixSubtitleService$SmiRendererThread;,
        Lcn/real/device/HelixSubtitleService$SrtRendererThread;,
        Lcn/real/device/HelixSubtitleService$SsaRendererThread;,
        Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;,
        Lcn/real/device/HelixSubtitleService$SyncTimerTask;
    }
.end annotation


# static fields
.field private static mCurDisplayDur:J

.field private static mCurDisplayPos:J

.field private static mNextPos:J

.field private static mSmiParser:Lcn/real/device/smiparser/JSmiParser;

.field private static mSrtParser:Lcn/real/device/srtparser/JSrtParser;

.field private static mSsaParser:Lcn/real/device/assparser/JSsaParser;

.field private static mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;


# instance fields
.field private final TYPE_ASS_SUBTITLE:I

.field private final TYPE_SMI_SUBTITLE:I

.field private final TYPE_SRT_SUBTITLE:I

.field private final TYPE_SSA_SUBTITLE:I

.field private final TYPE_SUBIDX_SUBTITLE:I

.field private mActiveByOther:Z

.field private mActiveBySeek:Z

.field private final mClearSubTitleHandler:Landroid/os/Handler;

.field private mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

.field private mClosed:Z

.field private mDefaultFontHeight:I

.field private mDefaultFontSize:F

.field private mDisplayView:Landroid/view/View;

.field private mFilePath:Ljava/lang/String;

.field private mKeepSubtitle:Z

.field private mLastScaleX:F

.field private mLocalPos:J

.field private mPaused:Z

.field private mPlayReady:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPreSeeked:Z

.field private final mSTHandler:Landroid/os/Handler;

.field private mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

.field private mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

.field private mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

.field private mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;

.field private mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

.field private mSubTitleType:I

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private syncTimer:Ljava/util/Timer;

.field private syncTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    .line 65
    sput-object v0, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    .line 67
    sput-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    .line 70
    sput-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    .line 85
    sput-wide v1, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 87
    sput-wide v1, Lcn/real/device/HelixSubtitleService;->mCurDisplayDur:J

    .line 88
    sput-wide v1, Lcn/real/device/HelixSubtitleService;->mCurDisplayPos:J

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcn/real/device/HelixSubtitleService;->TYPE_SRT_SUBTITLE:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->TYPE_SMI_SUBTITLE:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->TYPE_SUBIDX_SUBTITLE:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->TYPE_SSA_SUBTITLE:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->TYPE_ASS_SUBTITLE:I

    .line 59
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    .line 61
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    .line 64
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    .line 66
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    .line 68
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    .line 69
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;

    .line 71
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    .line 73
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    .line 74
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    .line 75
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 76
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mPaused:Z

    .line 77
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    .line 78
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mPreSeeked:Z

    .line 79
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    .line 80
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    .line 81
    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->syncTimerTask:Ljava/util/TimerTask;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 89
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z

    .line 90
    const/high16 v0, 0x41b0

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mDefaultFontSize:F

    .line 91
    const/16 v0, 0x2c

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mDefaultFontHeight:I

    .line 93
    iput v2, p0, Lcn/real/device/HelixSubtitleService;->mVideoWidth:I

    .line 94
    iput v2, p0, Lcn/real/device/HelixSubtitleService;->mVideoHeight:I

    .line 95
    const/high16 v0, 0x3f80

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mLastScaleX:F

    .line 860
    new-instance v0, Lcn/real/device/HelixSubtitleService$1;

    invoke-direct {v0, p0}, Lcn/real/device/HelixSubtitleService$1;-><init>(Lcn/real/device/HelixSubtitleService;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSTHandler:Landroid/os/Handler;

    .line 1108
    new-instance v0, Lcn/real/device/HelixSubtitleService$2;

    invoke-direct {v0, p0}, Lcn/real/device/HelixSubtitleService$2;-><init>(Lcn/real/device/HelixSubtitleService;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method private ResetSubtitleViewState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    sget v1, Lcn/real/device/FileUtils;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setWidth(I)V

    .line 466
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v3}, Lcn/real/device/SubTitleView;->setBackgroundColor(I)V

    .line 478
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0}, Lcn/real/device/SubTitleView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcn/real/device/HelixSubtitleService;->mDefaultFontHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 473
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setHeight(I)V

    .line 474
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    iget v1, p0, Lcn/real/device/HelixSubtitleService;->mDefaultFontSize:F

    sget v2, Lcn/real/device/FileUtils;->mScaleX:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/real/device/SubTitleView;->setTextSize(F)V

    .line 475
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v3}, Lcn/real/device/SubTitleView;->setBackgroundColor(I)V

    .line 476
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    check-cast v0, Lcn/real/device/SubTitleView;

    invoke-virtual {v0, v3}, Lcn/real/device/SubTitleView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcn/real/device/HelixSubtitleService;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    return v0
.end method

.method static synthetic access$1(Lcn/real/device/HelixSubtitleService;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10()J
    .locals 2

    .prologue
    .line 85
    sget-wide v0, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    return-wide v0
.end method

.method static synthetic access$11(Lcn/real/device/HelixSubtitleService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    return-void
.end method

.method static synthetic access$12(Lcn/real/device/HelixSubtitleService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    return-void
.end method

.method static synthetic access$13()Lcn/real/device/srtparser/JSrtParser;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    return-object v0
.end method

.method static synthetic access$14(Lcn/real/device/HelixSubtitleService;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    return v0
.end method

.method static synthetic access$15(Lcn/real/device/HelixSubtitleService;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    return v0
.end method

.method static synthetic access$16(J)V
    .locals 0
    .parameter

    .prologue
    .line 85
    sput-wide p0, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    return-void
.end method

.method static synthetic access$17(Lcn/real/device/HelixSubtitleService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$18(Lcn/real/device/HelixSubtitleService;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    return-void
.end method

.method static synthetic access$19(Lcn/real/device/HelixSubtitleService;)J
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-wide v0, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    return-wide v0
.end method

.method static synthetic access$2(Lcn/real/device/HelixSubtitleService;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mDefaultFontHeight:I

    return v0
.end method

.method static synthetic access$20(Lcn/real/device/HelixSubtitleService;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    return v0
.end method

.method static synthetic access$21(J)V
    .locals 0
    .parameter

    .prologue
    .line 88
    sput-wide p0, Lcn/real/device/HelixSubtitleService;->mCurDisplayPos:J

    return-void
.end method

.method static synthetic access$22(J)V
    .locals 0
    .parameter

    .prologue
    .line 87
    sput-wide p0, Lcn/real/device/HelixSubtitleService;->mCurDisplayDur:J

    return-void
.end method

.method static synthetic access$23()Lcn/real/device/subidxparser/JSubIdxParser;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    return-object v0
.end method

.method static synthetic access$24(Lcn/real/device/HelixSubtitleService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z

    return-void
.end method

.method static synthetic access$25(Lcn/real/device/HelixSubtitleService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1108
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$26(Lcn/real/device/HelixSubtitleService;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z

    return v0
.end method

.method static synthetic access$27(Lcn/real/device/HelixSubtitleService;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPaused:Z

    return v0
.end method

.method static synthetic access$3(Lcn/real/device/HelixSubtitleService;)F
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mDefaultFontSize:F

    return v0
.end method

.method static synthetic access$4(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/subidxparser/VobSubFileHandler;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcn/real/device/HelixSubtitleService;Lcn/real/device/HelixSubtitleService$ClearThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    return-void
.end method

.method static synthetic access$6(Lcn/real/device/HelixSubtitleService;)Lcn/real/device/HelixSubtitleService$ClearThread;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    return-object v0
.end method

.method static synthetic access$7()Lcn/real/device/smiparser/JSmiParser;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    return-object v0
.end method

.method static synthetic access$8()Lcn/real/device/assparser/JSsaParser;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    return-object v0
.end method

.method static synthetic access$9()J
    .locals 2

    .prologue
    .line 88
    sget-wide v0, Lcn/real/device/HelixSubtitleService;->mCurDisplayPos:J

    return-wide v0
.end method


# virtual methods
.method public Close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    const-string v0, "HelixSubtitleService"

    const-string v1, "=========Close========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    .line 167
    iput-object v3, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    .line 168
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    if-nez v0, :cond_4

    .line 169
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    invoke-virtual {v0}, Lcn/real/device/srtparser/JSrtParser;->Close()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    if-eqz v0, :cond_2

    .line 172
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    invoke-virtual {v0}, Lcn/real/device/smiparser/JSmiParser;->Close()V

    goto :goto_0

    .line 173
    :cond_2
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    invoke-virtual {v0}, Lcn/real/device/subidxparser/JSubIdxParser;->Close()V

    goto :goto_0

    .line 175
    :cond_3
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    invoke-virtual {v0}, Lcn/real/device/assparser/JSsaParser;->Close()V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    if-eqz v0, :cond_5

    .line 214
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 218
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    .line 219
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 221
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 222
    iput-object v3, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    .line 223
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    monitor-enter v1

    .line 183
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 184
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    invoke-virtual {v0}, Lcn/real/device/srtparser/JSrtParser;->Close()V

    goto :goto_1

    .line 182
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 189
    :pswitch_1
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    monitor-enter v1

    .line 190
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 191
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 189
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    invoke-virtual {v0}, Lcn/real/device/smiparser/JSmiParser;->Close()V

    goto :goto_1

    .line 189
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 196
    :pswitch_2
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    monitor-enter v1

    .line 197
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 198
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 196
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 200
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    invoke-virtual {v0}, Lcn/real/device/subidxparser/JSubIdxParser;->Close()V

    goto :goto_1

    .line 196
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 204
    :pswitch_3
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    monitor-enter v1

    .line 205
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 206
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 208
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    invoke-virtual {v0}, Lcn/real/device/assparser/JSsaParser;->Close()V

    goto :goto_1

    .line 204
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 214
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public OnPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    const-string v0, "HelixSubtitleService"

    const-string v1, "=========OnPause========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mPaused:Z

    .line 354
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 384
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :pswitch_0
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    monitor-enter v1

    .line 357
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 358
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 356
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 362
    :pswitch_1
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    monitor-enter v1

    .line 363
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 364
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 362
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 368
    :pswitch_2
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    monitor-enter v1

    .line 369
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 370
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 368
    monitor-exit v1

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 375
    :pswitch_3
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    monitor-enter v1

    .line 376
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 377
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 375
    monitor-exit v1

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public OnPlay()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 228
    const-string v0, "HelixSubtitleService"

    const-string v1, "=========OnPlay========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-boolean v6, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    .line 230
    iput-boolean v6, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 231
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPaused:Z

    if-eqz v0, :cond_2

    .line 232
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z

    if-nez v0, :cond_1

    .line 234
    iget-wide v0, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    sput-wide v0, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 236
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 238
    sget-wide v0, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcn/real/device/HelixSubtitleService;->mPaused:Z

    .line 258
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    .line 259
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    packed-switch v0, :pswitch_data_0

    .line 280
    :goto_2
    const-string v0, "HelixSubtitleService"

    const-string v1, "####Start to Sync Timeline####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    .line 282
    new-instance v0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;

    invoke-direct {v0, p0}, Lcn/real/device/HelixSubtitleService$SyncTimerTask;-><init>(Lcn/real/device/HelixSubtitleService;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimerTask:Ljava/util/TimerTask;

    .line 283
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->syncTimerTask:Ljava/util/TimerTask;

    const-wide/32 v4, 0xafc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 284
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v0, "HelixSubtitleService"

    const-string v1, "mPlayer Handler maybe released by SurfaceDestroyed etc..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_1
    sget-wide v0, Lcn/real/device/HelixSubtitleService;->mCurDisplayPos:J

    sget-wide v4, Lcn/real/device/HelixSubtitleService;->mCurDisplayDur:J

    sub-long/2addr v0, v4

    sput-wide v0, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    goto :goto_0

    .line 250
    :cond_2
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPreSeeked:Z

    if-eqz v0, :cond_3

    .line 251
    iput-boolean v6, p0, Lcn/real/device/HelixSubtitleService;->mPreSeeked:Z

    goto :goto_1

    .line 254
    :cond_3
    sput-wide v2, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 255
    iput-wide v2, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 256
    invoke-direct {p0}, Lcn/real/device/HelixSubtitleService;->ResetSubtitleViewState()V

    goto :goto_1

    .line 261
    :pswitch_0
    new-instance v0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSTHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/real/device/HelixSubtitleService$SrtRendererThread;-><init>(Lcn/real/device/HelixSubtitleService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    .line 262
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->start()V

    goto :goto_2

    .line 265
    :pswitch_1
    new-instance v0, Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSTHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/real/device/HelixSubtitleService$SmiRendererThread;-><init>(Lcn/real/device/HelixSubtitleService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    .line 266
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService$SmiRendererThread;->start()V

    goto :goto_2

    .line 269
    :pswitch_2
    new-instance v0, Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSTHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;-><init>(Lcn/real/device/HelixSubtitleService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    .line 270
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;->start()V

    goto :goto_2

    .line 274
    :pswitch_3
    new-instance v0, Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSTHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcn/real/device/HelixSubtitleService$SsaRendererThread;-><init>(Lcn/real/device/HelixSubtitleService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    .line 275
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    invoke-virtual {v0}, Lcn/real/device/HelixSubtitleService$SsaRendererThread;->start()V

    goto :goto_2

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public OnSeek(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 391
    const-string v0, "HelixSubtitleService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========OnSeek<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    if-eqz v0, :cond_2

    .line 393
    :cond_0
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 394
    sput-wide p1, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 395
    iput-boolean v3, p0, Lcn/real/device/HelixSubtitleService;->mPreSeeked:Z

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    packed-switch v0, :pswitch_data_0

    .line 440
    :goto_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    if-eqz v0, :cond_1

    .line 441
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    monitor-enter v1

    .line 442
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 401
    :pswitch_0
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    monitor-enter v1

    .line 403
    :try_start_1
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 404
    sput-wide p1, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    .line 406
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 410
    :pswitch_1
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    monitor-enter v1

    .line 412
    :try_start_2
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 413
    sput-wide p1, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    .line 415
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 410
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 419
    :pswitch_2
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    monitor-enter v1

    .line 421
    :try_start_3
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 422
    sput-wide p1, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    .line 424
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v1

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 429
    :pswitch_3
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    monitor-enter v1

    .line 431
    :try_start_4
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 432
    sput-wide p1, Lcn/real/device/HelixSubtitleService;->mNextPos:J

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z

    .line 434
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v1

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public OnStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 287
    const-string v0, "HelixSubtitleService"

    const-string v1, "=========OnStop========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-boolean v2, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    .line 289
    iput-object v3, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    .line 290
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    if-nez v0, :cond_4

    .line 291
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    invoke-virtual {v0}, Lcn/real/device/srtparser/JSrtParser;->Close()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    if-eqz v0, :cond_2

    .line 294
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    invoke-virtual {v0}, Lcn/real/device/smiparser/JSmiParser;->Close()V

    goto :goto_0

    .line 295
    :cond_2
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    if-eqz v0, :cond_3

    .line 296
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    invoke-virtual {v0}, Lcn/real/device/subidxparser/JSubIdxParser;->Close()V

    goto :goto_0

    .line 297
    :cond_3
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    invoke-virtual {v0}, Lcn/real/device/assparser/JSsaParser;->Close()V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    iget v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_1
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    if-eqz v0, :cond_5

    .line 336
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mClearThread:Lcn/real/device/HelixSubtitleService$ClearThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 340
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayReady:Z

    .line 341
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 343
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 344
    iput-object v3, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    .line 345
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    monitor-enter v1

    .line 305
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 306
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSrtThread:Lcn/real/device/HelixSubtitleService$SrtRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    invoke-virtual {v0}, Lcn/real/device/srtparser/JSrtParser;->Close()V

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 311
    :pswitch_1
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    monitor-enter v1

    .line 312
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 313
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSmiThread:Lcn/real/device/HelixSubtitleService$SmiRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 311
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    invoke-virtual {v0}, Lcn/real/device/smiparser/JSmiParser;->Close()V

    goto :goto_1

    .line 311
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 318
    :pswitch_2
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    monitor-enter v1

    .line 319
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 320
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSubIdxThread:Lcn/real/device/HelixSubtitleService$SubIdxRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 318
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 322
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    invoke-virtual {v0}, Lcn/real/device/subidxparser/JSubIdxParser;->Close()V

    goto :goto_1

    .line 318
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 326
    :pswitch_3
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    monitor-enter v1

    .line 327
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z

    .line 328
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mSsaThread:Lcn/real/device/HelixSubtitleService$SsaRendererThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 326
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 330
    sget-object v0, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    invoke-virtual {v0}, Lcn/real/device/assparser/JSsaParser;->Close()V

    goto :goto_1

    .line 326
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 336
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public OnTimeSync(J)V
    .locals 3
    .parameter

    .prologue
    .line 448
    const-string v0, "HelixSubtitleService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=========OnTimeSync<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mClosed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/real/device/HelixSubtitleService;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->syncTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iput-wide p1, p0, Lcn/real/device/HelixSubtitleService;->mLocalPos:J

    .line 452
    invoke-virtual {p0, p1, p2}, Lcn/real/device/HelixSubtitleService;->OnSeek(J)V

    goto :goto_0
.end method

.method public SetMediaURL(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 101
    .line 102
    if-nez p1, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 160
    :goto_0
    return v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    .line 106
    const-string v1, "HelixSubtitleService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "####Begin Init Parser"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, ".srt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    .line 109
    new-instance v1, Lcn/real/device/srtparser/JSrtParser;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/real/device/srtparser/JSrtParser;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    .line 111
    :try_start_0
    sget-object v1, Lcn/real/device/HelixSubtitleService;->mSrtParser:Lcn/real/device/srtparser/JSrtParser;

    invoke-virtual {v1}, Lcn/real/device/srtparser/JSrtParser;->DoParser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 159
    :cond_1
    :goto_1
    const-string v1, "HelixSubtitleService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "####End Init Parser and return ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "####"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 116
    :cond_2
    const-string v1, ".smi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const/4 v1, 0x1

    iput v1, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    .line 118
    new-instance v1, Lcn/real/device/smiparser/JSmiParser;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/real/device/smiparser/JSmiParser;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    .line 120
    :try_start_1
    sget-object v1, Lcn/real/device/HelixSubtitleService;->mSmiParser:Lcn/real/device/smiparser/JSmiParser;

    invoke-virtual {v1}, Lcn/real/device/smiparser/JSmiParser;->DoParser()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    .line 121
    :catch_1
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 125
    :cond_3
    const-string v1, ".sub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    const/4 v1, 0x2

    iput v1, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    .line 127
    new-instance v1, Lcn/real/device/subidxparser/JSubIdxParser;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/real/device/subidxparser/JSubIdxParser;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    .line 129
    :try_start_2
    sget-object v1, Lcn/real/device/HelixSubtitleService;->mSubIdxParser:Lcn/real/device/subidxparser/JSubIdxParser;

    invoke-virtual {v1}, Lcn/real/device/subidxparser/JSubIdxParser;->DoParser()I

    move-result v0

    .line 130
    if-nez v0, :cond_1

    .line 131
    new-instance v1, Lcn/real/device/subidxparser/VobSubFileHandler;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/real/device/subidxparser/VobSubFileHandler;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/real/device/HelixSubtitleService;->mSubFileHandler:Lcn/real/device/subidxparser/VobSubFileHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 133
    :catch_2
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 137
    :cond_4
    const-string v1, ".ssa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    const/4 v1, 0x3

    iput v1, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    .line 139
    new-instance v1, Lcn/real/device/assparser/JSsaParser;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/real/device/assparser/JSsaParser;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    .line 141
    :try_start_3
    sget-object v1, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    invoke-virtual {v1}, Lcn/real/device/assparser/JSsaParser;->DoParser()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    goto/16 :goto_1

    .line 142
    :catch_3
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 146
    :cond_5
    const-string v1, ".ass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 147
    const/4 v1, 0x4

    iput v1, p0, Lcn/real/device/HelixSubtitleService;->mSubTitleType:I

    .line 148
    new-instance v1, Lcn/real/device/assparser/JSsaParser;

    iget-object v2, p0, Lcn/real/device/HelixSubtitleService;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcn/real/device/assparser/JSsaParser;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    .line 150
    :try_start_4
    sget-object v1, Lcn/real/device/HelixSubtitleService;->mSsaParser:Lcn/real/device/assparser/JSsaParser;

    invoke-virtual {v1}, Lcn/real/device/assparser/JSsaParser;->DoParser()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    goto/16 :goto_1

    .line 151
    :catch_4
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 156
    :cond_6
    const/4 v0, -0x2

    goto/16 :goto_0
.end method

.method public SetPlayer(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 456
    const-string v0, "HelixSubtitleService"

    const-string v1, "=========SetPlayer========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    .line 458
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mVideoWidth:I

    .line 460
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcn/real/device/HelixSubtitleService;->mVideoHeight:I

    .line 462
    :cond_0
    return-void
.end method

.method public SetView(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 536
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    .line 537
    iget-object v1, p0, Lcn/real/device/HelixSubtitleService;->mDisplayView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 538
    const/4 v0, -0x3

    .line 539
    const-string v1, "HelixSubtitleService"

    const-string v2, "####SubTitle DisplayView not defined yet!####"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    return v0
.end method
