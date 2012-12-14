.class public Lcom/scalado/app/rewind/RewindSession$LTWHandler;
.super Landroid/os/Handler;
.source "RewindSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LTWHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindSession;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/RewindSession;)V
    .locals 0
    .parameter

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->this$0:Lcom/scalado/app/rewind/RewindSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1141
    :goto_0
    return-void

    .line 1125
    :pswitch_0
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession;->access$2900(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onUpdateComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1128
    :pswitch_1
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession;->access$2900(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v1}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onUpdateMagnifiedComplete(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1131
    :pswitch_2
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession;->access$2900(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3000(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mScreen:Lcom/scalado/caps/screen/Screen;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession;->access$3100(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/caps/screen/Screen;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mUser:I
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3200(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)I

    move-result v1

    invoke-interface {v2, v3, v4, v1}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onScreen(Landroid/graphics/Bitmap;Lcom/scalado/caps/screen/Screen;I)V

    goto :goto_0

    .line 1135
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/app/rewind/RewindSession$LTWRequest;

    #getter for: Lcom/scalado/app/rewind/RewindSession$LTWRequest;->mOutputFilename:Ljava/lang/String;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession$LTWRequest;->access$3300(Lcom/scalado/app/rewind/RewindSession$LTWRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, filename:Ljava/lang/String;
    iget-object v1, p0, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->this$0:Lcom/scalado/app/rewind/RewindSession;

    #getter for: Lcom/scalado/app/rewind/RewindSession;->mCallback:Lcom/scalado/app/rewind/RewindSession$RewindCallback;
    invoke-static {v1}, Lcom/scalado/app/rewind/RewindSession;->access$2900(Lcom/scalado/app/rewind/RewindSession;)Lcom/scalado/app/rewind/RewindSession$RewindCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scalado/app/rewind/RewindSession$RewindCallback;->onSaved(Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllMessages()V
    .locals 1

    .prologue
    .line 1145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->removeMessages(I)V

    .line 1146
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->removeMessages(I)V

    .line 1147
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->removeMessages(I)V

    .line 1148
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/scalado/app/rewind/RewindSession$LTWHandler;->removeMessages(I)V

    .line 1149
    return-void
.end method
