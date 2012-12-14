.class Lcom/android/hwcamera/hwui/ImagejustmentView$1;
.super Ljava/lang/Object;
.source "ImagejustmentView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/ImagejustmentView;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/ImagejustmentView;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;->this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 316
    int-to-float v0, p2

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 317
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;->this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;

    #getter for: Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->access$000(Lcom/android/hwcamera/hwui/ImagejustmentView;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;->this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;

    #getter for: Lcom/android/hwcamera/hwui/ImagejustmentView;->mListeners:Lcom/android/hwcamera/hwui/SuperPanel$Listeners;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->access$200(Lcom/android/hwcamera/hwui/ImagejustmentView;)Lcom/android/hwcamera/hwui/SuperPanel$Listeners;

    move-result-object v0

    const-string v1, "pref_camera_exposure_key"

    int-to-float v2, p2

    invoke-static {}, Lcom/android/hwcamera/Util;->getExposureCompensationStep()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {}, Lcom/android/hwcamera/Util;->getMinExposureCompensation()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/hwcamera/hwui/SuperPanel$Listeners;->onSharedPreferencesChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;->this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;

    #setter for: Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I
    invoke-static {v0, p2}, Lcom/android/hwcamera/hwui/ImagejustmentView;->access$002(Lcom/android/hwcamera/hwui/ImagejustmentView;I)I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 311
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;->this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;

    #getter for: Lcom/android/hwcamera/hwui/ImagejustmentView;->mImageExposure:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/ImagejustmentView;->access$100(Lcom/android/hwcamera/hwui/ImagejustmentView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/ImagejustmentView$1;->this$0:Lcom/android/hwcamera/hwui/ImagejustmentView;

    #getter for: Lcom/android/hwcamera/hwui/ImagejustmentView;->mLastExposureProgress:I
    invoke-static {v1}, Lcom/android/hwcamera/hwui/ImagejustmentView;->access$000(Lcom/android/hwcamera/hwui/ImagejustmentView;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 306
    return-void
.end method
