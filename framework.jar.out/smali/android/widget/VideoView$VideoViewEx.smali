.class Landroid/widget/VideoView$VideoViewEx;
.super Ljava/lang/Object;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoViewEx"
.end annotation


# instance fields
.field private mIsRTSPStreamMedia:Z

.field private mRTSPVideoHeight:I

.field private mRTSPVideoWidth:I

.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 699
    iput-object p1, p0, Landroid/widget/VideoView$VideoViewEx;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput v0, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoWidth:I

    .line 701
    iput v0, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoHeight:I

    .line 702
    iput-boolean v0, p0, Landroid/widget/VideoView$VideoViewEx;->mIsRTSPStreamMedia:Z

    .line 703
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView$VideoViewEx;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 694
    invoke-direct {p0, p1}, Landroid/widget/VideoView$VideoViewEx;->setIsRTSPStreamMedia(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/VideoView$VideoViewEx;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView$VideoViewEx;->setRTSPVideoSize(II)V

    return-void
.end method

.method private setIsRTSPStreamMedia(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 706
    if-eqz p1, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, scheme:Ljava/lang/String;
    const-string/jumbo v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".sdp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 709
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/VideoView$VideoViewEx;->mIsRTSPStreamMedia:Z

    .line 714
    .end local v0           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 711
    .restart local v0       #scheme:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/VideoView$VideoViewEx;->mIsRTSPStreamMedia:Z

    goto :goto_0
.end method

.method private setRTSPVideoSize(II)V
    .locals 1
    .parameter "videoWidth"
    .parameter "videoHeight"

    .prologue
    .line 717
    iget-boolean v0, p0, Landroid/widget/VideoView$VideoViewEx;->mIsRTSPStreamMedia:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 718
    iput p1, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoWidth:I

    .line 719
    iput p2, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoHeight:I

    .line 721
    :cond_0
    return-void
.end method


# virtual methods
.method public updateVideoSizeIfNeed()V
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Landroid/widget/VideoView$VideoViewEx;->this$0:Landroid/widget/VideoView;

    iget v0, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoWidth:I

    :goto_0
    #setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v1, v0}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 725
    iget-object v1, p0, Landroid/widget/VideoView$VideoViewEx;->this$0:Landroid/widget/VideoView;

    iget v0, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/VideoView$VideoViewEx;->mRTSPVideoHeight:I

    :goto_1
    #setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v1, v0}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 726
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$VideoViewEx;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v0

    goto :goto_0

    .line 725
    :cond_1
    iget-object v0, p0, Landroid/widget/VideoView$VideoViewEx;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v0}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v0

    goto :goto_1
.end method
