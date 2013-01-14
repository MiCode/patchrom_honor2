.class Landroid/webkit/WebViewClassic$TextSelectWindow$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic$TextSelectWindow;->createPopupDialog()V
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
    .line 749
    iput-object p1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow$1;->this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 752
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 754
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow$1;->this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;

    iget-object v1, v1, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 761
    :goto_0
    return v0

    .line 756
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x52

    if-ne p2, v1, :cond_1

    .line 758
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow$1;->this$1:Landroid/webkit/WebViewClassic$TextSelectWindow;

    iget-object v1, v1, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 761
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
