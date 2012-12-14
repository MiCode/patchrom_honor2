.class public Landroid/pmqos/Cpu_dma_latency;
.super Landroid/pmqos/Pmqos;
.source "Cpu_dma_latency.java"


# instance fields
.field private fd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 7
    const-string v0, "cpu_dma_latency"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Cpu_dma_latency;->fd:I

    .line 8
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Landroid/pmqos/Cpu_dma_latency;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 17
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Landroid/pmqos/Cpu_dma_latency;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    .line 11
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 13
    iget v0, p0, Landroid/pmqos/Cpu_dma_latency;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 14
    return-void
.end method
