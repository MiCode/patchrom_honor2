.class Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 651
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mSaveBtn:Lcom/scalado/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1500(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2200(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)V

    .line 653
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->saveRewind()V
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2300(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mOkBtn:Lcom/scalado/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2400(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->setProgressBarVisible(Z)V
    invoke-static {v0, v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$2200(Lcom/scalado/hwcamera/rewind/RewindActivity;Z)V

    .line 656
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1900(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->commit()V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mCancelBtn:Lcom/scalado/hwcamera/rewind/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1600(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/hwcamera/rewind/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 658
    const-string v0, "kangwei"

    const-string v1, "mCancelBtn clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1900(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->getCancelState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mViewer:Lcom/scalado/app/rewind/RewindViewer;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1900(Lcom/scalado/hwcamera/rewind/RewindActivity;)Lcom/scalado/app/rewind/RewindViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindViewer;->manualBackPressed()V

    .line 661
    const-string v0, "kangwei"

    const-string v1, "manualBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1800(Lcom/scalado/hwcamera/rewind/RewindActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
