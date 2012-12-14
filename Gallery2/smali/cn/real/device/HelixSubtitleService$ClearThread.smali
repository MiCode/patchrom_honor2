.class Lcn/real/device/HelixSubtitleService$ClearThread;
.super Ljava/lang/Thread;
.source "HelixSubtitleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/real/device/HelixSubtitleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearThread"
.end annotation


# instance fields
.field private mDuration:J

.field private mIndex:J

.field final synthetic this$0:Lcn/real/device/HelixSubtitleService;


# direct methods
.method constructor <init>(Lcn/real/device/HelixSubtitleService;JJ)V
    .locals 2
    .parameter
    .parameter "index"
    .parameter "duration"

    .prologue
    const-wide/16 v0, 0x0

    .line 1080
    iput-object p1, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    .line 1077
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1075
    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->mDuration:J

    .line 1076
    iput-wide v0, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->mIndex:J

    .line 1078
    iput-wide p4, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->mDuration:J

    .line 1079
    iput-wide p2, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->mIndex:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1082
    monitor-enter p0

    .line 1084
    :try_start_0
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    const/4 v4, 0x0

    #setter for: Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z
    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$24(Lcn/real/device/HelixSubtitleService;Z)V

    .line 1085
    iget-wide v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->mDuration:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1086
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mActiveByOther:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$14(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1087
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    const/4 v4, 0x1

    #setter for: Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z
    invoke-static {v3, v4}, Lcn/real/device/HelixSubtitleService;->access$24(Lcn/real/device/HelixSubtitleService;Z)V

    .line 1093
    :cond_0
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mKeepSubtitle:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$26(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1094
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$25(Lcn/real/device/HelixSubtitleService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1095
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1096
    .local v0, data:Landroid/os/Bundle;
    const-string v3, "index"

    iget-wide v4, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->mIndex:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1097
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1098
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1099
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$25(Lcn/real/device/HelixSubtitleService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v0           #data:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    :goto_1
    return-void

    .line 1089
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mActiveBySeek:Z
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$20(Lcn/real/device/HelixSubtitleService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1090
    iget-object v3, p0, Lcn/real/device/HelixSubtitleService$ClearThread;->this$0:Lcn/real/device/HelixSubtitleService;

    #getter for: Lcn/real/device/HelixSubtitleService;->mClearSubTitleHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcn/real/device/HelixSubtitleService;->access$25(Lcn/real/device/HelixSubtitleService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1091
    :try_start_3
    monitor-exit p0

    goto :goto_1

    .line 1082
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1101
    :catch_0
    move-exception v1

    .line 1102
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
