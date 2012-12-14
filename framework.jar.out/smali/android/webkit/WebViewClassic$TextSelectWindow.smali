.class Landroid/webkit/WebViewClassic$TextSelectWindow;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSelectWindow"
.end annotation


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field isCut:Z

.field protected mContentView:Landroid/widget/RelativeLayout;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mPointDown:Landroid/widget/ImageView;

.field private mPointUp:Landroid/widget/ImageView;

.field protected mPopWinLin:Landroid/widget/LinearLayout;

.field private mSearchTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mSplitText0:Landroid/widget/TextView;

.field private mSplitText1:Landroid/widget/TextView;

.field private mSplitText2:Landroid/widget/TextView;

.field private mSplitText3:Landroid/widget/TextView;

.field private mTransTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x206009f

    invoke-direct {p0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->isCut:Z

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_0

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->isCut:Z

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->initContentView()V

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->createPopupDialog()V

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->setListener()V

    return-void
.end method

.method private isInWebViewRegion(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x2

    new-array v3, v6, [I

    .local v3, location:[I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .local v4, r:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    aget v6, v3, v5

    iget-object v7, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v0, v6, v7

    .local v0, dif:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v1, v6

    .local v1, eventX:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .local v2, eventY:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTop()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getBottom()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getLeft()I

    move-result v6

    if-ge v6, v1, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getRight()I

    move-result v6

    if-ge v1, v6, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "spec"

    .prologue
    const-string v2, "\\s*|\t|\r|\n"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, m:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updatePosition(ZII)V
    .locals 2
    .parameter "shouldDrawRotImg"
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->show()V

    return-void
.end method


# virtual methods
.method protected createPopupDialog()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$TextSelectWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebViewClassic$TextSelectWindow$1;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$TextSelectWindow$1;-><init>(Landroid/webkit/WebViewClassic$TextSelectWindow;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$TextSelectWindow;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, -0x2

    const v4, 0x20300e3

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2070019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x20a0011

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0012

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0013

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText0:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-boolean v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->isCut:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText0:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0014

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0015

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0016

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mShareTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0017

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0018

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSearchTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a0019

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20a001a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mTransTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mTransTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x20a0010

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x20a001b

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected measureContent()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    return-void
.end method

.method public measurePopHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public measurePopWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelection()V

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectionDone()V

    return-void

    :cond_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelection()Z

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, i:Landroid/content/Intent;
    const-string v4, "new_search"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "query"

    iget-object v5, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v2           #i:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mTransTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_0

    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-direct {p0, v4, v5}, Landroid/webkit/WebViewClassic$TextSelectWindow;->replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, content:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://translate.google.cn/m/translate?hl=zh-CN&ie=UTF8&prev=_t&sl=auto&tl=en&q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#submit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, url:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v2       #i:Landroid/content/Intent;
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v0           #content:Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$TextSelectWindow;->isInWebViewRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setListener()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/webkit/WebViewClassic$TextSelectWindow$2;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$TextSelectWindow$2;-><init>(Landroid/webkit/WebViewClassic$TextSelectWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public show(ZIII)V
    .locals 5
    .parameter "shouldDrawRotImg"
    .parameter "left"
    .parameter "top"
    .parameter "point"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measureContent()V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getDefaultZoomScale()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x19

    if-le p4, v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/lit8 p4, v1, -0x3c

    :cond_0
    :goto_0
    const/16 v1, 0x14

    if-gt p4, v1, :cond_1

    const/16 p4, 0x14

    :cond_1
    const/4 v0, 0x0

    .local v0, parms:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v2, 0x20300e2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #parms:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v0       #parms:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic$TextSelectWindow;->updatePosition(ZII)V

    return-void

    .end local v0           #parms:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    sub-int v1, p4, p2

    add-int/lit8 p4, v1, -0x14

    goto :goto_0

    :cond_3
    sub-int v1, p4, p2

    add-int/lit8 p4, v1, -0x14

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x19

    if-le p4, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/lit8 p4, v1, -0x3c

    goto :goto_0

    .restart local v0       #parms:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v2, 0x20300e1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #parms:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v0       #parms:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1
.end method
