.class public Landroid/pmqos/Cpu_frc_profile;
.super Landroid/pmqos/Pmqos;
.source "Cpu_frc_profile.java"


# instance fields
.field private m_scene:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Landroid/pmqos/Cpu_frc_profile;->m_scene:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->perform_sceneidentify_policy(IZ)V

    .line 19
    return-void
.end method

.method public pm_qos_open()V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public pm_qos_read()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 14
    iput p1, p0, Landroid/pmqos/Cpu_frc_profile;->m_scene:I

    .line 15
    iget v0, p0, Landroid/pmqos/Cpu_frc_profile;->m_scene:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->perform_sceneidentify_policy(IZ)V

    .line 16
    return-void
.end method
