.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->controlsEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    iput-boolean p2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 730
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 731
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    return-void
.end method
