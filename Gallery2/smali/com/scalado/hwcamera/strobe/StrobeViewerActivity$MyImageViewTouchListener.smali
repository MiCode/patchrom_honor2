.class Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;
.super Ljava/lang/Object;
.source "StrobeViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyImageViewTouchListener"
.end annotation


# instance fields
.field private mChildRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;


# direct methods
.method private constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->mChildRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;-><init>(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v9, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    .line 1077
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1078
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 1143
    :cond_0
    :goto_0
    return v4

    .line 1080
    :pswitch_0
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    #setter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastX:F
    invoke-static {v5, v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4302(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;F)F

    .line 1081
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    #setter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastY:F
    invoke-static {v5, v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4402(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;F)F

    goto :goto_0

    .line 1084
    :pswitch_1
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastX:F
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4300(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastY:F
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_0

    .line 1088
    :cond_1
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    #setter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastX:F
    invoke-static {v6, v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4302(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;F)F

    .line 1089
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    #setter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mLastY:F
    invoke-static {v6, v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4402(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;F)F

    .line 1093
    :pswitch_2
    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4500(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)[I

    move-result-object v6

    if-nez v6, :cond_2

    move v4, v5

    .line 1094
    goto :goto_0

    .line 1097
    :cond_2
    const/4 v2, 0x0

    .line 1098
    .local v2, nearestIndex:I
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->getNearestIndex(Landroid/view/View;II)I
    invoke-static {v5, p1, v6, v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;Landroid/view/View;II)I

    move-result v2

    .line 1099
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectViews:Ljava/util/List;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4700(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjectFocusOrder:[I
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4500(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)[I

    move-result-object v6

    aget v6, v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1101
    .local v0, ds:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;

    .line 1102
    .local v3, tag:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 1105
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1107
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1109
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    #setter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v5, v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2402(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)I

    .line 1110
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mSessionStore:Lcom/scalado/hwcamera/strobe/SessionStore;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$800(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Lcom/scalado/hwcamera/strobe/SessionStore;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/scalado/hwcamera/strobe/SessionStore;->setBackgroundIndex(I)V

    .line 1111
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020025

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1113
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mBottomBarContent:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mStrobeObjects:Ljava/util/List;
    invoke-static {v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$1600(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #getter for: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->mCurrentBackgroundIndex:I
    invoke-static {v7}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2400(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 1118
    :try_start_0
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    invoke-virtual {v3}, Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;->getSrcIndex()I

    move-result v6

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->loadBackgroundImage(I)V
    invoke-static {v5, v6}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4000(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;I)V

    .line 1119
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->focusSortStrobeObjects()V
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4100(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 1120
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->setUpOpacityGradients()V
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$4200(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V

    .line 1121
    iget-object v5, p0, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity$MyImageViewTouchListener;->this$0:Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;

    #calls: Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->applyOpacityGradients()V
    invoke-static {v5}, Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;->access$2900(Lcom/scalado/hwcamera/strobe/StrobeViewerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1122
    :catch_0
    move-exception v1

    .line 1124
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v0           #ds:Landroid/view/View;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #nearestIndex:I
    .end local v3           #tag:Lcom/scalado/hwcamera/strobe/SessionStore$StrobeObject;
    :cond_3
    move v4, v5

    .line 1143
    goto/16 :goto_0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
