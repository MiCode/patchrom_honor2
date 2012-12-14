.class Lcom/scalado/app/ui/UiManager$AnimationTimerTask;
.super Ljava/util/TimerTask;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/ui/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationTimerTask"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/scalado/app/ui/UiManager;


# direct methods
.method private constructor <init>(Lcom/scalado/app/ui/UiManager;)V
    .locals 1
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 674
    const-string v0, "AnimationTimerTask"

    iput-object v0, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/ui/UiManager;Lcom/scalado/app/ui/UiManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;-><init>(Lcom/scalado/app/ui/UiManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 681
    :try_start_0
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$300(Lcom/scalado/app/ui/UiManager;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 683
    .local v4, t:J
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #setter for: Lcom/scalado/app/ui/UiManager;->mCurTime:J
    invoke-static {v7, v4, v5}, Lcom/scalado/app/ui/UiManager;->access$402(Lcom/scalado/app/ui/UiManager;J)J

    .line 684
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mTouchDown:Z
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$500(Lcom/scalado/app/ui/UiManager;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mLstDrawT:J
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$600(Lcom/scalado/app/ui/UiManager;)J

    move-result-wide v9

    sub-long v9, v4, v9

    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mAnimIvl:J
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$700(Lcom/scalado/app/ui/UiManager;)J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-ltz v7, :cond_5

    .line 688
    :cond_0
    const/4 v1, 0x0

    .line 689
    .local v1, doUpdate:Z
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mListener:Lcom/scalado/app/ui/UiManager$UiManagerListener;
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$800(Lcom/scalado/app/ui/UiManager;)Lcom/scalado/app/ui/UiManager$UiManagerListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/scalado/app/ui/UiManager$UiManagerListener;->needsDrawing()Z

    move-result v0

    .line 690
    .local v0, doDraw:Z
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mWidgets:Ljava/util/Vector;
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$900(Lcom/scalado/app/ui/UiManager;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/app/ui/Widget;

    .line 691
    .local v6, w:Lcom/scalado/app/ui/Widget;
    invoke-virtual {v6}, Lcom/scalado/app/ui/Widget;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 692
    invoke-virtual {v6}, Lcom/scalado/app/ui/Widget;->isMoving()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 693
    invoke-virtual {v6, v4, v5}, Lcom/scalado/app/ui/Widget;->update(J)V

    .line 694
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    invoke-virtual {v7, v6}, Lcom/scalado/app/ui/UiManager;->setDirty(Lcom/scalado/app/ui/Widget;)V

    .line 695
    const/4 v0, 0x1

    .line 697
    :cond_2
    invoke-virtual {v6}, Lcom/scalado/app/ui/Widget;->isDirty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 698
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    .end local v6           #w:Lcom/scalado/app/ui/Widget;
    :cond_3
    if-nez v0, :cond_4

    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mDirty:Z
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$1000(Lcom/scalado/app/ui/UiManager;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 703
    :cond_4
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #calls: Lcom/scalado/app/ui/UiManager;->updateDirtyArea()V
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$1100(Lcom/scalado/app/ui/UiManager;)V

    .line 704
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #calls: Lcom/scalado/app/ui/UiManager;->privateDraw()Z
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$1200(Lcom/scalado/app/ui/UiManager;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 705
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    const/4 v9, 0x0

    #setter for: Lcom/scalado/app/ui/UiManager;->mDirty:Z
    invoke-static {v7, v9}, Lcom/scalado/app/ui/UiManager;->access$1002(Lcom/scalado/app/ui/UiManager;Z)Z

    .line 714
    .end local v0           #doDraw:Z
    .end local v1           #doUpdate:Z
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    monitor-exit v8

    .line 719
    .end local v4           #t:J
    :goto_2
    return-void

    .line 709
    .restart local v0       #doDraw:Z
    .restart local v1       #doUpdate:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #t:J
    :cond_6
    const-string v7, "AnimationTimerTask"

    const-string v9, "DrawingTimerTask task is going to wait"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v7, p0, Lcom/scalado/app/ui/UiManager$AnimationTimerTask;->this$0:Lcom/scalado/app/ui/UiManager;

    #getter for: Lcom/scalado/app/ui/UiManager;->mSyncObj:Ljava/lang/Object;
    invoke-static {v7}, Lcom/scalado/app/ui/UiManager;->access$300(Lcom/scalado/app/ui/UiManager;)Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v9, v10}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 714
    .end local v0           #doDraw:Z
    .end local v1           #doUpdate:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #t:J
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 715
    :catch_0
    move-exception v2

    .line 716
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AnimationTimerTask"

    const-string v8, "Exception in timer task!"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
