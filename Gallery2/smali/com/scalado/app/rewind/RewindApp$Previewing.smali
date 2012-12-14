.class Lcom/scalado/app/rewind/RewindApp$Previewing;
.super Lcom/scalado/app/rewind/RewindApp$State;
.source "RewindApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RewindApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Previewing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/RewindApp;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RewindApp;)V
    .locals 1
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/scalado/app/rewind/RewindApp$Previewing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/app/rewind/RewindApp$State;-><init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RewindApp;Lcom/scalado/app/rewind/RewindApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RewindApp$Previewing;-><init>(Lcom/scalado/app/rewind/RewindApp;)V

    return-void
.end method


# virtual methods
.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Previewing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/RewindApp;->startPreview()V

    .line 914
    iget-object v0, p0, Lcom/scalado/app/rewind/RewindApp$Previewing;->this$0:Lcom/scalado/app/rewind/RewindApp;

    #calls: Lcom/scalado/app/rewind/RewindApp;->hideTopbar()V
    invoke-static {v0}, Lcom/scalado/app/rewind/RewindApp;->access$1700(Lcom/scalado/app/rewind/RewindApp;)V

    .line 915
    return-void
.end method
