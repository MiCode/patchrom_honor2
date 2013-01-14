.class Landroid/widget/Editor$HwActionPopupWindow;
.super Landroid/widget/Editor$ActionPopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HwActionPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    }
.end annotation


# static fields
.field private static final DIVIDER_PADDING:I = 0x5

.field private static final POPUP_TEXT_LAYOUT_HW:I = 0x207000f


# instance fields
.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mOldTextSize:I

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    return-void
.end method


# virtual methods
.method protected initContentView()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, linearLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x10900b4

    .local v2, textResId:I
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v3, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2030039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    const v2, 0x207000f

    const v4, 0x20300b6

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    iput-object v1, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v5, 0x2020088

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v5, 0x104000d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v5, 0x1040001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v5, 0x1040003

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v5, 0x104000b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v5, 0x10403bd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const v4, 0x10805ad

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected measureContent()V
    .locals 30

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .local v19, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .local v6, displayMetrics:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    const/high16 v27, -0x8000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .local v25, widthMeasureSpec:I
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    const/high16 v27, -0x8000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .local v10, heightMeasureSpec:I
    const/16 v24, 0x0

    .local v24, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .local v16, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v26

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    #setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v27}, Landroid/widget/Editor;->access$1902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v26, v26, v27

    add-int v24, v24, v26

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v27

    add-int v26, v26, v27

    add-int v24, v24, v26

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mContentView padding "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    .local v21, textViewTotalWidth:I
    const/16 v23, 0x0

    .local v23, visibleChildCount:I
    const-string v26, "NZY"

    const-string v27, "--------------------go!!--------------"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mUseCustomStyle "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "width "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", maxWidth of popup  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", min textview width "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", max textview width "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    .local v15, needResetTextSize:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    move/from16 v26, v0

    if-gez v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextSize()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    const/4 v15, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, minMeasureSpec:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .local v22, v:Landroid/widget/TextView;
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    :cond_3
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    const/16 v27, -0x2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getVisibility()I

    move-result v26

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v26, v0

    add-int v21, v21, v26

    :goto_1
    add-int/lit8 v23, v23, 0x1

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "child "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", currentWidth "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    add-int v21, v21, v26

    goto :goto_1

    .end local v22           #v:Landroid/widget/TextView;
    :cond_6
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "width with divider "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/LinearLayout;

    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v8

    .local v8, dividerWidth:I
    add-int/lit8 v26, v23, -0x1

    mul-int v7, v26, v8

    .local v7, dividerTotalWidth:I
    add-int v24, v24, v7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Editor$HwActionPopupWindow;->mOldTextSize:I

    .local v3, currentTextSize:I
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "go to auto size, currentsize "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", minsize "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v28, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinTextSizeInPopup:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int v26, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinTextSizeInPopup:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v3, v0, :cond_a

    add-int/lit8 v3, v3, -0x1

    const/16 v21, 0x0

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "check check check, current size "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v11, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .restart local v22       #v:Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getVisibility()I

    move-result v26

    if-nez v26, :cond_8

    int-to-float v0, v3

    move/from16 v26, v0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    const/16 v27, -0x2

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v26, v0

    add-int v21, v21, v26

    :goto_3
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "in check, child "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", currentWidth "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    add-int v21, v21, v26

    goto :goto_3

    .end local v22           #v:Landroid/widget/TextView;
    :cond_a
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .restart local v22       #v:Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getVisibility()I

    move-result v26

    if-nez v26, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v10}, Landroid/widget/TextView;->measure(II)V

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v22           #v:Landroid/widget/TextView;
    :cond_c
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "after autosize, textview total width "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v26, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_10

    add-int v26, v21, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v27, v0

    sub-int v5, v26, v27

    .local v5, decreaseNeed:I
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "decreaseNeed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, lastView:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    sub-int v4, v26, v27

    .local v4, decrease:I
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "the last view width  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v4, v5, :cond_e

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    sub-int v9, v26, v5

    .local v9, finalWidth:I
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v12}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v12, v0, v10}, Landroid/widget/TextView;->measure(II)V

    sub-int v21, v21, v5

    const/4 v5, 0x0

    .end local v9           #finalWidth:I
    :goto_5
    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "after truncate the last one, decreaseNeed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", lastview width "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_10

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v11, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .local v22, v:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_d

    new-instance v26, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-direct {v0, v1, v11, v2}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;-><init>(Landroid/widget/Editor$HwActionPopupWindow;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v18           #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .end local v22           #v:Landroid/view/View;
    :cond_e
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMinViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v12}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    invoke-virtual {v12, v14, v10}, Landroid/widget/TextView;->measure(II)V

    sub-int v21, v21, v4

    sub-int/2addr v5, v4

    goto/16 :goto_5

    .restart local v18       #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    :cond_f
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/widget/Editor$HwActionPopupWindow$SortHelper;

    .local v17, sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "now truncate the front ones, sortHelper length "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v26, v0

    const/high16 v27, 0x4000

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .local v13, maxMeasureSpec:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v11, v26, -0x1

    :goto_7
    if-ltz v11, :cond_10

    aget-object v26, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3600(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v27, v0

    sub-int v4, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    aget-object v27, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3700(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .local v22, v:Landroid/widget/TextView;
    if-lt v4, v5, :cond_12

    aget-object v26, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3600(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v26

    sub-int v9, v26, v5

    .restart local v9       #finalWidth:I
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    const/high16 v26, 0x4000

    move/from16 v0, v26

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->measure(II)V

    sub-int v21, v21, v5

    const/4 v5, 0x0

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "truncate "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3700(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ori "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3600(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", after decreaseNeed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #currentTextSize:I
    .end local v4           #decrease:I
    .end local v5           #decreaseNeed:I
    .end local v7           #dividerTotalWidth:I
    .end local v8           #dividerWidth:I
    .end local v9           #finalWidth:I
    .end local v12           #lastView:Landroid/widget/TextView;
    .end local v13           #maxMeasureSpec:I
    .end local v17           #sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    .end local v18           #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .end local v22           #v:Landroid/widget/TextView;
    :cond_10
    add-int v24, v24, v21

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "goal!!, final textwidth "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", final totalwidth "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxWindowWidthInPopup:I

    move/from16 v24, v0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    const/high16 v27, 0x4000

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/view/ViewGroup;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "such a long time:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v19

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .restart local v3       #currentTextSize:I
    .restart local v4       #decrease:I
    .restart local v5       #decreaseNeed:I
    .restart local v7       #dividerTotalWidth:I
    .restart local v8       #dividerWidth:I
    .restart local v12       #lastView:Landroid/widget/TextView;
    .restart local v13       #maxMeasureSpec:I
    .restart local v17       #sortHelper:[Landroid/widget/Editor$HwActionPopupWindow$SortHelper;
    .restart local v18       #sortHelperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Editor$HwActionPopupWindow$SortHelper;>;"
    .restart local v22       #v:Landroid/widget/TextView;
    :cond_12
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v27, v0

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static/range {v27 .. v27}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/Editor$EditTextAddtionConfig;->mMaxViewWidthInPopup:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->reLayoutAfterMeasure()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v10}, Landroid/widget/TextView;->measure(II)V

    sub-int v21, v21, v4

    sub-int/2addr v5, v4

    const-string v26, "NZY"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "truncate "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->index:I
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3700(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ori "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v17, v11

    #getter for: Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->width:I
    invoke-static/range {v28 .. v28}, Landroid/widget/Editor$HwActionPopupWindow$SortHelper;->access$3600(Landroid/widget/Editor$HwActionPopupWindow$SortHelper;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", after decreaseNeed "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->selectCurrentWord()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Z

    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->selectAllText()Z

    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->hide()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->hide()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->canPaste()Z

    move-result v2

    .local v2, canPaste:Z
    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v9}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v6

    .local v5, canSuggest:Z
    :goto_0
    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v9}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v9

    iget-boolean v9, v9, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v9}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectCurrentWord()Z
    invoke-static {v9}, Landroid/widget/Editor;->access$3200(Landroid/widget/Editor;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mIsInSelectionActionMode:Z
    invoke-static {v9}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->hasPasswordTransformationMethod()Z
    invoke-static {v9}, Landroid/widget/Editor;->access$3400(Landroid/widget/Editor;)Z

    move-result v9

    if-nez v9, :cond_1

    move v3, v6

    .local v3, canSelect:Z
    :goto_1
    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v9}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v9

    iget-boolean v9, v9, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->canSelectText()Z
    invoke-static {v9}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v4, v6

    .local v4, canSelectAll:Z
    :goto_2
    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v9}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v9

    iget-boolean v9, v9, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->canCut()Z

    move-result v9

    if-eqz v9, :cond_3

    move v1, v6

    .local v1, canCut:Z
    :goto_3
    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v9}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v9

    iget-boolean v9, v9, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->canCopy()Z

    move-result v9

    if-eqz v9, :cond_4

    move v0, v6

    .local v0, canCopy:Z
    :goto_4
    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    :goto_a
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v2, :cond_b

    if-nez v5, :cond_b

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    if-nez v1, :cond_b

    if-nez v0, :cond_b

    :goto_b
    return-void

    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v3           #canSelect:Z
    .end local v4           #canSelectAll:Z
    .end local v5           #canSuggest:Z
    :cond_0
    move v5, v7

    goto/16 :goto_0

    .restart local v5       #canSuggest:Z
    :cond_1
    move v3, v7

    goto/16 :goto_1

    .restart local v3       #canSelect:Z
    :cond_2
    move v4, v7

    goto :goto_2

    .restart local v4       #canSelectAll:Z
    :cond_3
    move v1, v7

    goto :goto_3

    .restart local v1       #canCut:Z
    :cond_4
    move v0, v7

    goto :goto_4

    .restart local v0       #canCopy:Z
    :cond_5
    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v8

    goto :goto_6

    :cond_7
    move v6, v8

    goto :goto_7

    :cond_8
    move v6, v8

    goto :goto_8

    :cond_9
    move v6, v8

    goto :goto_9

    :cond_a
    move v7, v8

    goto :goto_a

    :cond_b
    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->postInvalidate()V

    invoke-super {p0}, Landroid/widget/Editor$ActionPopupWindow;->directlyShow()V

    goto :goto_b
.end method

.method protected updatePosition(II)V
    .locals 7
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v5, 0x0

    iget v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .local v1, positionX:I
    iget v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .local v2, positionY:I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$HwActionPopupWindow;->clipVertically(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .local v3, width:I
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v6}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v6

    iget v6, v6, Landroid/widget/Editor$EditTextAddtionConfig;->mCustomPopupPadding:I

    sub-int/2addr v4, v6

    :goto_0
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget-boolean v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mUseCustomStyle:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mAddtionConfig:Landroid/widget/Editor$EditTextAddtionConfig;
    invoke-static {v4}, Landroid/widget/Editor;->access$2400(Landroid/widget/Editor;)Landroid/widget/Editor$EditTextAddtionConfig;

    move-result-object v4

    iget v4, v4, Landroid/widget/Editor$EditTextAddtionConfig;->mCustomPopupPadding:I

    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Editor$HwActionPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_2
    return-void

    :cond_0
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HwActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/widget/Editor$HwActionPopupWindow;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method
