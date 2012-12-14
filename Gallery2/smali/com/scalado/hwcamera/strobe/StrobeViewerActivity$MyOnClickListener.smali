.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1323
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->cancelStrobe(Landroid/view/View;)V

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$3700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyOnClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->saveImages(Landroid/view/View;)V

    goto :goto_0
.end method
