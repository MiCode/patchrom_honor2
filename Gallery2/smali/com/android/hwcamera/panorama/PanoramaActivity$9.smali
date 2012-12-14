.class Lcom/android/hwcamera/panorama/PanoramaActivity$9;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Lcom/android/hwcamera/panorama/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/panorama/PanoramaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$9;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$9;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #getter for: Lcom/android/hwcamera/panorama/PanoramaActivity;->mCaptureState:I
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$1900(Lcom/android/hwcamera/panorama/PanoramaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$9;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->showDirectionIndicators(I)V
    invoke-static {v0, p1}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$2000(Lcom/android/hwcamera/panorama/PanoramaActivity;I)V

    .line 829
    :cond_0
    return-void
.end method
