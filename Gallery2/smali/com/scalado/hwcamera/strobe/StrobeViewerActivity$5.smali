.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$5;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->showControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$5;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$5;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$5;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    return-void
.end method
