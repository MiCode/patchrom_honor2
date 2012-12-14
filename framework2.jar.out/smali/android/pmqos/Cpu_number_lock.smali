.class public Landroid/pmqos/Cpu_number_lock;
.super Landroid/pmqos/Pmqos;
.source "Cpu_number_lock.java"


# instance fields
.field private fd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 9
    const-string v0, "cpu_number_lock"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Cpu_number_lock;->fd:I

    .line 10
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Landroid/pmqos/Cpu_number_lock;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 19
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Landroid/pmqos/Cpu_number_lock;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    .line 13
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 15
    iget v0, p0, Landroid/pmqos/Cpu_number_lock;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 16
    return-void
.end method
