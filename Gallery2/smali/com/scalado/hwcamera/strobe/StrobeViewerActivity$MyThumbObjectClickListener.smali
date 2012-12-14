.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;
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
    name = "MyThumbObjectClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1013
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1017
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 1019
    .local v0, object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v4}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1024
    .local v1, objectView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1025
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setVisible(Z)V

    .line 1026
    invoke-virtual {v0}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v2, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V
    invoke-static {v2}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1025
    goto :goto_1

    .line 1026
    :cond_2
    const/4 v3, 0x4

    goto :goto_2
.end method
