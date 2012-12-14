.class public Lcom/scalado/app/rewind/AutoSession$ToUiHandler;
.super Landroid/os/Handler;
.source "AutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method public constructor <init>(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 174
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 176
    :sswitch_0
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onAllImagesAdded()V

    goto :goto_0

    .line 181
    :sswitch_1
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onOutputted(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :sswitch_2
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #setter for: Lcom/scalado/app/rewind/AutoSession;->mLtwCompleted:Z
    invoke-static {v1, v3}, Lcom/scalado/app/rewind/AutoSession;->access$302(Lcom/scalado/app/rewind/AutoSession;Z)Z

    .line 187
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/base/Image;

    invoke-interface {v2, v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onScreenRendered(Lcom/scalado/base/Image;)V

    goto :goto_0

    .line 192
    :sswitch_3
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/base/Image;

    invoke-interface {v2, v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onScreenRendered(Lcom/scalado/base/Image;)V

    goto :goto_0

    .line 197
    :sswitch_4
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/base/Image;

    invoke-interface {v2, v1}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onSourceImage(Lcom/scalado/base/Image;)V

    goto :goto_0

    .line 202
    :sswitch_5
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, [Ljava/util/ArrayList;

    .line 204
    .local v0, lists:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$ToUiHandler;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$200(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;->onRects(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x80 -> :sswitch_2
        0x81 -> :sswitch_0
        0x8c -> :sswitch_1
        0xa0 -> :sswitch_5
    .end sparse-switch
.end method
