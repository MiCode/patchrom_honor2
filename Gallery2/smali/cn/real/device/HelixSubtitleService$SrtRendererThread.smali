.class Lcn/real/device/HelixSubtitleService$SrtRendererThread;
.super Ljava/lang/Thread;
.source "HelixSubtitleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/HelixSubtitleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SrtRendererThread"
.end annotation


# instance fields
.field private mDur:J

.field private mGapdPos:J

.field private mHandler:Landroid/os/Handler;

.field private mNextPosTmp:J

.field private mSrtContent:Lcn/real/device/srtparser/SrtContent;

.field final synthetic this$0:Lcn/real/device/HelixSubtitleService;


# direct methods
.method public constructor <init>(Lcn/real/device/HelixSubtitleService;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 559
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    .line 557
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 551
    iput-object v2, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mHandler:Landroid/os/Handler;

    .line 552
    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mNextPosTmp:J

    .line 553
    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mGapdPos:J

    .line 554
    iput-object v2, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    .line 555
    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mDur:J

    .line 558
    iput-object p2, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const-wide/16 v7, 0x1

    .line 563
    :goto_0
    :try_start_0
    const-string v3, "HelixSubtitleService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#############Enter SrtRendererThread############mNextPos: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$10()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    const/4 v4, 0x0

    #setter for: Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z
    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$11(Lcn/real/device/HelixSubtitleService;Z)V

    .line 565
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    const/4 v4, 0x0

    #setter for: Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z
    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$12(Lcn/real/device/HelixSubtitleService;Z)V

    .line 566
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$13()Lcn/real/device/srtparser/JSrtParser;

    move-result-object v3

    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$10()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcn/real/device/srtparser/JSrtParser;->GetNextSRTSubTitle(J)Lcn/real/device/srtparser/SrtContent;

    move-result-object v3

    iput-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    .line 567
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    if-nez v3, :cond_4

    .line 568
    const-string v3, "HelixSubtitleService"

    const-string v4, "####No SubTitle Found, So Wait and Fetch Again####"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :try_start_1
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$13()Lcn/real/device/srtparser/JSrtParser;

    move-result-object v3

    invoke-virtual {v3}, Lcn/real/device/srtparser/JSrtParser;->ParserDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 574
    :goto_1
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$14(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClosed:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$15(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 575
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :cond_1
    :goto_2
    const-string v3, "HelixSubtitleService"

    const-string v4, "##################Quit####################"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void

    .line 573
    :cond_2
    const-wide/16 v3, 0xc8

    :try_start_2
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 569
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 619
    :catch_0
    move-exception v1

    .line 620
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HelixSubtitleService"

    const-string v4, "############Exception in SrtRendererThread############"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 578
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    invoke-static {}, Lcn/real/device/HelixSubtitleService;->access$10()J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$16(J)V

    .line 579
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 583
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$17(Lcn/real/device/HelixSubtitleService;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 585
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    iget-object v4, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcn/real/device/HelixSubtitleService;->access$17(Lcn/real/device/HelixSubtitleService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    #setter for: Lcn/real/device/HelixSubtitleService;->mLocalPos:J
    invoke-static {v3, v4, v5}, Lcn/real/device/HelixSubtitleService;->access$18(Lcn/real/device/HelixSubtitleService;J)V

    .line 586
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    invoke-virtual {v3}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mNextPosTmp:J

    .line 587
    iget-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mNextPosTmp:J

    iget-object v5, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mLocalPos:J
    invoke-static {v5}, Lcn/real/device/HelixSubtitleService;->access$19(Lcn/real/device/HelixSubtitleService;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mGapdPos:J

    .line 588
    iget-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mGapdPos:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_9

    .line 589
    iget-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mNextPosTmp:J

    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$16(J)V

    .line 590
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    invoke-virtual {v3}, Lcn/real/device/srtparser/SrtContent;->GetDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mDur:J

    .line 591
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 592
    :try_start_6
    iget-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mGapdPos:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 593
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$14(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClosed:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$15(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 594
    :cond_5
    monitor-exit p0

    goto/16 :goto_2

    .line 591
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 596
    :cond_6
    :try_start_8
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$20(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 597
    monitor-exit p0

    goto/16 :goto_0

    .line 591
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 606
    :goto_3
    :try_start_9
    iget-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mDur:J

    cmp-long v3, v3, v9

    if-gez v3, :cond_8

    .line 607
    const-wide/16 v3, 0x3e8

    iput-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mDur:J

    .line 608
    :cond_8
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 610
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "index"

    iget-wide v4, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mNextPosTmp:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 611
    const-string v3, "subtitle"

    iget-object v4, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    invoke-virtual {v4}, Lcn/real/device/srtparser/SrtContent;->GetSubTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "duration"

    iget-wide v4, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mDur:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 613
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 614
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 615
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 616
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    invoke-virtual {v3}, Lcn/real/device/srtparser/SrtContent;->GetIndex()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$21(J)V

    .line 617
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    invoke-virtual {v3}, Lcn/real/device/srtparser/SrtContent;->GetDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$22(J)V

    goto/16 :goto_0

    .line 603
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_9
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mLocalPos:J
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$19(Lcn/real/device/HelixSubtitleService;)J

    move-result-wide v3

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$16(J)V

    .line 604
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mSrtContent:Lcn/real/device/srtparser/SrtContent;

    invoke-virtual {v3}, Lcn/real/device/srtparser/SrtContent;->GetDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mGapdPos:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcn/real/device/HelixSubtitleService$SrtRendererThread;->mDur:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_3
.end method
