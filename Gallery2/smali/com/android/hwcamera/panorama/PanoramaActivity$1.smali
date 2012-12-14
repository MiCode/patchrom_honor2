.class Lcom/android/hwcamera/panorama/PanoramaActivity$1;
.super Landroid/os/Handler;
.source "PanoramaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->clearMosaicFrameProcessorIfNeeded()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1000(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 368
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 332
    iget-object v1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->showFinalMosaic(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$400(Lcom/android/hwcamera/panorama/PanoramaActivity;Landroid/graphics/Bitmap;)V

    .line 333
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->saveHighResMosaic()V

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 339
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$500(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 341
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 344
    :pswitch_2
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 345
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mPausing:Z
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$700(Lcom/android/hwcamera/panorama/PanoramaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$800(Lcom/android/hwcamera/panorama/PanoramaActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 352
    :pswitch_3
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->onBackgroundThreadFinished()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$300(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 353
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 356
    :pswitch_4
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-virtual {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 362
    :pswitch_5
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$1;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->checkCurrentStorage()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$900(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
