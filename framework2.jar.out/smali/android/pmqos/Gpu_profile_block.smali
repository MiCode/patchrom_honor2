.class public Landroid/pmqos/Gpu_profile_block;
.super Landroid/pmqos/Pmqos;
.source "Gpu_profile_block.java"


# instance fields
.field private fd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    const-string v0, "gpu_profile_block"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Gpu_profile_block;->fd:I

    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/pmqos/Gpu_profile_block;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    iget v0, p0, Landroid/pmqos/Gpu_profile_block;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    iget v0, p0, Landroid/pmqos/Gpu_profile_block;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    return-void
.end method
