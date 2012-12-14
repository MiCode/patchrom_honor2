.class Lcn/real/device/HelixSubtitleService$SyncTimerTask;
.super Ljava/util/TimerTask;
.source "HelixSubtitleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/HelixSubtitleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/real/device/HelixSubtitleService;


# direct methods
.method constructor <init>(Lcn/real/device/HelixSubtitleService;)V
    .locals 0
    .parameter

    .prologue
    .line 1135
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;->this$0:Lcn/real/device/HelixSubtitleService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1137
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClosed:Z
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$15(Lcn/real/device/HelixSubtitleService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mPaused:Z
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$27(Lcn/real/device/HelixSubtitleService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcn/real/device/HelixSubtitleService;->access$17(Lcn/real/device/HelixSubtitleService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    const-string v0, "HelixSubtitleService"

    const-string v1, "####doing OnTimeSync####"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;->this$0:Lcn/real/device/HelixSubtitleService;

    iget-object v1, p0, Lcn/real/device/HelixSubtitleService$SyncTimerTask;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcn/real/device/HelixSubtitleService;->access$17(Lcn/real/device/HelixSubtitleService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/real/device/HelixSubtitleService;->OnTimeSync(J)V

    goto :goto_0
.end method
