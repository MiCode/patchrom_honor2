.class Landroid/view/ViewRootImpl$ViewRootImplEx;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewRootImplEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;
    }
.end annotation


# static fields
.field public static final MSG_DISPATCH_POINTER_FROM_IME:I = 0x1e


# instance fields
.field private mDispatchHandler:Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootImplEx;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;-><init>(Landroid/view/ViewRootImpl$ViewRootImplEx;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplEx;->mDispatchHandler:Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;

    return-void
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl$ViewRootImplEx;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootImplEx;->sendPointerFromIMEMessage(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private sendPointerFromIMEMessage(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootImplEx;->mDispatchHandler:Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootImplEx;->mDispatchHandler:Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootImplEx$DispatchHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
