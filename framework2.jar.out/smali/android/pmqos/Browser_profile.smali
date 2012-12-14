.class public Landroid/pmqos/Browser_profile;
.super Landroid/pmqos/Pmqos;
.source "Browser_profile.java"


# instance fields
.field private m_scene:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Landroid/pmqos/Browser_profile;->m_scene:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->perform_sceneidentify_policy(IZ)V

    .line 18
    return-void
.end method

.method public pm_qos_read()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 13
    iput p1, p0, Landroid/pmqos/Browser_profile;->m_scene:I

    .line 14
    iget v0, p0, Landroid/pmqos/Browser_profile;->m_scene:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->perform_sceneidentify_policy(IZ)V

    .line 15
    return-void
.end method
