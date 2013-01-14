.class Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$ViewRootImplEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;


# direct methods
.method private constructor <init>(Landroid/view/ViewRootImpl$ViewRootImplEx;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$ViewRootImplEx;Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;-><init>(Landroid/view/ViewRootImpl$ViewRootImplEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v9, 0x1e

    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v9, v10, :cond_6

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .local v2, event:Landroid/view/MotionEvent;
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_7

    move v0, v4

    .local v0, callWhenDone:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v9, v9, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v9, v9, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v9, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v3, 0x0

    .local v3, handled:Z
    :try_start_0
    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v9, v9, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v9, :cond_5

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v9, v9, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v9, v9, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v9, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_8

    .local v4, isDown:Z
    :goto_1
    if-eqz v4, :cond_1

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_1
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget v8, v8, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v9, v9, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget v9, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .local v7, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v8, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v9, v9, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v9, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v8, v9, v7}, Landroid/view/IWindowSession;->getWindowFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_3

    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .local v5, newX:F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v6, v8, v9

    .local v6, newY:F
    invoke-virtual {v2, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .end local v5           #newX:F
    .end local v6           #newY:F
    :cond_4
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->this$1:Landroid/view/ViewRootImpl$ViewRootImplEx;

    iget-object v8, v8, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .end local v4           #isDown:Z
    .end local v7           #winFrame:Landroid/graphics/Rect;
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .end local v0           #callWhenDone:Z
    .end local v2           #event:Landroid/view/MotionEvent;
    .end local v3           #handled:Z
    :cond_6
    return-void

    .restart local v2       #event:Landroid/view/MotionEvent;
    :cond_7
    move v0, v8

    goto/16 :goto_0

    .restart local v0       #callWhenDone:Z
    .restart local v3       #handled:Z
    :cond_8
    move v4, v8

    goto :goto_1

    .restart local v4       #isDown:Z
    .restart local v7       #winFrame:Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "ViewRootImpl"

    const-string v9, "Get window position failed."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #isDown:Z
    .end local v7           #winFrame:Landroid/graphics/Rect;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    throw v8
.end method
