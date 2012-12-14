.class Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;
.super Landroid/os/Handler;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession$LooperThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindSession$LooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindSession$LooperThread;Lcom/scalado/app/rewind/RewindSession$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;-><init>(Lcom/scalado/app/rewind/RewindSession$LooperThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 1190
    const/4 v2, 0x0

    .line 1191
    .local v2, params:Lcom/scalado/app/rewind/RewindSession$LTWParams;
    const/4 v5, 0x0

    .line 1192
    .local v5, screenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    const/4 v1, 0x0

    .line 1193
    .local v1, magParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;
    const/4 v0, 0x0

    .line 1194
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1195
    .local v6, size:Lcom/scalado/base/Size;
    const/4 v7, -0x1

    .line 1198
    .local v7, user:I
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1205
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_2

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    if-eqz v8, :cond_2

    .line 1206
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    .line 1207
    .local v3, req:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mParams:Lcom/scalado/app/rewind/RewindSession$LTWParams;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3500(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/app/rewind/RewindSession$LTWParams;

    move-result-object v2

    .line 1208
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mScreenParams:Lcom/scalado/app/rewind/RewindSession$ScreenParams;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3600(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/app/rewind/RewindSession$ScreenParams;

    move-result-object v5

    .line 1209
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mMagParams:Lcom/scalado/app/rewind/RewindSession$MagnifierParams;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3700(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/app/rewind/RewindSession$MagnifierParams;

    move-result-object v1

    .line 1210
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3000(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1211
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mHasUser:Z
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3800(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1212
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mUser:I
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3200(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I

    move-result v7

    .line 1214
    :cond_0
    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mScreenSize:Lcom/scalado/base/Size;
    invoke-static {v3}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3900(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Lcom/scalado/base/Size;

    move-result-object v6

    .line 1222
    .end local v3           #req:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    :sswitch_0
    const-string v8, "RewindSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget v11, p1, Landroid/os/Message;->what:I

    #calls: Lcom/scalado/app/rewind/RewindSession$LooperThread;->whatName(I)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/scalado/app/rewind/RewindSession$LooperThread;->access$4000(Lcom/scalado/app/rewind/RewindSession$LooperThread;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_1

    .line 1275
    :cond_1
    :goto_0
    return-void

    .line 1216
    :cond_2
    const-string v8, "RewindSession"

    const-string v9, "Bad object."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1226
    :sswitch_1
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->updateRequest(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RewindSession;->access$4100(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    .line 1227
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mSrcMgr:Lcom/scalado/app/rewind/SourceManager;
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4200(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/SourceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/app/rewind/SourceManager;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 1228
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4300(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->removeAllMessages()V

    .line 1229
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1230
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->recycle()V
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4400(Lcom/scalado/app/rewind/RewindSession;)V

    .line 1231
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$2900(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onScreenChanged(Lcom/scalado/caps/screen/Screen;)V

    goto :goto_0

    .line 1233
    :cond_3
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->renderRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    invoke-static {v8, v5, v0}, Lcom/scalado/app/rewind/RewindSession;->access$4500(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1237
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 1238
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->updateRequest(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RewindSession;->access$4100(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    .line 1239
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->asyncRender(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V
    invoke-static {v8, v5, v1, v0}, Lcom/scalado/app/rewind/RewindSession;->access$4600(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/app/rewind/RewindSession$MagnifierParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1243
    :sswitch_3
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->renderRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V
    invoke-static {v8, v5, v0}, Lcom/scalado/app/rewind/RewindSession;->access$4500(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1246
    :sswitch_4
    const-string v8, "RewindSession"

    const-string v9, "Committing."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mLclTw:Lcom/scalado/caps/localtimewarp/LocalTimeWarp;
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4700(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/caps/localtimewarp/LocalTimeWarp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/caps/localtimewarp/LocalTimeWarp;->commit()V

    .line 1248
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4808(Lcom/scalado/app/rewind/RewindSession;)I

    .line 1249
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    const/4 v9, 0x0

    #setter for: Lcom/scalado/app/rewind/RewindSession;->mUpdates:I
    invoke-static {v8, v9}, Lcom/scalado/app/rewind/RewindSession;->access$4902(Lcom/scalado/app/rewind/RewindSession;I)I

    goto/16 :goto_0

    .line 1252
    :sswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 1253
    if-eqz v2, :cond_4

    .line 1254
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->updateRequest(Lcom/scalado/app/rewind/RewindSession$LTWParams;)V
    invoke-static {v8, v2}, Lcom/scalado/app/rewind/RewindSession;->access$4100(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$LTWParams;)V

    .line 1256
    :cond_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    .line 1257
    .local v4, request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3300(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Ljava/lang/String;

    move-result-object v9

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mJpegQuality:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$5000(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I

    move-result v10

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mThumbnailWidth:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$5100(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I

    move-result v11

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mThumbnailHeight:I
    invoke-static {v4}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$5200(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I

    move-result v12

    #calls: Lcom/scalado/app/rewind/RewindSession;->renderOutput(Ljava/lang/String;III)V
    invoke-static {v8, v9, v10, v11, v12}, Lcom/scalado/app/rewind/RewindSession;->access$5300(Lcom/scalado/app/rewind/RewindSession;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 1263
    .end local v4           #request:Lcom/scalado/app/rewind/RewindSession$LTWRequest;
    :sswitch_6
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->getScreenRequest(Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V
    invoke-static {v8, v5, v6, v7}, Lcom/scalado/app/rewind/RewindSession;->access$5400(Lcom/scalado/app/rewind/RewindSession;Lcom/scalado/app/rewind/RewindSession$ScreenParams;Lcom/scalado/base/Size;I)V

    goto/16 :goto_0

    .line 1266
    :sswitch_7
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->resetScreenRequest()V
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$5500(Lcom/scalado/app/rewind/RewindSession;)V

    goto/16 :goto_0

    .line 1269
    :sswitch_8
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallbackHandler:Lcom/scalado/app/rewind/RewindSession$LTWHandler;
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4300(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$LTWHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->removeAllMessages()V

    .line 1270
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1271
    iget-object v8, p0, Lcom/scalado/app/rewind/RewindSession$LooperThread$MyHandler;->this$1:Lcom/scalado/app/rewind/RewindSession$LooperThread;

    iget-object v8, v8, Lcom/scalado/app/rewind/RewindSession$LooperThread;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #calls: Lcom/scalado/app/rewind/RewindSession;->recycle()V
    invoke-static {v8}, Lcom/scalado/app/rewind/RewindSession;->access$4400(Lcom/scalado/app/rewind/RewindSession;)V

    goto/16 :goto_0

    .line 1198
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x41 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch

    .line 1223
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_4
        0x40 -> :sswitch_6
        0x41 -> :sswitch_7
        0x80 -> :sswitch_5
        0x200 -> :sswitch_8
    .end sparse-switch
.end method
