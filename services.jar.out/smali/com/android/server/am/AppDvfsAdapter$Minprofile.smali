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

    iput-object p1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->this$0:Lcom/android/server/am/AppDvfsAdapter;

    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    const-string v0, "cpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    const-string v0, "ddr_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    const-string v0, "gpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    :cond_0
    iput v1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    :cond_1
    iput v1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    :cond_2
    iput v1, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    return-void
.end method

.method public pm_qos_open()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    if-gez v0, :cond_0

    const-string v0, "cpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    :cond_0
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    if-gez v0, :cond_1

    const-string v0, "ddr_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    :cond_1
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    if-gez v0, :cond_2

    const-string v0, "gpu_minprofile"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    :cond_2
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    return-void
.end method

.method public pm_qos_write_ddr(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_ddr:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    return-void
.end method

.method public pm_qos_write_gpu(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    iget v0, p0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->fd_gpu:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    return-void
.end method
