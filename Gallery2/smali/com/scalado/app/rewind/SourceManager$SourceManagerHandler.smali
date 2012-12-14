.class Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;
.super Landroid/os/Handler;
.source "SourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/SourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/SourceManager;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/SourceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;-><init>(Lcom/scalado/app/rewind/SourceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 109
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;

    .line 111
    .local v1, entry:Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    :try_start_0
    invoke-virtual {v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v3

    .line 135
    .local v3, image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$000(Lcom/scalado/app/rewind/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 138
    .local v5, weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;

    .line 139
    .local v4, listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    if-nez v4, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 147
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    .restart local v3       #image:Lcom/scalado/base/Image;
    .restart local v4       #listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6, v3}, Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;->onBackgroundReady(ILcom/scalado/base/Image;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 174
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    :pswitch_2
    :try_start_2
    invoke-virtual {v1}, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->getBackgroundImage()Lcom/scalado/base/Image;

    move-result-object v3

    .line 175
    .restart local v3       #image:Lcom/scalado/base/Image;
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$000(Lcom/scalado/app/rewind/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 178
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;

    .line 179
    .restart local v4       #listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    if-nez v4, :cond_3

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 187
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    .end local v3           #image:Lcom/scalado/base/Image;
    .end local v4           #listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    .end local v5           #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    :catch_1
    move-exception v0

    .line 188
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$200(Lcom/scalado/app/rewind/SourceManager;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;->mIsCompleted:Z

    .line 192
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #getter for: Lcom/scalado/app/rewind/SourceManager;->mListeners:Ljava/util/Vector;
    invoke-static {v6}, Lcom/scalado/app/rewind/SourceManager;->access$000(Lcom/scalado/app/rewind/SourceManager;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 193
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 195
    .restart local v5       #weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;

    .line 196
    .restart local v4       #listener:Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;
    if-nez v4, :cond_4

    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 183
    .restart local v3       #image:Lcom/scalado/base/Image;
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6, v3}, Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;->onBackgroundReady(ILcom/scalado/base/Image;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 200
    .end local v3           #image:Lcom/scalado/base/Image;
    :cond_4
    iget-object v6, p0, Lcom/scalado/app/rewind/SourceManager$SourceManagerHandler;->this$0:Lcom/scalado/app/rewind/SourceManager;

    #calls: Lcom/scalado/app/rewind/SourceManager;->getEntryIndex(Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I
    invoke-static {v6, v1}, Lcom/scalado/app/rewind/SourceManager;->access$100(Lcom/scalado/app/rewind/SourceManager;Lcom/scalado/app/rewind/SourceManager$SourceManagerEntry;)I

    move-result v6

    invoke-interface {v4, v6}, Lcom/scalado/app/rewind/SourceManager$SourceManagerListener;->onEntryReady(I)V

    goto :goto_3

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
