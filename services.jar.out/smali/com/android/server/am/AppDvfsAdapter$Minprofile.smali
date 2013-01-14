.class Lcom/android/server/am/AppDvfsAdapter$Minprofile;
.super Landroid/pmqos/Pmqos;
.source "AppDvfsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppDvfsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Minprofile"
.end annotation


# instance fields
.field private fd:I

.field private fd_ddr:I

.field private fd_gpu:I

.field final synthetic this$0:Lcom/android/server/am/AppDvfsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppDvfsAdapter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18
    iput-object p1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->this$0:Lcom/android/server/am/AppDvfsAdapter;

    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 14
    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    .line 15
    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    .line 16
    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    .line 19
    const-string v0, "cpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    .line 20
    const-string v0, "ddr_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    .line 21
    const-string v0, "gpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    .line 22
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    if-ltz v0, :cond_0

    .line 52
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 54
    :cond_0
    iput v1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    .line 55
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    if-ltz v0, :cond_1

    .line 56
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 58
    :cond_1
    iput v1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    .line 59
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    if-ltz v0, :cond_2

    .line 60
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 62
    :cond_2
    iput v1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    .line 63
    return-void
.end method

.method public pm_qos_open()V
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    if-gez v0, :cond_0

    .line 26
    const-string v0, "cpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    .line 28
    :cond_0
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    if-gez v0, :cond_1

    .line 29
    const-string v0, "ddr_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    .line 31
    :cond_1
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    if-gez v0, :cond_2

    .line 32
    const-string v0, "gpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    .line 34
    :cond_2
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    .line 38
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 42
    return-void
.end method

.method public pm_qos_write_ddr(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 45
    return-void
.end method

.method public pm_qos_write_gpu(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 48
    return-void
.end method
