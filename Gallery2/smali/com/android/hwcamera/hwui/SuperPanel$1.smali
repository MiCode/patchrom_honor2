.class Lcom/android/hwcamera/hwui/SuperPanel$1;
.super Ljava/lang/Object;
.source "SuperPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/SuperPanel;->updateSubMenuState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SuperPanel;

.field final synthetic val$mstep:I


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SuperPanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    iput p2, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, marginLeft:I
    const/4 v3, 0x0

    .line 515
    .local v3, marginTop:I
    const/4 v2, 0x0

    .line 516
    .local v2, marginRight:I
    const/4 v0, 0x0

    .line 517
    .local v0, marginBottom:I
    invoke-static {}, Lcom/android/hwcamera/Util;->isTabletUI()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 519
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 520
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 526
    :goto_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v1, v4, v5

    .line 538
    :goto_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContent:Landroid/view/View;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$800(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->subViewParam:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$900(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 540
    return-void

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    add-int/2addr v4, v5

    if-gez v4, :cond_1

    .line 522
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 524
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 529
    :cond_2
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 530
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 536
    :goto_2
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubAnimLength:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$100(Lcom/android/hwcamera/hwui/SuperPanel;)I

    move-result v4

    neg-int v4, v4

    iget-object v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int v3, v4, v5

    goto :goto_1

    .line 531
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    add-int/2addr v4, v5

    if-gez v4, :cond_4

    .line 532
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 534
    :cond_4
    iget-object v4, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->this$0:Lcom/android/hwcamera/hwui/SuperPanel;

    #getter for: Lcom/android/hwcamera/hwui/SuperPanel;->mSubMenuContentPara:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v4}, Lcom/android/hwcamera/hwui/SuperPanel;->access$000(Lcom/android/hwcamera/hwui/SuperPanel;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/android/hwcamera/hwui/SuperPanel$1;->val$mstep:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method
