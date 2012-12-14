.class Lcom/android/hwcamera/hwui/PopupWindowEx$1;
.super Ljava/lang/Object;
.source "PopupWindowEx.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hwcamera/hwui/PopupWindowEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/PopupWindowEx;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 109
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$000(Lcom/android/hwcamera/hwui/PopupWindowEx;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 110
    .local v6, anchor:Landroid/view/View;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$100(Lcom/android/hwcamera/hwui/PopupWindowEx;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$100(Lcom/android/hwcamera/hwui/PopupWindowEx;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 114
    .local v7, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchorXoff:I
    invoke-static {v2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$200(Lcom/android/hwcamera/hwui/PopupWindowEx;)I

    move-result v2

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    #getter for: Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchorYoff:I
    invoke-static {v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$300(Lcom/android/hwcamera/hwui/PopupWindowEx;)I

    move-result v4

    #calls: Lcom/android/hwcamera/hwui/PopupWindowEx;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$400(Lcom/android/hwcamera/hwui/PopupWindowEx;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Lcom/android/hwcamera/hwui/PopupWindowEx;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->access$500(Lcom/android/hwcamera/hwui/PopupWindowEx;Z)V

    .line 115
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;->this$0:Lcom/android/hwcamera/hwui/PopupWindowEx;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIIIZ)V

    .line 117
    .end local v7           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
