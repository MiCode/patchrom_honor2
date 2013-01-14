.class Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;
.super Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field private static final ITEM_VIEW_TYPE_ITEM:I = 0x0

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mShowFooterView:Z

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter
    .parameter "menu"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 422
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    .line 423
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 424
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 436
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMaxNonActionMenuCount:I
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 439
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItemViewType(I)I

    move-result v0

    .line 445
    .local v0, itemViewType:I
    packed-switch v0, :pswitch_data_0

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 447
    :pswitch_0
    const/4 v1, 0x0

    .line 449
    :goto_0
    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 458
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x109007c

    const/4 v6, 0x0

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItemViewType(I)I

    move-result v2

    .line 463
    .local v2, itemViewType:I
    packed-switch v2, :pswitch_data_0

    .line 481
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 465
    :pswitch_0
    if-nez p2, :cond_0

    .line 466
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 468
    check-cast v3, Lcom/android/internal/view/menu/ListMenuItemView;

    .line 469
    .local v3, moreView:Lcom/android/internal/view/menu/ListMenuItemView;
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040397

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 471
    invoke-virtual {v3, v6, v6}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    move-object v0, p2

    .line 479
    .end local v3           #moreView:Lcom/android/internal/view/menu/ListMenuItemView;
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 474
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_1

    .line 475
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    move-object v1, p2

    .line 477
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 478
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-interface {v1, v4, v6}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    move-object v0, p2

    .line 479
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .parameter "showFooterView"

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 487
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->notifyDataSetChanged()V

    .line 490
    :cond_0
    return-void
.end method
