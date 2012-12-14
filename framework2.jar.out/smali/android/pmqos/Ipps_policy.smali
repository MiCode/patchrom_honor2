.class public Landroid/pmqos/Ipps_policy;
.super Landroid/pmqos/Pmqos;
.source "Ipps_policy.java"


# static fields
.field public static final POLICY_NORMAL:I = 0x1

.field public static final POLICY_PERFORMANCE:I = 0x2

.field public static final POLICY_POWERSAVE:I = 0x0

.field public static final POLICY_SPECIAL01:I = 0x3

.field public static final POLICY_SPECIAL02:I = 0x4

.field public static final POLICY_SPECIAL03:I = 0x5

.field public static final POLICY_SPECIAL04:I = 0x6

.field public static final POLICY_SPECIAL05:I = 0x7

.field public static final POLICY_SPECIAL06:I = 0x8

.field public static final POLICY_SPECIAL07:I = 0x9

.field public static final POLICY_SPECIAL08:I = 0xa

.field public static final POLICY_SPECIAL09:I = 0xb

.field public static final POLICY_SPECIAL0A:I = 0xc

.field public static final POLICY_SPECIAL0B:I = 0xd


# instance fields
.field private fd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/pmqos/Pmqos;-><init>()V

    .line 23
    const-string v0, "ipps_policy"

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_open(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pmqos/Ipps_policy;->fd:I

    .line 24
    return-void
.end method


# virtual methods
.method public pm_qos_close()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget v1, p0, Landroid/pmqos/Ipps_policy;->fd:I

    invoke-static {v0, v1}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 36
    iget v0, p0, Landroid/pmqos/Ipps_policy;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_close(I)V

    .line 37
    return-void
.end method

.method public pm_qos_read()V
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Landroid/pmqos/Ipps_policy;->fd:I

    invoke-static {v0}, Landroid/pmqos/Pmqos;->pm_qos_read(I)I

    .line 28
    return-void
.end method

.method public pm_qos_write(I)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 31
    iget v0, p0, Landroid/pmqos/Ipps_policy;->fd:I

    invoke-static {p1, v0}, Landroid/pmqos/Pmqos;->pm_qos_write(II)I

    .line 32
    return-void
.end method
