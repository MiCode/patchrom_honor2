.class public Lcom/huawei/android/widget/VideoViewEx;
.super Ljava/lang/Object;
.source "VideoViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSTCallback(Landroid/widget/VideoView;Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;)V
    .locals 2
    .parameter "obj"
    .parameter "call"

    .prologue
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
