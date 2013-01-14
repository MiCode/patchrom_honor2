.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccLoadedHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;-><init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1045
    const/16 v0, 0x3e9

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx$IccLoadedHandler;->this$1:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->handleIccLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;->access$1500(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$KeyguardUpdateMonitorEx;)V

    .line 1048
    :cond_0
    return-void
.end method
