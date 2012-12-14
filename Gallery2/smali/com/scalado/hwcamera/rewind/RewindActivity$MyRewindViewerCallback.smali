.class Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;
.super Ljava/lang/Object;
.source "RewindActivity.java"

# interfaces
.implements Lcom/scalado/app/rewind/RewindViewer$RewindViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/rewind/RewindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyRewindViewerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Lcom/scalado/hwcamera/rewind/RewindActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;)V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 2

    .prologue
    .line 516
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onAllImagesAdded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public onFaceDetecionComplete(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    new-instance v1, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback$1;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;I)V

    invoke-virtual {v0, v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 529
    return-void
.end method

.method public onNewFaceUpdated()V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public onSaved(Ljava/lang/String;)V
    .locals 5
    .parameter "filename"

    .prologue
    .line 535
    const-string v1, "RewindActivity"

    const-string v2, "Image saved. Informing MediaStore..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v1, Lcom/scalado/hwcamera/rewind/RewindActivity$MediaScannerNotifier;

    iget-object v2, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    iget-object v3, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "image/jpeg"

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/scalado/hwcamera/rewind/RewindActivity$MediaScannerNotifier;-><init>(Lcom/scalado/hwcamera/rewind/RewindActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #calls: Lcom/scalado/hwcamera/rewind/RewindActivity;->addToMediaStore(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1700(Lcom/scalado/hwcamera/rewind/RewindActivity;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    invoke-virtual {v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 541
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/scalado/hwcamera/rewind/RewindActivity;->setResult(ILandroid/content/Intent;)V

    .line 545
    iget-object v1, p0, Lcom/scalado/hwcamera/rewind/RewindActivity$MyRewindViewerCallback;->this$0:Lcom/scalado/hwcamera/rewind/RewindActivity;

    #getter for: Lcom/scalado/hwcamera/rewind/RewindActivity;->mMyHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/scalado/hwcamera/rewind/RewindActivity;->access$1800(Lcom/scalado/hwcamera/rewind/RewindActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    return-void
.end method
