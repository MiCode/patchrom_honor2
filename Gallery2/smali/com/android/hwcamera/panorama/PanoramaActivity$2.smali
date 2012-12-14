.class Lcom/android/hwcamera/panorama/PanoramaActivity$2;
.super Ljava/lang/Object;
.source "PanoramaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/panorama/PanoramaActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 377
    iput-object p1, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$2;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 381
    iget-object v0, p0, Lcom/android/hwcamera/panorama/PanoramaActivity$2;->this$0:Lcom/android/hwcamera/panorama/PanoramaActivity;

    #calls: Lcom/android/hwcamera/panorama/PanoramaActivity;->resetToPreview()V
    invoke-static {v0}, Lcom/android/hwcamera/panorama/PanoramaActivity;->access$600(Lcom/android/hwcamera/panorama/PanoramaActivity;)V

    .line 382
    return-void
.end method
