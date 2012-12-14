.class public Landroid/pmqos/Pmqos;
.super Ljava/lang/Object;
.source "Pmqos.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native perform_sceneidentify_policy(IZ)V
.end method

.method public static native pm_qos_close(I)V
.end method

.method public static native pm_qos_open(Ljava/lang/String;)I
.end method

.method public static native pm_qos_open_path(Ljava/lang/String;)I
.end method

.method public static native pm_qos_read(I)I
.end method

.method public static native pm_qos_write(II)I
.end method

.method public static native pm_qos_write_dec(II)I
.end method
