.class Lcom/android/hwcamera/VideoCamera$7;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->delayedOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3068
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$7;->this$0:Lcom/android/hwcamera/VideoCamera;

    #calls: Lcom/android/hwcamera/VideoCamera;->updateAndShowStorageHint()V
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$3400(Lcom/android/hwcamera/VideoCamera;)V

    .line 3069
    return-void
.end method
