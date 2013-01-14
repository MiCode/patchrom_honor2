.class Lcom/android/server/am/AppDvfsAdapter$1;
.super Landroid/os/Handler;
.source "AppDvfsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppDvfsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppDvfsAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppDvfsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/am/AppDvfsAdapter$1;->this$0:Lcom/android/server/am/AppDvfsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter$1;->this$0:Lcom/android/server/am/AppDvfsAdapter;

    #getter for: Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;
    invoke-static {v0}, Lcom/android/server/am/AppDvfsAdapter;->access$000(Lcom/android/server/am/AppDvfsAdapter;)Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_close()V

    .line 76
    :cond_0
    return-void
.end method
