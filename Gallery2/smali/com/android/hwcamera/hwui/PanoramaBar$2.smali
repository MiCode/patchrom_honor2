.class Lcom/android/hwcamera/hwui/PanoramaBar$2;
.super Ljava/lang/Object;
.source "PanoramaBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/PanoramaBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/PanoramaBar;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/PanoramaBar;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 575
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mFlashArrowsanim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$200(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    const/4 v1, 0x2

    #calls: Lcom/android/hwcamera/hwui/PanoramaBar;->notifyDirectionChanged(I)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$300(Lcom/android/hwcamera/hwui/PanoramaBar;I)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mMaskAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$400(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    iget-object v0, v0, Lcom/android/hwcamera/hwui/PanoramaBar;->mCurPicture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 579
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-eq v4, v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-eq v5, v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->beginGetJointPictures()V

    goto :goto_0

    .line 586
    :cond_3
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToLeft:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$600(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$700(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 587
    :cond_4
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mAnimToRight:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$700(Lcom/android/hwcamera/hwui/PanoramaBar;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_1
    #calls: Lcom/android/hwcamera/hwui/PanoramaBar;->setAlignBase(Z)V
    invoke-static {v1, v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$800(Lcom/android/hwcamera/hwui/PanoramaBar;Z)V

    .line 589
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-eq v4, v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-eq v5, v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-eq v2, v0, :cond_5

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    #getter for: Lcom/android/hwcamera/hwui/PanoramaBar;->mPanoramaStatus:I
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->access$500(Lcom/android/hwcamera/hwui/PanoramaBar;)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 593
    :cond_5
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PanoramaBar$2;->this$0:Lcom/android/hwcamera/hwui/PanoramaBar;

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/PanoramaBar;->beginGetJointPictures()V

    goto :goto_0

    .line 587
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 599
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 602
    return-void
.end method
