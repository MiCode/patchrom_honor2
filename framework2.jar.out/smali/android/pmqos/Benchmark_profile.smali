.class public Landroid/pmqos/Benchmark_profile;
.super Landroid/pmqos/Pmqos;
.source "Benchmark_profile.java"


# instance fields
.field private BENCHMARK_CPU_NUMBER_LOCK_CLOSE:I

.field private BENCHMARK_CPU_NUMBER_LOCK_OPEN:I

.field private fd:I

.field private m_scene:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 6
    const v0, 0xfffffff

    iput v0, p0, Landroid/pmqos/Benchmark_profile;->BENCHMARK_CPU_NUMBER_LOCK_OPEN:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Landroid/pmqos/Benchmark_profile;->BENCHMARK_CPU_NUMBER_LOCK_CLOSE:I

    .line 10
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Landroid/pmqos/Benchmark_profile;->BENCHMARK_CPU_NUMBER_LOCK_CLOSE:I

    iget v1, p0, Landroid/pmqos/Benchmark_profile;->fd:I

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 24
    iget v0, p0, Landroid/pmqos/Benchmark_profile;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 25
    iget v0, p0, Landroid/pmqos/Benchmark_profile;->m_scene:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->perform_sceneidentify_policy(IZ)V

    .line 26
    return-void
.end method

.method public pm_qos_open()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public pm_qos_read()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 17
    const-string v0, "cpu_number_lock"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Benchmark_profile;->fd:I

    .line 18
    iget v0, p0, Landroid/pmqos/Benchmark_profile;->BENCHMARK_CPU_NUMBER_LOCK_OPEN:I

    iget v1, p0, Landroid/pmqos/Benchmark_profile;->fd:I

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 19
    iput p1, p0, Landroid/pmqos/Benchmark_profile;->m_scene:I

    .line 20
    iget v0, p0, Landroid/pmqos/Benchmark_profile;->m_scene:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->perform_sceneidentify_policy(IZ)V

    .line 21
    return-void
.end method
