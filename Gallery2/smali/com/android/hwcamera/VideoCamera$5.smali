.class Lcom/android/hwcamera/VideoCamera$5;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/VideoCamera;->stopVideoRecording(ZZ)V
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
    .line 2404
    iput-object p1, p0, Lcom/android/hwcamera/VideoCamera$5;->this$0:Lcom/android/hwcamera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/hwcamera/VideoCamera$5;->this$0:Lcom/android/hwcamera/VideoCamera;

    #getter for: Lcom/android/hwcamera/VideoCamera;->mRecordingTimeRect:Lcom/android/hwcamera/hwui/RotateLayout;
    invoke-static {v0}, Lcom/android/hwcamera/VideoCamera;->access$8000(Lcom/android/hwcamera/VideoCamera;)Lcom/android/hwcamera/hwui/RotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/hwcamera/hwui/RotateLayout;->setVisibility(I)V

    .line 2408
    return-void
.end method
