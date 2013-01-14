.class Landroid/webkit/WebViewClassic$TextSelectWindow$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$TextSelectWindow;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$TextSelectWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow$2;->this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 772
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    .line 775
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow$2;->this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow$2;->this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;

    iget-object v0, v0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 777
    const/4 v0, 0x1

    .line 780
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
