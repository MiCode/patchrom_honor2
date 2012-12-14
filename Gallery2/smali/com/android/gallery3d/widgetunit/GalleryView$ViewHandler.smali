.class Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
.super Landroid/os/Handler;
.source "GalleryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/widgetunit/GalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/widgetunit/GalleryView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/widgetunit/GalleryView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    .line 310
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 311
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 315
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 316
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 318
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #calls: Lcom/android/gallery3d/widgetunit/GalleryView;->updatePic()V
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$800(Lcom/android/gallery3d/widgetunit/GalleryView;)V

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mNotifyFlag:Z
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$900(Lcom/android/gallery3d/widgetunit/GalleryView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1000(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    invoke-virtual {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "widgetunit gallery_unit"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 325
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget_unitId_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I
    invoke-static {v2}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$300(Lcom/android/gallery3d/widgetunit/GalleryView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 326
    const-string v1, "widgetunit GalleryView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage sharedPreferences not contain mMeWidgetId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mMeWidgetId:I
    invoke-static {v3}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$300(Lcom/android/gallery3d/widgetunit/GalleryView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1000(Lcom/android/gallery3d/widgetunit/GalleryView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 333
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #calls: Lcom/android/gallery3d/widgetunit/GalleryView;->queryDatabase()V
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1200(Lcom/android/gallery3d/widgetunit/GalleryView;)V

    .line 335
    iget-object v1, p0, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->this$0:Lcom/android/gallery3d/widgetunit/GalleryView;

    #getter for: Lcom/android/gallery3d/widgetunit/GalleryView;->mViewHandler:Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;
    invoke-static {v1}, Lcom/android/gallery3d/widgetunit/GalleryView;->access$1100(Lcom/android/gallery3d/widgetunit/GalleryView;)Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/widgetunit/GalleryView$ViewHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
