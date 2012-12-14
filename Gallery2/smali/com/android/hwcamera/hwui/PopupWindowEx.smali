.class public Lcom/android/hwcamera/hwui/PopupWindowEx;
.super Ljava/lang/Object;
.source "PopupWindowEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;,
        Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mOnDismissListener:Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/hwcamera/hwui/PopupWindowEx;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;-><init>(Landroid/view/View;II)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;-><init>(Landroid/view/View;IIZ)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mInputMethodMode:I

    .line 67
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mTouchable:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOutsideTouchable:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mClippingEnabled:Z

    .line 85
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    .line 86
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mScreenLocation:[I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mTempRect:Landroid/graphics/Rect;

    .line 94
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowLayoutType:I

    .line 97
    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIgnoreCheekPress:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnimationStyle:I

    .line 106
    new-instance v0, Lcom/android/hwcamera/hwui/PopupWindowEx$1;

    invoke-direct {v0, p0}, Lcom/android/hwcamera/hwui/PopupWindowEx$1;-><init>(Lcom/android/hwcamera/hwui/PopupWindowEx;)V

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    .line 189
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setContentView(Landroid/view/View;)V

    .line 191
    invoke-virtual {p0, p2}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setWidth(I)V

    .line 192
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setHeight(I)V

    .line 193
    invoke-virtual {p0, p4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setFocusable(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/hwcamera/hwui/PopupWindowEx;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/hwcamera/hwui/PopupWindowEx;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/hwcamera/hwui/PopupWindowEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/hwcamera/hwui/PopupWindowEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/hwcamera/hwui/PopupWindowEx;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/hwcamera/hwui/PopupWindowEx;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/hwcamera/hwui/PopupWindowEx;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/hwcamera/hwui/PopupWindowEx;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/hwcamera/hwui/PopupWindowEx;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 886
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 887
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIsDropdown:Z

    if-eqz v0, :cond_0

    .line 892
    :cond_0
    const/4 v0, 0x0

    .line 894
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 848
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 856
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 857
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 859
    :cond_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mFocusable:Z

    if-nez v0, :cond_7

    .line 860
    or-int/lit8 p1, p1, 0x8

    .line 861
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 862
    or-int/2addr p1, v2

    .line 867
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mTouchable:Z

    if-nez v0, :cond_2

    .line 868
    or-int/lit8 p1, p1, 0x10

    .line 870
    :cond_2
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 871
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 873
    :cond_3
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 874
    or-int/lit16 p1, p1, 0x200

    .line 876
    :cond_4
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mSplitTouchEnabled:Z

    if-eqz v0, :cond_5

    .line 877
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 879
    :cond_5
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 880
    or-int/lit16 p1, p1, 0x100

    .line 882
    :cond_6
    return p1

    .line 864
    :cond_7
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 865
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 825
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 830
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 831
    iget v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWidth:I

    iput v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 832
    iget v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mHeight:I

    iput v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 833
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 838
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 839
    iget v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 840
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 841
    iget v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popupnew:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 844
    return-object v0

    .line 836
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 11
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 914
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 915
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    aget v8, v8, v7

    add-int/2addr v8, p3

    iput v8, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 916
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    aget v8, v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    iput v8, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 918
    const/4 v1, 0x0

    .line 920
    .local v1, onTop:Z
    const/16 v8, 0x33

    iput v8, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 922
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mScreenLocation:[I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 923
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 924
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 926
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 927
    .local v3, root:Landroid/view/View;
    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v9, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupHeight:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v8, v9, :cond_0

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupWidth:I

    add-int/2addr v8, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    if-lez v8, :cond_1

    .line 931
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 932
    .local v4, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 933
    .local v5, scrollY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupWidth:I

    add-int/2addr v8, v4

    add-int/2addr v8, p3

    iget v9, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupHeight:I

    add-int/2addr v9, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, p4

    invoke-direct {v2, v4, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 935
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v2, v6}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 939
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 940
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    aget v8, v8, v7

    add-int/2addr v8, p3

    iput v8, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 941
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    aget v8, v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, p4

    iput v8, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 944
    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mScreenLocation:[I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 946
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mScreenLocation:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, p4

    iget-object v9, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mScreenLocation:[I

    aget v9, v9, v6

    sub-int/2addr v9, p4

    iget v10, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    move v1, v6

    .line 948
    :goto_0
    if-eqz v1, :cond_3

    .line 949
    const/16 v7, 0x53

    iput v7, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 950
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    aget v6, v8, v6

    sub-int v6, v7, v6

    add-int/2addr v6, p4

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 956
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_1
    :goto_1
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v7, 0x1000

    or-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 958
    return v1

    .restart local v2       #r:Landroid/graphics/Rect;
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_2
    move v1, v7

    .line 946
    goto :goto_0

    .line 952
    :cond_3
    iget-object v7, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mDrawingLocation:[I

    aget v6, v7, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p4

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 772
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 773
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 777
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 778
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 779
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 780
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 782
    const/4 v0, -0x2

    .line 787
    :cond_2
    new-instance v3, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;-><init>(Lcom/android/hwcamera/hwui/PopupWindowEx;Landroid/content/Context;)V

    .line 788
    .local v3, popupViewContainer:Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 791
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    iput-object v3, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    .line 798
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Lcom/android/hwcamera/hwui/PopupWindowEx$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupWidth:I

    .line 799
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupHeight:I

    .line 800
    return-void

    .line 796
    :cond_3
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1284
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1285
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1286
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1288
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1290
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1292
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1293
    return-void
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 729
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchor:Z

    .line 731
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 736
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 742
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1039
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1040
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->unregisterForScrollChanged()V

    .line 1043
    :try_start_0
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1048
    :cond_0
    iput-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    .line 1049
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIsShowing:Z

    .line 1051
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnDismissListener:Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnDismissListener:Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;->onDismiss()V

    .line 1056
    :cond_1
    return-void

    .line 1045
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1048
    :cond_2
    iput-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    .line 1049
    iput-boolean v3, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIsShowing:Z

    .line 1051
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnDismissListener:Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1052
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnDismissListener:Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;

    invoke-interface {v0}, Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIsShowing:Z

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mTouchable:Z

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 214
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mFocusable:Z

    .line 334
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 600
    iput p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mHeight:I

    .line 601
    return-void
.end method

.method public setOnDismissListener(Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOnDismissListener:Lcom/android/hwcamera/hwui/PopupWindowEx$OnDismissListener;

    .line 1065
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mOutsideTouchable:Z

    .line 447
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 626
    iput p1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWidth:I

    .line 627
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->unregisterForScrollChanged()V

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIsShowing:Z

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mIsDropdown:Z

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/hwcamera/hwui/PopupWindowEx;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 663
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 665
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 666
    if-nez p2, :cond_2

    .line 667
    const/16 p2, 0x33

    .line 669
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 670
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 671
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 672
    invoke-direct {p0, v0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1082
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    .line 1084
    .local v3, update:Z
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->computeAnimationResource()I

    move-result v0

    .line 1085
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1086
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1087
    const/4 v3, 0x1

    .line 1090
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->computeFlags(I)I

    move-result v1

    .line 1091
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1092
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1093
    const/4 v3, 0x1

    .line 1096
    :cond_3
    if-eqz v3, :cond_0

    .line 1097
    iget-object v4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1127
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/hwcamera/hwui/PopupWindowEx;->update(IIIIZ)V

    .line 1128
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1144
    if-eq p3, v7, :cond_0

    .line 1145
    iput p3, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastWidth:I

    .line 1146
    invoke-virtual {p0, p3}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setWidth(I)V

    .line 1149
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1150
    iput p4, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastHeight:I

    .line 1151
    invoke-virtual {p0, p4}, Lcom/android/hwcamera/hwui/PopupWindowEx;->setHeight(I)V

    .line 1154
    :cond_1
    invoke-virtual {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1199
    :cond_2
    :goto_0
    return-void

    .line 1158
    :cond_3
    iget-object v6, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1160
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1162
    .local v5, update:Z
    iget v6, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWidthMode:I

    .line 1163
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1164
    iput v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1165
    const/4 v5, 0x1

    .line 1168
    :cond_4
    iget v6, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mHeightMode:I

    .line 1169
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1170
    iput v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1171
    const/4 v5, 0x1

    .line 1174
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1175
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1176
    const/4 v5, 0x1

    .line 1179
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1180
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1181
    const/4 v5, 0x1

    .line 1184
    :cond_7
    invoke-direct {p0}, Lcom/android/hwcamera/hwui/PopupWindowEx;->computeAnimationResource()I

    move-result v2

    .line 1185
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1186
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1187
    const/4 v5, 0x1

    .line 1190
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/android/hwcamera/hwui/PopupWindowEx;->computeFlags(I)I

    move-result v3

    .line 1191
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1192
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1193
    const/4 v5, 0x1

    .line 1196
    :cond_9
    if-eqz v5, :cond_2

    .line 1197
    iget-object v6, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1162
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_a
    iget v1, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastWidth:I

    goto :goto_1

    .line 1168
    .restart local v1       #finalWidth:I
    :cond_b
    iget v0, p0, Lcom/android/hwcamera/hwui/PopupWindowEx;->mLastHeight:I

    goto :goto_2
.end method
