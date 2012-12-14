.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyThumbObjectLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1033
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 1038
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1039
    .local v3, viewIndex:I
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 1040
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1042
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1045
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #setter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v5, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2402(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)I

    .line 1047
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/scalado/hwcamera/strobe/SessionStore;->setBackgroundIndex(I)V

    .line 1048
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020025

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1050
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1053
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 1054
    .local v1, object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mFrameLayout:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1055
    .local v2, objectView:Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1056
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->setVisible(Z)V

    .line 1057
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V
    invoke-static {v5, v3}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)V

    .line 1059
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 1060
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4200(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 1061
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyThumbObjectLongClickListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .end local v1           #object:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    .end local v2           #objectView:Landroid/view/View;
    :goto_0
    return v4

    .line 1062
    :catch_0
    move-exception v0

    .line 1064
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v4, v5

    .line 1068
    goto :goto_0
.end method
