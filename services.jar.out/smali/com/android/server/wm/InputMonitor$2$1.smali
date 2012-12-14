.class Lcom/android/server/wm/InputMonitor$2$1;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/InputMonitor$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/InputMonitor$2;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputMonitor$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$2$1;->this$1:Lcom/android/server/wm/InputMonitor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$2$1;->this$1:Lcom/android/server/wm/InputMonitor$2;

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$2$1;->this$1:Lcom/android/server/wm/InputMonitor$2;

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/InputMonitor;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method
